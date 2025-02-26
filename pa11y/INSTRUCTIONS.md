# Actorization project - `pa11y`

[pa11y](https://github.com/pa11y/pa11y) is a tool for automated website accessibility testing.

We propose that you make an Actor that will accept a URL and output the findings of `pa11y` using the default dataset. 

If you want to go an extra mile, you may also follow links to the same domain and test them as well - using [crawlee](https://crawlee.dev/) and/or the Apify [Request queue](https://docs.apify.com/platform/storage/request-queue) could be useful here.

## General instructions

You will need to [sign up](https://console.apify.com/sign-up) for an Apify account. It's a one click procedure if you use your Google account and you don't need to enter your credit card.

If you prefer working with CLIs over web consoles, you may want to [install the Apify CLI](https://docs.apify.com/cli/docs/installation) as well. It can be installed either from the NPM registry or via Homebrew.

## Approach #1 - Node.js library

1. The easiest way to kick this off is using the `js-empty` or `ts-empty` (there are typescript stubs for pa11y) Actor template,
    a. either via CLI - `apify create -t js-empty`
    b. or in the Apify console - go to Actors -> Development and click the "Develop new" button
2. You will need to add `pa11y` as a dependency to your package.json
3. Then, you are free to implement the logic of your Actor in `src/main.js` (or `.ts`). You can of course add additional files if needed.
4. Use the links in the generated projects `README.md` for further information and don't hesitate to ask us!
5. You can either develop your Actor locally, using your favorite editor, or in the Apify Console's Web IDE

## Approach #2 - Actorize the `pa11y` CLI

1. The easiest way to kick this off is using the `cli-start` Actor template via CLI - `apify create -t cli-start`
2. You will need to install `pa11y` in your Dockerfile. To do that, you'll probably need to install `nodejs` via `apk`.
3. Then, you are free to implement the logic of your Actor in `main.sh`. You can of course add additional files if needed.
4. Use the links in the generated projects `README.md` for further information and don't hesitate to ask us!
