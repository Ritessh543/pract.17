name: Artifact Demo

on:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Create File
        run: echo "Hello Ritesh from GitHub Actions" > hello.txt

      - name: Display File
        run: cat hello.txt

      - name: Upload Artifact
        uses: actions/upload-artifact@v4
        with:
          name: my-file
          path: hello.txt

  test:
    runs-on: ubuntu-latest
    needs: build

    steps:
      - name: Download Artifact
        uses: actions/download-artifact@v4
        with:
          name: my-file

      - name: Verify File
        run: cat hello.txt