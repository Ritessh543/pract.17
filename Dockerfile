name: Docker Build

on:
  workflow_dispatch:

jobs:
  docker-job:
    runs-on: ubuntu-latest

   steps:
  - run: echo "Hello Ritesh" > hello.txt

  - uses: actions/upload-artifact@v4
    with:
      name: my-file
      path: hello.txt