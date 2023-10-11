# Use the official Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Update the package list and install Ansible
RUN apt-get update && \
    apt-get install -y ansible sudo && \
    rm -rf /var/lib/apt/lists/*

# Create a new user named "tester" and add them to the sudo group without a password prompt
RUN useradd -m -s /bin/bash tester && \
    mkdir -p /etc/sudoers.d && \
    echo "tester ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/tester && \
    chmod 0440 /etc/sudoers.d/tester

# Switch to the new user
USER tester

# Set the working directory to the user's home directory
WORKDIR /home/tester

