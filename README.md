# Example node.js Docker app
An example about how to build and publish mult-arch images of a node.js app.

* Pull the image
```bash
docker pull haohanyang/node-docker-example
```

* Start the container
```bash
docker run -it --rm -p 3000:3000 haohanyang/node-docker-example
```