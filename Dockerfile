FROM python:3.8-slim

WORKDIR /app

COPY reqs.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r reqs.txt

COPY . .

CMD ["python"]