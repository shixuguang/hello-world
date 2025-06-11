# Hello World HTTPS Python Endpoint

## Generate Self-Signed Certificates

```
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes -subj "/CN=localhost"
```

## Build Docker Image

```
docker build -t hello-world-https .
```

## Run Docker Container

```
docker run -p 443:443 --rm hello-world-https
```

Visit https://localhost/hello-world in your browser (accept the self-signed certificate warning). 