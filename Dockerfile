# Use a base image, such as Ubuntu
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        gcc \
        g++ \
        git \
        wget \
        curl \
        net-tools \
        iputils-ping \
        iproute2 \
        tcpdump \
        nano \
        vim

# Optionally, you can install specific packages for socket programming
# For example, if you're using Python for socket programming, you might want to install Python
# RUN apt-get install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy any additional files or scripts you might need
COPY ./src /app

# Define any environment variables if needed
# ENV MY_VARIABLE value

# Expose any ports if your application requires it
EXPOSE 8080

# Command to run your application
# CMD ["./your_executable"]

# You can also enter the container with a bash shell for exploration
# CMD ["/bin/bash"]
