# nodejsapplicaionsss

A simple Node.js hello world application.

## Installation

Make sure you have Node.js installed.

## Running the Application

To start the server locally, run:

```bash
npm start
```

or

```bash
node app.js
```

The server will run on `http://0.0.0.0:3000` and respond with "Hello World" to any request.

## Docker

To build and run with Docker:

```bash
docker build -t nodejsapp .
docker run -p 5000:5000 nodejsapp
```

The server will run on `http://0.0.0.0:5000` inside the container.

## GitHub Actions

This repository includes a GitHub Actions workflow that automatically builds and pushes the Docker image to Docker Hub on every push to the `main` branch.

### Setup

1. Go to your Docker Hub account and create an access token (if you don't have one).
2. In your GitHub repository, go to Settings > Secrets and variables > Actions.
3. Add the following secrets:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username.
   - `DOCKERHUB_TOKEN`: Your Docker Hub access token.
4. The workflow will automatically tag and push the image as `{DOCKERHUB_USERNAME}/nodejsapp:latest`.

### Manual Trigger

You can also trigger the workflow manually from the Actions tab in GitHub.