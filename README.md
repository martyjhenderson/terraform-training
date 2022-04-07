# Terraform Training

## Self-Guided Training

The point of this is to get a few things together so that you can do some self-guided training on using Terraform with AWS.
By and large, you should be able to do this as long as you have access to an AWS account.

## Prework (Gitpod mode)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/martyjhenderson/terraform-training)

If you use Gitpod (with the button above), it'll automatically load a few things in the background to make your life easier.

Beyond that, you just need to give the terminal some credentials.
You can do this with a normal `EXPORT` command

```
export AWS_ACCESS_KEY_ID="AccessKey"
export AWS_SECRET_ACCESS_KEY="SecretKey"
export AWS_SESSION_TOKEN="Token"
```
_Note: if you aren't using SSO, you don't have a token and only need the top two lines_
