# Search Library

An Angular module that exports a component that can enable users to search over configured models using the search microservice provided in the sourceloop microservice catalog.

### Angular Version Compatibility

To ensure smooth integration, install the Search Library version that corresponds to your Angular version:

<table border="1" cellpadding="8" style="border-collapse: collapse; width: 100%; text-align: left;">
  <thead>
    <tr>
      <th>Angular Version</th>
      <th>Compatible Search-Client Version</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Angular v19</td>
      <td>@sourceloop/search-client v8.x</td>
    </tr>
    <tr>
      <td>Angular v20</td>
      <td>@sourceloop/search-client v9.x</td>
    </tr>
    <tr>
      <td>Angular v21+</td>
      <td>Latest version (v11.x and above)</td>
    </tr>
  </tbody>
</table>

## Angular Module

### Installation

```sh
npm i @sourceloop/search-client
```

### Usage

Create a new Application using Angular CLI and import the `SearchComponent` in your application.SearchComponent is now a standalone component, so no NgModule is required.Also create a new service that implements the ISearchService interface exported by the search library. This service will be used by the exported component to make API calls whenever needed. You will have to update the providers section of your module with { provide: SEARCH_SERVICE_TOKEN, useExisting: Your_Service_Name }

```ts
import {Component} from '@angular/core';
import {SearchComponent, SEARCH_SERVICE_TOKEN} from '@sourceloop/search-client';
import {SearchService} from './search.service';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [SearchComponent],
  templateUrl: './app.component.html',
  providers: [{provide: SEARCH_SERVICE_TOKEN, useClass: SearchService}],
})
export class AppComponent {}
```

### Search Service

Create a new service using the Angular CLI. This service should implement ISearchService. You will have to implement searchApiRequest method which should return Observable&lt;T[]&gt;. Here T refers to the type of data returned from the search microservice. If you are using the default settings for the search microservice you can use IDefaultReturnType interface, else you need to pass your own return type interface.
searchApiRequest receives two parameters - requestParameters: ISearchQuery, saveInRecents: boolean,

```ts
export interface ISearchQuery {
  match: string;
  limit: number | null;
  order: string | null;
  limitByType: boolean | null;
  offset: number | null;
  sources: string[] | null;
}
```

Implementing the recentSearchApiRequest method is optional and its implementation depends on if you want recent search functionality as a part of the search suggestions dropdown

### Configuration

You need to provide some configuration for using the search component using its selector - '&lt;sourceloop-search&gt;&lt;/sourceloop-search&gt;'
This can be provided as an Object of Configuration type as input to the component. To do so, create a property/field in your component of type Configuration&lt;IDefaultReturnType&gt; (IDefaultReturnType can be replaced by your own return type interface). In the constructor initialize the Configuration object with the following properties:

- **displayPropertyName (keyof IDefaultReturnType/Your_Return_Type) :** This is one of the properties returned by the search microservice. It is the property whose value will be displayed in the search dropdown.
- **models ( Array&lt;IModel&gt;) :** You need to provide the list of models you used in your search microservice. You also need to provide the displayName for each Model, this will be used in the search dropdown and categorize button dropdown.

Apart from these there are some optional properties that you can give:

- **limit (number) :** The number of results you want to display. Default value is 20.
- **limitByType (boolean) :** Option to put limit on basis of model. Default value is false.
- **order (Array&lt;string&gt;) :** Array of strings that specify the order format for the request sent to search API. Example, you want your results to be sorted on basis of name property first and then description. In this case you can give order = ["name ASC", "description DESC"]. By default order = []
- **offset (number) :** Number of matched results to skip. Default is 0.
- **saveInRecents (boolean) :** Option for saving the search results of the user. Default value is true.
- **categorizeResults (boolean) :** Option for displaying results in search dropdown according to the Model they come from. Default value is true.
- **hideRecentSearch (boolean) :** Option to provide recent search functionality. Default value is false.
- **hideCategorizeButton (boolean) :** Option to hide the categorize button on the right of search dropdown. Default is false.
- **saveInRecentsOnlyOnEnter (boolean) :** Option to save search query in recent searches only when user presses enter key or changes the category he/she is searching on. Default value is false.
- **searchOnlyOnEnter (boolean) :** Option to call API to display search results only when user presses enter key. Default value is false.
- **noResultMessage (string) :** Message to display in dropdown incase no matching result found.
- **searchIconClass (string) :** Can be used to give custom icon for search in search bar.
- **crossIconClass (string) :** Can be used to give custom icon for clearing text input in search bar.
- **recentSearchIconClass (string) :** Can be used to give custom icon for recent searches displayed in the search dropdown.

Your component might look something like

```ts
export class XComponent implements OnInit {
  config: Configuration<IDefaultReturnType>;

  constructor(private fb: FormBuilder) {
    this.config = new Configuration<IDefaultReturnType>({
      displayPropertyName: 'name',
      models: [
        {
          name: 'ToDo',
          displayName: 'List',
        },
        {
          name: 'User',
          displayName: 'Users',
          imageUrl: 'https://picsum.photos/id/1/50',
        },
      ],
      order: [`name ASC`, `description DESC`],
    });
  }

  ngOnInit(): void {}
}
```

Now in your template you can add the search library component selector like

```ts
<sourceloop-search [config]="config" [(ngModel)]="value"></sourceloop-search>
```

