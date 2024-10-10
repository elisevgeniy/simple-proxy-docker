# simple-proxy-docker

A simple HTTP proxy server that can be run using Docker. This project is based on the [simple-proxy](https://github.com/jthomperoo/simple-proxy) open source project.

[![Docker Image Version](https://img.shields.io/docker/v/xieyanbo/simple-proxy)](https://hub.docker.com/r/xieyanbo/simple-proxy)
[![Docker Image Size](https://img.shields.io/docker/image-size/xieyanbo/simple-proxy)](https://hub.docker.com/r/xieyanbo/simple-proxy)
[![GitHub License](https://img.shields.io/github/license/xyb/simple-proxy-docker)](https://github.com/xyb/simple-proxy-docker)

## Usage

You can either use the pre-compiled image or build your own. Here are instructions for both methods:

### Using the pre-compiled image

To quickly run the proxy server using a pre-compiled image, use the following command:

```sh
docker run -d -p 8888:8888 xieyanbo/simple-proxy
```

This will start the proxy server in the background, mapping port 8888 from the container to port 8888 on your host machine.

### Building and running your own image

If you prefer to build your own image, follow these steps:

1. Build the Docker image:

   ```sh
   docker build -t simple-proxy .
   ```

2. Run the Docker container:

   ```sh
   docker run -p 8888:8888 simple-proxy
   ```

   This command will start the proxy server and map port 8888 from the container to port 8888 on your host machine.

3. (Optional) To run the container in the background, use the `-d` flag:

   ```sh
   docker run -d -p 8888:8888 simple-proxy
   ```

### Configuring your client

Regardless of which method you used to start the proxy:

1. Configure your client to use the proxy:

   Set your HTTP proxy settings to `http://localhost:8888` in your browser or application.

2. To verify the proxy using command line:

   You can use either of these commands to test if the proxy is working correctly:

   ```sh
   curl --proxy 'http://localhost:8888' https://example.com
   ```

   or

   ```sh
   https_proxy=http://localhost:8888 curl https://example.com
   ```

   If the proxy is working, you should see the HTML content of example.com.

3. To stop the container:

   ```sh
   docker stop $(docker ps -q --filter ancestor=simple-proxy)
   ```

   If you used the pre-compiled image, replace `simple-proxy` with `xieyanbo/simple-proxy`.

## Notes

- The proxy server runs on port 8888 by default. If you need to use a different port, modify the Dockerfile and adjust the `docker run` command accordingly.
- Make sure you have Docker installed and running on your system before executing these commands.
- This is a basic HTTP proxy and may not support all features of a full-fledged proxy server.

## Acknowledgements

This project is based on [simple-proxy](https://github.com/jthomperoo/simple-proxy) by jthomperoo.
