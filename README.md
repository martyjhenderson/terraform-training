# Terraform Training

## Self-Guided Training

The point of this is to get a few things together so that you can do some self-guided training on using Terraform with AWS.
By and large, you should be able to do this as long as you have access to an AWS account.

## Prework (Gitpod mode)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/martyjhenderson/terraform-training)

If you use Gitpod (with the button above), it'll automatically load a few things in the background to make your life easier.
This process can take a few minutes as it loads up.

Beyond that, you just need to give the terminal some credentials.
You can do this with a normal `EXPORT` command

```
export AWS_ACCESS_KEY_ID="AccessKey"
export AWS_SECRET_ACCESS_KEY="SecretKey"
export AWS_SESSION_TOKEN="Token"
```
_Note: if you aren't using SSO, you don't have a token and only need the top two lines_

## Prework for non-Gitpod

This stuff assumes that you have the following installed:

- [tfenv](https://github.com/tfutils/tfenv)
- [awscli](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [tflint](https://github.com/terraform-linters/tflint)

In addition, you'll need to run some of these to get your environment setup

### Installing Terraform

In order to manage which version of Terraform you're using, TFEnv is the common tool.
To use it, go to the `/terraform` directory and run.  

`tfenv install min-required`

This installs the minimum version of Terraform required.
Different projects may use any number of versions of Terraform, so it's good to run that to make sure you have it installed and then run

`tfenv use min-required`

This will switch your current terraform to the minimum required to run things as declared.
This will go over what versions you require, but suffice it to say, you need _a_ version running!

### Installing TFLint

TFLint is a Terraform linting tool. Though not _strictly_ required, it helps a lot before you start running plans and helps determine what errors mean.

Go to the `/terraform` directory and run

`tflint --init`

This will reference the `.tflint.hcl` file in that directory and grab and install the [aws-specific rules plugin](https://github.com/terraform-linters/tflint-ruleset-aws) for linting.
This is important as it knows things such as sizes allowed for EC2, RDS, etc before you start to apply.


