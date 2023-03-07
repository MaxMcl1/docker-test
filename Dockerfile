# Dockerfile

FROM python:3.9-alpine

COPY hello.py /

CMD ["python", "/hello.py"]
