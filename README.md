# Fyle Backend Challenge

## Who is this for?

This challenge is meant for candidates who wish to intern at Fyle and work with our engineering team. You should be able to commit to at least 6 months of dedicated time for internship.

## Why work at Fyle?

Fyle is a fast-growing Expense Management SaaS product. We are ~40 strong engineering team at the moment. 

We are an extremely transparent organization. Check out our [careers page](https://careers.fylehq.com) that will give you a glimpse of what it is like to work at Fyle. Also, check out our Glassdoor reviews [here](https://www.glassdoor.co.in/Reviews/Fyle-Reviews-E1723235.htm). You can read stories from our teammates [here](https://stories.fylehq.com).


## Challenge outline

**You are allowed to use any online/AI tool such as ChatGPT, Gemini, etc. to complete the challenge. However, we expect you to fully understand the code and logic involved.**

This challenge involves writing a backend service for a classroom. The challenge is described in detail [here](./Application.md)


## What happens next?

You will hear back within 48 hours from us via email. 


## Installation

1. Fork this repository to your github account
2. Clone the forked repository and proceed with steps mentioned below

### Install requirements

```
virtualenv env --python=python3.8
source env/bin/activate
pip install -r requirements.txt
```
### Reset DB

```
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/
```
### Start Server

```
bash run.sh
```
### Run Tests

```
pytest -vvv -s tests/

# for test coverage report
# pytest --cov
# open htmlcov/index.html
```

Running with Docker
------------

To run this project in a containered environment, please make sure you have installed:

-   Docker
-   Docker Compose

Building the Docker Image
-------------------------

To build the Docker image for this, run the following command from the root directory of the project:

`docker build -t fyle-app .`

This will build the Docker image using the `Dockerfile` in the root directory of the project. The image will be named `fyle-app`.

Running with Docker Compose
-------------------------------------------

To run the application using Docker Compose, follow the steps below:

1.  Build the Docker image using the command described above.
2.  Run the following command from the root directory of the project:

`docker compose up`

Note: If you want to combine the image building and container running processes into one command, use `docker compose up --build`

This will start the Flask application and any other services defined in the `docker-compose.yml` file. The application will be accessible at `http://localhost:7755`.

1.  To stop the services, run the following command:

`docker compose down`

This will stop the services and remove the containers.

Testing the Application
-----------------------

To run the tests for the application, follow these steps:

1.  Build the Docker image using the command described above.
2.  Run the following command from the root directory of the project:

`docker run --rm -v $(pwd):/app fyle-image pytest -vvv -s tests/`

This will run the tests using the `pytest` command inside the Docker container. The `-v` option maps the project directory on the host machine to the `/app` directory in the Docker container. The `--rm` option removes the container after the tests are completed.