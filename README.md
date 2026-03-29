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

This repository includes GitHub Actions workflows for CI/CD.

### Docker Image Publishing

Automatically builds and pushes the Docker image to Docker Hub on every push to the `main` branch.

**Setup**:
1. Add `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` secrets in GitHub repository settings.

### Infrastructure Deployment

Manually deploys the EC2 instance using Terraform.

**Setup**:
1. Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` secrets in GitHub repository settings.
2. Go to the Actions tab in GitHub.
3. Select "Deploy Infrastructure with Terraform" workflow.
4. Click "Run workflow" to deploy the EC2 instance.

**Note**: This workflow uses `workflow_dispatch` for manual triggering to avoid accidental deployments on every push.