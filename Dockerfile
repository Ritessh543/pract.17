name: Docker Build

on:
  workflow_dispatch:

jobs:
  docker-job:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Build Docker Image
        run: docker build -t my-node-app .

      - name: Verify Image
        run: docker images