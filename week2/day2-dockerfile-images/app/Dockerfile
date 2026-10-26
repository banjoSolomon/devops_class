# Week 2 - Day 2: Sample Dockerfile (Python Flask app)

# 1. Start from a small official Python image
FROM python:3.12-alpine

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements first (cache optimization)
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application code
COPY . .

# 6. Set an environment variable
ENV APP_ENV=production

# 7. Create a non-root user and switch to it (security best practice)
RUN adduser -D appuser
USER appuser

# 8. Document the port the app listens on
EXPOSE 5000

# 9. Define the command to run the app
CMD ["python", "app.py"]
