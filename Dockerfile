# Use the Playwright image as the base image
FROM mcr.microsoft.com/playwright:focal

# Switch to root user for system-level installations
USER root

# Update package information and install Python 3 pip
RUN apt-get update && \
    apt-get install -y python3-pip

# Switch back to the non-root user (pwuser in this case)
USER pwuser

# Install Robot Framework using pip
RUN pip3 install --user robotframework

# Install Robot Framework Browser Library using pip
RUN pip3 install --user robotframework-browser

# Initialize the Browser Library
RUN ~/.local/bin/rfbrowser init

# Set environment variables for Node.js and Robot Framework executables
ENV NODE_PATH=/usr/lib/node_modules
ENV PATH="/home/pwuser/.local/bin:${PATH}"
