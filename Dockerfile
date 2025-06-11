FROM registry.access.redhat.com/ubi9/ubi-minimal

RUN microdnf install python3 python3-pip -y \
    && pip3 install flask \
    && microdnf clean all

WORKDIR /app
COPY app.py .
COPY cert.pem .
COPY key.pem .
RUN chmod 644 cert.pem key.pem
RUN chmod 666 app.py

CMD ["python3", "app.py"] 
