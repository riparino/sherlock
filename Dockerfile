FROM python:3.12-slim-bullseye

# Set working directory
WORKDIR /sherlock

# Copy local Sherlock repo into container
COPY . .

# Install from local source
RUN pip install --no-cache-dir .

# Set environment for Docker use
ENV SHERLOCK_ENV=docker

# Run the correct entrypoint from its actual path
ENTRYPOINT ["python3", "sherlock_project/sherlock.py"]
