# R Devcontainer Dockerfile
FROM rocker/tidyverse:latest

USER root

# Install required system tools for R development
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libcurl4-openssl-dev \
        libssl-dev \
        libxml2-dev \
        curl \
        vim \
        git \
        build-essential \
        cmake \
        libnode-dev \
        libffi-dev \
        zlib1g-dev \
        libgit2-dev \
    && rm -rf /var/lib/apt/lists/*

USER rstudio
WORKDIR /workspace
