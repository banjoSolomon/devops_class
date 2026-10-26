# Final Project Starter Dockerfile
# Students: complete and improve this

FROM python:3.12-alpine

WORKDIR /app

# Install dependencies first (cache optimization)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Security: run as non-root
RUN adduser -D appuser
USER appuser

EXPOSE 5000

# Use environment variable for version
ARG APP_VERSION=1.0.0
ENV APP_VERSION=${APP_VERSION}

CMD ["python", "app.py"]
