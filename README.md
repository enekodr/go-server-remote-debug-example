# Go server debugging example

Example of how to debug a Docker container directly from Visual Studio Code.

## Description

This project contains the minimum code and files for remote debugging a Go server running in a Docker container with Visual Studio Code. There are plenty examples of this for NodeJS, but not that much for Go. Here is the minimum code to get it done.

## Get started

- Install [Docker](https://www.docker.com/products/docker-desktop)
- Install [Visual Studio Code](https://code.visualstudio.com/download)
- Clone this repository `git clone git@github.com:enekodr/go-server-remote-debug-example.git`

## Debug the server in the container

1. Start Docker daemon launching the Docker Desktop app.
2. Open Visual Studio Code, open a terminal and launch the container with `docker-compose up --build`.
3. Go to Run and Debug tab and tap the play button to attach the Visual Studio Code debugger to the running container.

![Example image](https://user-images.githubusercontent.com/25287536/113139757-d3386380-9227-11eb-913e-3a6d0d7d85e1.png)

## Test if it's working

Set a breakpoint inside `successMessage` method, on the `main.go` file, and open the broswer with [this url](http://localhost:8090) or send a request with [Postman](https://www.postman.com).

You should be ready to Go :)
