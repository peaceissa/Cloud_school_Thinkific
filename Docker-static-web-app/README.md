# Static Website with Docker

This project demonstrates how to build a simple static website using Docker. It uses a one-page HTML template and serves it using Nginx.

## Prerequisites

- Docker installed on your machine
- A Docker Hub account
- A GitHub account

## Project Structure

static-website-docker/
├── Dockerfile
├── index.html
└── README.md

## Building the Docker Image

Navigate to the project directory and build the Docker image:

```sh
docker build -t your-dockerhub-username/static-website .

## Running the Docker Container
Run the container to serve the website locally:

docker run -d -p 80:80 your-dockerhub-username/static-website
Open your browser and navigate to http://localhost to view the website.

## Publishing the Docker Image
Log in to Docker Hub:

docker login
Push the Docker image to Docker Hub:


docker push your-dockerhub-username/static-website

## GitHub Repository

The project files are stored and versioned on GitHub. Clone the repository to get started:

git clone https://github.com/peaceissa/Docker-static-web-app.git