You can access the value in the search input using [(ngModel)]. You can also listen to clicked and searched events.
Clicked event is of type ItemClickedEvent. It is emitted when user clicks one of the suggested results. Searched event is emitted when request is made to the api when user types and relevant suggestinons are displayed. It is of type RecentSearchEvent.

```ts
type ItemClickedEvent<T> = {
  event: MouseEvent;
  item: T;
};

type RecentSearchEvent = {
  event: KeyboardEvent | Event;
  keyword: string;
  category: 'All' | IModel;
};
```

```html
<sourceloop-search
  [config]="config"
  [(ngModel)]="value"
  (clicked)="logItemClickedEvent($event)"
  (searched)="logRecentSearchEvent($event)"
  disabled="false"
></sourceloop-search>
```

### Icons

To use the default icons you will have to import the following in your styles.scss:

```
@import '../node_modules/@sourceloop/search-client/assets/icomoon/style.css';
```

You can also choose to use your own icons by providing classes for icons in the configuration.

### Required Global Styles

The search component uses Angular CDK overlays for the dropdown, which require global styles to function properly.

### Styling and Theming

The search component uses CSS custom properties (CSS variables) for theming, allowing you to customize colors without modifying the library code. You can override these variables in your application's global styles or in a component-specific stylesheet.

#### Available CSS Variables

````scss
sourceloop-search {
  --search-background: #f7f7f7; /* Background of the search container */
  --search-input-background: #f1f3f4; /* Background of the input field */
  --search-input-text-color: #6b6b6b; /* Text color in the input field */
  --search-border-hover: #a53159; /* Border color on hover */
  --search-border-focus: #90003b; /* Border color when focused */
  --search-dropdown-background: #90003b; /* Background of the category dropdown (on hover/focus) */
  --search-dropdown-text-color: #ffffff; /* Text color in the category dropdown (on hover/focus) */
  --search-highlight-bg: #fee8e8; /* Background color for highlighted suggestions */
  --search-heading-color: #9c9c9c; /* Color of category headings */
  --search-text-color: #333; /* General text color */
  --search-icon-color: #33333380; /* Color of icons */
}

####Example: Custom Theming To customize the search component, add the following
    to your `component.scss` ```scss 
    
// Customize component colors

:host ::ng-deep sourceloop-search {
  --search-border-hover: #5c26f1 !important;
  --search-border-focus: #5c26f1 !important;
  --search-dropdown-background: #5c26f2 !important;
}
````

This allows you to match the search component's appearance with your application's design system.

## Web Component

This library is also available as a [Web Component](https://developer.mozilla.org/en-US/docs/Web/Web_Components) so users of frameworks like React and Vue can also integrate this search element in their application with minimal effort.

### Installation

```sh
npm i @sourceloop/search-client
```

In the node modules you can find two files relevant to the element - `element/search-element.js` and `element/style.css`. How you serve and include these files in your non Angular project depend on the framework that you are using. For example, for Vanilla JS and HTML you can simply import the js and styles in your HTML ->

```html
<script type="text/javascript" src="search-element.js"></script>
```

### Usage

The web component accepts all the same inputs and services as the regular Angular Module, but instead of passing them through bindings and DI, you pass them as properties of the element as shown below.

```html
<!DOCTYPE html>
<html>
  <head>
    ...
    <link rel="stylesheet" href="assets/icomoon/style.css" />
    <link rel="stylesheet" href="styles.css" />
    ...
  </head>
  <body>
    <sourceloop-search-element></sourceloop-search-element>
    <script type="text/javascript" src="search-element.js"></script>
    <script>
      document.addEventListener('DOMContentLoaded', () => {
        const element = document.querySelector('sourceloop-search-element');
        // Code to set inputs of the component
        element.searchProvider = {
          searchApiRequestWithPromise: () =>
            Promise.resolve([
              {
                name: 'Test',
                description: 'Test',
                rank: 0.4,
                source: 'ToDo',
              },
              {
                name: 'Akshat',
                description: 'Dubey',
                rank: 0.4,
                source: 'User',
              },
            ]),
          recentSearchApiRequestWithPromise: () => Promise.resolve([]),
        };
        element.config = new SearchConfiguration({
          displayPropertyName: 'name',
          models: [
            {
              name: 'ToDo',
              displayName: 'List',
              imageUrl: 'https://picsum.photos/id/1000/50',
            },
            {
              name: 'User',
              displayName: 'Users',
              imageUrl: 'https://picsum.photos/id/1/50',
            },
          ],
          order: [`name ASC`, `description DESC`],
          hideCategorizeButton: false,
          placeholder: 'Search Programs, Projects or Dashboards',
          categorizeResults: true,
          saveInRecents: true,
          limit: 4,
        });
      });
    </script>
  </body>
</html>
```

Note that the instance of `SearchService` passed to the element is following a different interface -

```ts
export interface ISearchServiceWithPromises<T extends IReturnType> {
  searchApiRequestWithPromise(
    requestParameters: ISearchQuery,
    saveInRecents: boolean,
  ): Promise<T[]>;
  recentSearchApiRequestWithPromise?(): Promise<ISearchQuery[]>;
}
```

This facilitates the use of the `Web Component` without relying on [rxjs](https://rxjs.dev/). You can still use the `Observable` based service if you want by importing the rxjs library manually.