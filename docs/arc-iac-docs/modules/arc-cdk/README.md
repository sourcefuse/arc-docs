# arc-cdk

This package contains cdktf constructs for easily creating AWS infrastructure.

### Installation

```bash
npm install arc-cdk
```

## Available Constructs

- apiGatewayCustomDomainName
- createAcmCertificate
- createEcrImage
- createEcrRepository
- createLambdaRole
- dbModule
- elastiCache
- lambda
- lambdaWithApiGateway
- lambdaWithCloudWatchEvent
- lambdaWithSns
- lambdaWithSqs

Refer [API.md](https://github.com/sourcefuse/arc-cdk/blob/main/API.md) file for API reference.

### Example

```ts
import * as aws from "@cdktf/provider-aws";
import * as random from "@cdktf/provider-random";
import { App, TerraformStack } from "cdktf";
import { Construct } from "constructs";
import * as dotenv from "dotenv";
import { resolve } from "path";
import { ILambda, Lambda } from "arc-cdk";

dotenv.config();
export class LambdaStack extends TerraformStack {
  constructor(
    scope: Construct,
    id: string,
    config: Omit<ILambda, "name">
  ) {
    super(scope, id);

    new aws.provider.AwsProvider(this, "aws", {
      region: process.env.AWS_REGION,
      accessKey: process.env.AWS_ACCESS_KEY_ID,
      secretKey: process.env.AWS_SECRET_ACCESS_KEY,
      profile: process.env.AWS_PROFILE,
      assumeRole: [
        {
          roleArn: process.env.AWS_ROLE_ARN,
        },
      ],
    });
    new random.provider.RandomProvider(this, "random");

    const pet = new random.pet.Pet(this, "random-name", {
      length: 2,
    });

    new Lambda(this, "lambda", {
      ...config,
      name: pet.id,
    });
  }
}

const app = new App();
new LambdaStack(app, "example", {
  codePath: resolve(__dirname, "../dist"),
  layerPath: resolve(__dirname, "../layers"),
  handler: "cron.handler",
  runtime: "nodejs16.x",
  namespace: process.env.NAMESPACE || "arc",
  environment: process.env.ENV || "dev",
});
app.synth();
```
