# simple-proxy-docker

A simple HTTP proxy server that can be run using Docker. This project is based on the [simple-proxy-docker](https://github.com/xyb/simple-proxy-docker).

Add run options and compose file.

[![GitHub License](https://img.shields.io/github/license/elisevgeniy/simple-proxy-docker)](https://github.com/elisevgeniy/simple-proxy-docker)

## Usage

1. Download repository

2. Change `docker-compose.yaml`, add run option string to OPT env like:
   ```
   environment:
      - OPT=-basic-auth=user:pass -log-headers
   ``` 

4. Run the Docker container:

   ```sh
   docker compose up --build
   ```

   This command will start the proxy server and map port 8888 from the container to port 8888 on your host machine.

5. (Optional) To run the container in the background, use the `-d` flag:

   ```sh
   docker compose up -d --build
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

## Notes

- The proxy server runs on port 8888 by default. If you need to use a different port, modify the Dockerfile and adjust the `docker run` command accordingly.
- Make sure you have Docker installed and running on your system before executing these commands.
- This is a basic HTTP proxy and may not support all features of a full-fledged proxy server.

## Acknowledgements

This project is based on [simple-proxy-docker](https://github.com/xyb/simple-proxy-docker) by xyb and [simple-proxy](https://github.com/jthomperoo/simple-proxy) by jthomperoo.
