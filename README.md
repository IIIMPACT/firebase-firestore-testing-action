## Jest testing (including firestore rules)

This action runs jest to test code. It also includes the firebase firestore emulator to make it possible to also test firestore rules.

## Assumptions

This action assumes that:

* Your file structure contains a folder in the root directory called `funcitons` which contains all your functions code.
* You have the following npm scripts in your `package.json`:

```javascript
...
  "scripts": {
    "test": "jest",
    "test:ci": "firebase emulators:exec --only firestore \"npm run test\"",
  }
...
```

## Example

Here is an example yaml file to run the action:

```yaml
name: Test

on: [pull_request]

jobs:
  test:
    name: test
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Checkout repository
        uses: actions/checkout@v1

      - name: Run Jest
        uses: IIIMPACT/firebase-firestore-testing-action@v3.0.0
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
