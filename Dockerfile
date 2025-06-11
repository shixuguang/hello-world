FROM registry.access.redhat.com/ubi9/ubi-minimal

RUN microdnf install python3 python3-pip -y \
    && pip3 install flask \
    && microdnf clean all

WORKDIR /app
COPY app.py .
COPY cert.pem .
COPY key.pem .

EXPOSE 443
CMD ["python3", "app.py"] 