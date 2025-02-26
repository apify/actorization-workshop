# Actorization project - `gitleaks`

[gitleaks](https://github.com/gitleaks/gitleaks) is a tool that scans a github repository for accidentally committed API keys, passwords and other sensitive information.

We propose that you make an Actor that accepts a github repository name and outputs the discovered secrets in the default dataset.

## General instructions

You will need to [sign up](https://console.apify.com/sign-up) for an Apify account. It's a one click procedure if you use your Google account and you don't need to enter your credit card.

[Installing the Apify CLI](https://docs.apify.com/cli/docs/installation) is also highly recommended. It can be installed either from the NPM registry or via Homebrew.

## How to Actorize the CLI

1. The easiest way to kick this off is using the `cli-start` Actor template via CLI - `apify create -t cli-start`
2. You will need to install `bbot` in your Dockerfile. To do that, you'll probably need to install `python` via `apk`.
3. Then, you are free to implement the logic of your Actor in `main.sh`. You can of course add additional files if needed.
4. Use the links in the generated projects `README.md` for further information and don't hesitate to ask us!
