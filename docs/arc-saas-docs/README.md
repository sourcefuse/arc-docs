<p align="center">
  With ARC SaaS, we’re introducing a pioneering SaaS factory model based control plane microservices and IaC modules that promises to revolutionize your SaaS journey.
</p>

## What is ARC Saas

A cutting-edge control plane, meticulously designed to simplify tenant onboarding, tenant subscription management and tenant provisioning based upon isolation levels, vis-a-vis, Silo, Pooled and Bridge. It also comes up with a configurable SaaS license tiers and plans, along with a streamlined billing processes. From seamless tenant management to robust monitoring and analytics, fortified security and compliance measures, and versatile API management, ARC SaaS will be your one stop solution for building a SaaS product faster than ever.

## Why ARC SaaS

Our control plane, akin to our catalog of application plane services, provides a range of advantages. ARC SaaS not only accelerates SaaS application development but also offers customization tailored to your needs, granting you the flexibility to harness the full spectrum of ARC benefits. This includes time-saving measures, adherence to best practices, seamless plug-and-play integration, and a standardized approach based off AWS SaaS factory reference architecture principles. All of this following the SaaS standards and architecture that accommodates your unique requirements.

ARC SaaS architecture consists of two major layers at a high level

- Control Plane - The control plane is foundational to any multi-tenant SaaS model. ARC SaaS control plane will include those services that give consumers the ability to manage and operate their tenants through a single, unified experience. Within the control plane, we have 3-tier architecture supporting UI (or some CLI), API and data separately. The core services here represent the collection of services that are used to orchestrate multi-tenant experience. We’ve included some of the common examples of services that are typically part of the core. However, these core services could vary for each SaaS solution depending on the requirements. In the architecture diagram above, we have also shown a separate administration application UI. This represents the application (a web application, a command line interface, or an API) that might be used by a SaaS provider to manage their multi-tenant environment. Please note that the control plane and its services are not actually multi-tenant. These services are global to all tenants and are basically used to operate and manage tenants.

- Application Plane - At the bottom of the diagram, we have represented the application plane of a SaaS environment. This is where the multi-tenant functionality of the actual application will reside.

This repo covers the control plane of Saas model.

## What we offer

Control plane will be the power house of your SaaS application. With the help of this control plane all your tenant applications can be managed and monitored effortlessly. This control plane ensures a smooth and efficient tenant onboarding.

## Logical Architecture

![image](https://github.com/sourcefuse/arc-saas/assets/107617248/ec3f9e75-6c66-4ee3-87a9-a8b19b636185)

## Pre-built Micro-services

There are currently 2 Microservices provided and actively maintained:

1. [Tenant Management Service](services/tenant-management-service)
2. [Subscription Service](services/subscription-service)

## Issues

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/arc-saas/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/arc-saas/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Consulting

Let's talk about accelerating your next project with ARC SaaS:

https://www.sourcefuse.com/lets-talk/

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/arc-saas/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Reference Links

- https://www.sourcefuse.com/arc-by-sourcefuse/
- https://loopback.io/doc/en/lb4/
- https://loopback.io/doc/en/lb4/Extending-LoopBack-4.html
- https://fourtheorem.com/monorepo/
- https://semaphoreci.com/blog/release-management-microservices

## License

[MIT](https://github.com/sourcefuse/arc-saas/blob/master/LICENSE)
