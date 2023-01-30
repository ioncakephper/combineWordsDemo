# combineWordsDemo

Sample BDD Automation for a combineWords function.


## Overview

Use the following files as a sample of BDD (Behavioral Driven Development) Automation as follows:

- [combineWords.feature](./combineWords.feature) --  Gerking-based BDD problem description
- [combineWords.test.js](./combineWords.test.js) -- JavaScript test file for Jest implementing tests designed in .feature
- [combine.js](./combine.js) -- personal implementation of the function (some tests are likely to fail)

## What to test

The requirement reads as follows:

> Sa rezolve problema aceasta pentru BRD Automation:
> Se dau doua siruri de caractere:
> Input1: "teste"
> Input2: "teae"
> Sa se obtina al treilea sir care reprezinta caracterele comune ale sirurilor si frecventa lor descrescator.
> Output: "e2t1"

## How to test

- Install Jest as CLI

```bash
npm i -g jest
```

- Run the test file with Jest

```bash
jest combineWords.test.js
```

## Note

The initial request indicated BRD (Business Requirement Document) Automation, but I elected to understand BDD (Behavioral Driven Development).

Should a BRD is expected, please let me know.

