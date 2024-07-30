An Angular Client to develop workflows using an intuitive statement based UI.

## Installation

```bash

npm i @sourceloop/workflows-creator

```

## Usage

- Install the workflows-creator
  `npm i @sourceloop/workflows-creator`
- Import the `WorkflowBuilderModule` in the required module -

  ```typescript
    ...
    imports: [
        ...
        WorkflowBuilderModule,
        ...
    ],
  ```

- Use the component selector in your application -

  ```html
  <workflow-builder
    [(state)]="state"
    [(diagram)]="diagram"
    (eventAdded)="elementClick($event)"
    (actionAdded)="elementClick($event)"
    (itemChanged)="valueChanges($event)"
  ></workflow-builder>
  ```

  - `state` is the initial state object
  - `diagram` is initial BPMN Diagram respectively.
  - `eventAdded` - this event fires whenever a new event is added in the workflow
  - `actionAdded` - this event fires whenever a new action is added in the workflow
  - `itemChange` - this event fires whenever a user input changes

### Configurations

#### Nodes

- Each Statement is made up of nodes -

  - Events - Triggers or Checks that lead to an action
  - Action - Actually task performed by the workflow

- You can create your own nodes by extending the `WorkflowNode` class.
- To register this node for use, provide it to the `BPMN_NODES` token -

```typescript
{provide: BPMN_NODES, useValue: CustomNode, multi: true},
```

#### Element

- Each Node is based on certain base elements like tasks, gateways, etc.
- You can create your own BPMN Elements by extending the `BpmnElement` class.
- You can also create any custom element by extending the `WorkflowElement` class(in case working with a non-BPMN workflow engine).
- To register this element for use, provide it to the `BPMN_INPUTS` token -

```typescript
{provide: BPMN_ELEMENTS, useValue: CustomElement, multi: true},
```

#### Prompts

- Each Node also has some prompts or inputs from the users.
- You can create your own Prompt by extending the `WorkflowPrompt` class.
- To register this prompt for use, provide it to the token -

```typescript
{provide: BPMN_INPUTS, useValue: CustomInput, multi: true},
```

## Web Component

- This library is also available as a [Web Component](https://developer.mozilla.org/en-US/docs/Web/Web_Components) so users of frameworks like React and Vue
  can also integrate this workflow creator element in their application with minimal effort.

### Installation

```bash
npm i @sourceloop/workflows-creator-element
```

- In the node modules you can find two files relevant to the element - `workflows-element/element/workflows-element.js` & `workflows-element/element/style.css`.
  How you serve and include these files in your non Angular project depend on the framework that you are using. For example, for Vanilla JS and HTML you can simply import the js and styles in your HTML ->

```html
<script type="text/javascript" src="workflows-element.js"></script>
```

### Usage

The web component accepts all the same inputs and services as the regular Angular Module, but instead of passing them through bindings and DI, you pass them as properties of the element as shown below.
NOTE: If `envIdentifier` is required it must be provided in the global `window` object as shown below, otherwise it will be rendered as undefined. This step is needed only in non-angular applications. For angular appplications it can be directly provided with the help of providers.

```html
<!DOCTYPE html>
<html>
  <head>
    <link
      rel="stylesheet"
      type="text/css"
      href="/assets/icons/icomoon/style.css"
    />
    <link rel="stylesheet" type="text/css" href="styles.css" />
  </head>
  <body>
    <sourceloop-workflow-element></sourceloop-workflow-element>
    <script type="text/javascript" src="workflows-element.js"></script>
    <script>
      window.workflowEnv = { envIdentifier: "Production" };
    </script>
    <script>
      document.addEventListener("DOMContentLoaded", () => {
        const element = document.querySelector("sourceloop-workflow-element");

        element.allColumns = [
          {
            text: "Status",
            value: "{{Status}}",
          },
          {
            text: "People",
            value: "{{People}}",
          },
          {
            text: "Text",
            value: "{{Text}}",
          },
        ];

        const NORMALIZED_COLUMN = [
          {
            text: "Status",
            value: "1952177d-9a3e-6ef4-ae8f-522c08153026",
          },
          {
            text: "Priority",
            value: "1952177d-9a3e-6ef4-ae8f-522c08153026",
          },
          {
            text: "Text",
            value: "2069d144-db46-0737-2c9d-bc339949d684",
          },
        ];

        const CONDITIONS = {
          date: DATE_CONDITIONS,
          datetime: DATE_CONDITIONS,
        };

        const DEFAULT_CONDITION = [
          { text: "Equal", value: "equal" },
          { text: "Not Equal", value: "notequal" },
        ];
        const DATE_CONDITIONS = [
          { text: "Past Today", value: "pastToday" },
          { text: "Coming In", value: "comingIn" },
          { text: "Past by", value: "pastby" },
        ];
        const VALUE_TYPES = [
          {
            text: "ANYTHING",
            value: "anyValue",
          },
          {
            text: "CUSTOM_VALUE",
            value: "customValue",
          },
        ];
      });

      element.addEventListener("eventAdded", (event) => {
        elementClick(event.detail);
      });
      element.addEventListener("actionAdded", (event) => {
        elementClick(event.detail);
      });
      element.addEventListener("itemChanged", (event) => {
        valueChanges(event.detail);
      });

      function elementClick(event) {
        const selectedElement = event.event ?? event.action;
        switch (selectedElement.getIdentifier()) {
          case window.OnIntervalEvent.identifier:
            selectedElement.state.change("intervalList", TIMESCALE);
            selectedElement.state.change("valuePlaceholder", "n");
          case window.OnChangeEvent.identifier:
          case window.OnValueEvent.identifier:
            let columns = NORMALIZED_COLUMN.filter(
              (col) => col.text.toLowerCase() !== "priority"
            );
            selectedElement.state.change("columns", columns);
            break;
          case window.ChangeColumnValueAction.identifier:
            selectedElement.state.change("columns", NORMALIZED_COLUMN);
            break;
        }
      }

      function valueChanges(event) {
        let selectedCol;

        switch (event.field) {
          case window.ValueInput.identifier:
            if (
              event.item.getIdentifier() === window.OnIntervalEvent.identifier
            ) {
              event.item.state.change("intervalList", TIMESCALE);
              return;
            }
            break;
          case window.IntervalInput.identifier:
            const timescale = TIMESCALE.find(
              (time) => time.value === event.value
            )?.timescale;
            event.item.state.change("timescale", timescale);
            break;
          case window.TriggerColumnInput.identifier:

          case window.ColumnInput.identifier:
            selectedCol = NORMALIZED_COLUMN.find(
              (col) => col.value === event.value
            );
            selectedColumnType = selectedCol.text?.toLowerCase();
            const condition =
              CONDITIONS[selectedCol.text?.toLowerCase()] || DEFAULT_CONDITION;
            if (selectedCol) {
              event.item.state.change("conditions", condition);
            }
          case window.ConditionInput.identifier:
          case window.ToColumnInput.identifier:
            selectedCol = NORMALIZED_COLUMN.find(
              (col) => col.value === event.value
            );
            if (selectedCol)
              selectedColumnType = selectedCol.text?.toLowerCase();
            event.item.state.change(
              "valueInputType",
              FIELD_VALUES[selectedColumnType].valueInputType
            );
            if (FIELD_VALUES[selectedColumnType].values) {
              event.item.state.change(
                "values",
                FIELD_VALUES[selectedColumnType].values
              );
            }

            break;
          case window.EmailDataInput.identifier:
        }
      }
    </script>
  </body>
</html>
```
