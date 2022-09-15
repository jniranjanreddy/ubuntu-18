## How to install and test playwright

```
root@dev-server01:/myworkspace# npm init playwright@latest
npx: installed 1 in 1.39s
Getting started with writing end-to-end tests with Playwright:
Initializing project in '.'
✔ Do you want to use TypeScript or JavaScript? · TypeScript
✔ Where to put your end-to-end tests? · tests
✔ Add a GitHub Actions workflow? (y/N) · false
✔ Install Playwright operating system dependencies (requires sudo / root - can be done manually via sudo npx playwright install-deps')? (y/N) · false
Initializing NPM project (npm init -y)…
Wrote to /myworkspace/package.json:

{
  "name": "myworkspace",
  "version": "1.0.0",
  "description": "",
  "main": "split.js",
  "dependencies": {},
  "devDependencies": {},
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}


Installing Playwright Test (npm install --save-dev @playwright/test)…
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN myworkspace@1.0.0 No description
npm WARN myworkspace@1.0.0 No repository field.

+ @playwright/test@1.25.2
added 3 packages from 42 contributors and audited 3 packages in 4.661s
found 0 vulnerabilities

Downloading browsers (npx playwright install)…
Downloading Chromium 105.0.5195.19 (playwright build v1019) - 133.2 Mb [====================] 100% 0.0s
Chromium 105.0.5195.19 (playwright build v1019) downloaded to /root/.cache/ms-playwright/chromium-1019
Downloading FFMPEG playwright build v1007 - 2.6 Mb [====================] 100% 0.0s
FFMPEG playwright build v1007 downloaded to /root/.cache/ms-playwright/ffmpeg-1007
Downloading Firefox 103.0 (playwright build v1344) - 76.3 Mb [====================] 100% 0.0s
Firefox 103.0 (playwright build v1344) downloaded to /root/.cache/ms-playwright/firefox-1344
Downloading Webkit 16.0 (playwright build v1699) - 84.7 Mb [====================] 100% 0.0s
Webkit 16.0 (playwright build v1699) downloaded to /root/.cache/ms-playwright/webkit-1699
Writing playwright.config.ts.
Writing tests/example.spec.ts.
Writing tests-examples/demo-todo-app.spec.ts.
Writing package.json.
✔ Success! Created a Playwright Test project at /myworkspace

Inside that directory, you can run several commands:

  npx playwright test
    Runs the end-to-end tests.

  npx playwright test --project=chromium
    Runs the tests only on Desktop Chrome.

  npx playwright test example
    Runs the tests in a specific file.

  npx playwright test --debug
    Runs the tests in debug mode.

  npx playwright codegen
    Auto generate tests with Codegen.

We suggest that you begin by typing:

    npx playwright test

And check out the following files:
  - ./tests/example.spec.ts - Example end-to-end test
  - ./tests-examples/demo-todo-app.spec.ts - Demo Todo App end-to-end tests
  - ./playwright.config.ts - Playwright Test configuration

Visit https://playwright.dev/docs/intro for more information. ✨

Happy hacking! 🎭

```
