<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-billing](https://github.com/sourcefuse/loopback4-billing)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-billing">
<img src="https://img.shields.io/npm/v/loopback4-billing.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-billing" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-billing?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://github.com/sourcefuse/loopback4-billing/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-billing?">
</a>
<a href="https://www.npmjs.com/package/loopback4-billing" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-billing.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-billing/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-billing.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

The loopback4-billing package is designed to integrate billing functionality into LoopBack 4 applications. It provides an abstraction layer to work with billing services such as Chargebee, Stripe etc, offering common billing operations like creating and managing customers, invoices, payment sources, and transactions.

The package uses a provider pattern to abstract different billing implementations, making it easy to switch between billing services like REST API or SDK-based providers.

### Key Features
**Customer Management**: Create, retrieve, update, and delete customers.

**Invoice Management**: Create, retrieve, update, and delete invoices.

**Payment Source Management**: Add, apply, retrieve, and delete payment sources for invoices.

**Payment Status Tracking**: Check payment status of invoices.

## Installation

To install loopback4-billing, use `npm`:

```sh
npm install loopback4-billing
```

## Usage

### Integration in Your LoopBack 4 Application

1. Configure and load BillingComponent in the application constructor
   as shown below.

```ts
import {BillingComponent} from 'billing';
// ...
export class MyApplication extends BootMixin(ServiceMixin(RepositoryMixin(RestApplication))) {
  constructor(options: ApplicationConfig = {}) {

    this.component(BillingComponent);
    // ...
  }
  // ...
}
```
2.  **Import Necessary Bindings and Interfaces**
In your controller or service, import BillingComponentBindings and IService from loopback4-billing.

```ts
import { BillingComponentBindings, IService } from 'loopback4-billing';
import { inject } from '@loopback/core';
```


3. **Inject the BillingProvider into your controller.**
 Inject the BillingProvider into your controller or service where you need to perform billing operations.
 ```ts
 export class BillingController {
  constructor(
    @inject(BillingComponentBindings.BillingProvider)
    private readonly billingProvider: IService,
  ) {}
}

 ```

4. **Use BillingProvider Methods for Billing Operations**
Use the methods provided by the BillingProvider to manage billing entities like customers, invoices, and payment sources like we have displayed an instance of using BillingProvider for creating a invoice.Similarly you can use all the other methods provided by billing provider.

```ts
import { BillingComponentBindings, IService } from 'loopback4-billing';
import { inject } from '@loopback/core';
import { post, requestBody } from '@loopback/rest';
import { InvoiceDto } from '../models';

export class BillingController {
  constructor(
    @inject(BillingComponentBindings.BillingProvider)
    private readonly billingProvider: IService,
  ) {}

  @post('/billing/invoice')
  async createInvoice(
    @requestBody() invoiceDto: InvoiceDto
  ): Promise<InvoiceDto> {
    return this.billingProvider.createInvoice(invoiceDto);
  }
}

```

## IService Interface and Available Methods
The IService interface defines a comprehensive list of methods to manage billing entities. Below is a summary of each method.

### Customer Management
TCustomer is defined as
```ts
export interface TCustomer {
  id?: string;
  firstName: string;
  lastName: string;
  email: string;
  company?: string;
  billingAddress?: TAddress;
  phone?: string;
  options?: Options;
}

export interface TAddress {
  id?: string;
  firstName?: string;
  lastName?: string;
  email?: string;
  company?: string;
  phone?: string;
  city?: string;
  state?: string;
  zip?: string;
  country?: string;
  options?: Options;
}
```
* **createCustomer(customerDto: TCustomer): Promise&lt;TCustomer&gt;** - Creates a new customer.

* **getCustomers(customerId: string): Promise&lt;TCustomer&gt;** - Retrieves details of a specific customer by ID.

* **updateCustomerById(customerId: string, customerDto: Partial&lt;TCustomer&gt;): Promise&lt;void&gt;** - Updates details of a specific customer by ID.

* **deleteCustomer(customerId: string): Promise&lt;void&gt;** - Deletes a customer by ID.

### Payment Source Management
TpaymentSource is defined as
```ts
export interface TPaymentSource {
  id?: string;
  customerId: string;
  card?: ICardDto;
  options?: Options;
}

export interface ICardDto {
  gatewayAccountId: string;
  number: string;
  expiryMonth: number;
  expiryYear: number;
  cvv: string;
}
```
* **createPaymentSource(paymentDto: TPaymentSource): Promise&lt;TPaymentSource&gt;** - Creates a new payment source for the customer.

* **applyPaymentSourceForInvoice(invoiceId: string, transaction: Transaction): Promise&lt;TInvoice&gt;** - Applies an existing payment source to an invoice. Transaction defines as
```ts
export interface Transaction {
  amount?: number; // Optional, in cents, min=0
  paymentMethod:
    | 'cash'
    | 'check'
    | 'bank_transfer'
    | 'other'
    | 'custom'
    | 'payment_source'; // Required
  paymentSourceId?: string;
  referenceNumber?: string; // Optional, max 100 chars
  customPaymentMethodId?: string; // Optional, max 50 chars
  idAtGateway?: string; // Optional, max 100 chars
  status?: 'success' | 'failure'; // Optional
  date?: number; // Optional, timestamp in seconds (UTC)
  errorCode?: string; // Optional, max 100 chars
  errorText?: string; // Optional, max 65k chars
  comment?: string;
}
```
**Example of Transaction:**
if invoice is not being paid by payment_source.
```ts
transaction:Transaction={
  paymentMethod:'cash',
  comment:'cash 200 usd - dated 8 Nov 15:49 pm'
}
```
if invoice is being paid by payment_source
```ts
transaction:Transaction={
  paymentMethod:'payment_source',
  paymentSourceId:'id_XXXXXXX'    // id of payment source
  comment:'cash 200 usd - dated 8 Nov 15:49 pm'
}
```
* **retrievePaymentSource(paymentSourceId: string): Promise&lt;TPaymentSource&gt;** - Retrieves details of a specific payment source.

* **deletePaymentSource(paymentSourceId: string): Promise&lt;void&gt;** - Deletes a payment source by ID.

* **getPaymentStatus(invoiceId: string): Promise&lt;boolean&gt;** - Checks the payment status of a specific invoice. It returns whether the invoice is paid or not.

### Invoice Management
TInvoice is defined as :
```ts
export interface TInvoice {
  id?: string;
  customerId: string;
  shippingAddress?: TAddress;
  status?: InvoiceStatus;
  charges?: ICharge[];
  options?: Options;
  currencyCode: string;
}
```
* **createInvoice(invoice: TInvoice): Promise&lt;TInvoice&gt;** - Creates a new invoice.

* **retrieveInvoice(invoiceId: string): Promise&lt;TInvoice&gt;** - Retrieves details of a specific invoice.

* **updateInvoice(invoiceId: string, invoice: Partia&lt;TInvoice&gt;): Promise<TInvoice>** -Updates an existing invoice by ID.

* **deleteInvoice(invoiceId: string): Promise&lt;void&gt;** - Deletes an invoice by ID.




## Configuration

The loopback4-billing package relies on the configuration of the chosen billing provider (e.g., Chargebee). To configure the package for your application, follow the steps below.

### Step 1: Set Up Billing Provider

#### For ChargeBee -
To use Chargebee as the billing provider, you need to configure the Chargebee API keys and site URL in your application. You can set these values in the environment variables of your LoopBack 4 project.

```
API_KEY=your_chargebee_api_key
SITE=your_chargebee_site_url
```

after that, bind these values with the ChargeBeeBindings.Config as shown below.
```ts
import { BillingComponent } from 'loopback4-billing';

export class YourApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    super(options);

    // Bind the config values
    this.bind(ChargeBeeBindings.config).to({
      site: process.env.SITE ?? '',
      apiKey: process.env.API_KEY ?? '',
    });

    this.component(BillingComponent);
    // Other configurations
  }
}
```
#### For Stripe -
To use Stripe as the billing provider, you need to configure the Stripe secret Key in your application. You can set these values in the environment variables of your LoopBack 4 project.

```
STRIPE_SECRET=your_stripe_secret_key
```
after that, bind these values with the ChargeBeeBindings.Config as shown below.
```ts
import { BillingComponent } from 'loopback4-billing';

export class YourApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    super(options);

    // Bind the config values
    this.bind(StripeBindings.config).to({
      secretKey: process.env.STRIPE_SECRET ?? '',
    });

    this.component(BillingComponent);
    // Other configurations
  }
}
```

### Step 2: Register Billing Component

To use the billing component in your LoopBack 4 application. you need to register it in your application.ts file. And bind the Choosen billing Provider with their respective key. If provider is REST API based then bind it with `BillingComponentBindings.RestProvider`, else if the provider is SDK based bind it with `BillingComponentBindings.SDKProvider`.
#### For ChargeBee -
as Chargebee is a SDK based provider, so bind it with sdk provider binding.

```ts
import { BillingComponent } from 'loopback4-billing';

export class YourApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    super(options);

    this.bind(ChargeBeeBindings.config).to({
      site: process.env.SITE ?? '',
      apiKey: process.env.API_KEY ?? '',
    });
    // Register Billing component
    this.bind(BillingComponentBindings.SDKProvider).toProvider(
      ChargeBeeServiceProvider,
    );

    this.component(BillingComponent);


    // Other configurations
  }
}
```

#### For Stripe -
as Stripe is a SDK based provider, so bind it with sdk provider binding.

```ts
import { BillingComponent } from 'loopback4-billing';

export class YourApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    super(options);

    this.bind(StripeBindings.config).to({
      secretKey: process.env.STRIPE_SECRET ?? '',
    });
    // Register Billing component
    this.bind(BillingComponentBindings.SDKProvider).toProvider(
      StripeServiceProvider,
    );

    this.component(BillingComponent);


    // Other configurations
  }
}
```

### Step 3: Use the Billing Service in Controllers or Services

You can inject the BillingProvider or IService interface into your controller or service and use the billing operations as described below.

```ts
import { BillingComponentBindings, IService } from 'loopback4-billing';
import { inject } from '@loopback/core';
import { post, requestBody } from '@loopback/rest';
import { InvoiceDto } from '../models';

export class BillingController {
  constructor(
    @inject(BillingComponentBindings.BillingProvider)
    private readonly billingProvider: IService,
  ) {}

  @post('/billing/invoice')
  async createInvoice(
    @requestBody() invoiceDto: InvoiceDto
  ): Promise<InvoiceDto> {
    return this.billingProvider.createInvoice(invoiceDto);
  }
}

```

The method of using providers with in controllers and services is going to be same for all type of billing provider integrations provided by Loopback4-billing.

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-billing/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-billing/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-billing/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-billing/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-billing/blob/master/LICENSE)
