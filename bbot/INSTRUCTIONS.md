# Actorization project - `bbot`

[bbot](https://github.com/blacklanternsecurity/bbot) is a security scanner that targets a single domain and performs a wide range of analyses such as subdomain enumeration and port scanning.

We propose that you make an Actor that will accept a domain and output the findings of `bbot` using the default dataset. The scope is up to you.

## General instructions

You will need to [sign up](https://console.apify.com/sign-up) for an Apify account. It's a one click procedure if you use your Google account and you don't need to enter your credit card.

If you prefer working with CLIs over web consoles, you may want to [install the Apify CLI](https://docs.apify.com/cli/docs/installation) as well. It can be installed either from the NPM registry or via Homebrew.

## Approach #1 - Python library

1. The easiest way to kick this off is using the `python-empty` Actor template,
    a. either via CLI - `apify create -t python-empty`
    b. or in the Apify console - go to Actors -> Development and click the "Develop new" button
2. You will need to add `bbot` to the `requirements.txt`
3. Then, you are free to implement the logic of your Actor in `src/main.py`. You can of course add additional files if needed.
4. Use the links in the generated projects `README.md` for further information and don't hesitate to ask us!
5. You can either develop your Actor locally, using your favorite editor, or in the Apify Console's Web IDE

## Approach #2 - Actorize the `bbot` CLI

1. The easiest way to kick this off is using the `cli-start` Actor template via CLI - `apify create -t cli-start`
2. You will need to install `bbot` in your Dockerfile. To do that, you'll probably need to install `python` via `apk`.
3. Then, you are free to implement the logic of your Actor in `main.sh`. You can of course add additional files if needed.
4. Use the links in the generated projects `README.md` for further information and don't hesitate to ask us!
