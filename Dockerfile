# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables to avoid user interaction during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install sudo
RUN apt-get update && apt-get install -y sudo

# Create a new user with username 'root' and password 'root'
RUN useradd -m root && echo "root:root" | chpasswd && adduser root sudo

# Switch to the new user
USER root

# Set the default command to run when starting the container
CMD ["/bin/bash"]
