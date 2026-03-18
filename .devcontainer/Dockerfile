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
        ca-certificates \
        vim \
        git \
        build-essential \
        cmake \
        libnode-dev \
        libffi-dev \
        zlib1g-dev \
        libgit2-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js LTS (needed for npx/skills)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y --no-install-recommends nodejs && \
    rm -rf /var/lib/apt/lists/*

USER rstudio
WORKDIR /workspace

# Install Claude Code CLI
RUN curl -fsSL https://claude.ai/install.sh | bash

ENV PATH="/home/rstudio/.local/bin:${PATH}"

# Claude / Anthropic environment
ENV CLAUDE_CODE_USE_FOUNDRY=1 \
    ANTHROPIC_DEFAULT_OPUS_MODEL=claude-opus-4-6 \
    ANTHROPIC_DEFAULT_SONNET_MODEL=claude-sonnet-4-6 \
    ANTHROPIC_DEFAULT_HAIKU_MODEL=claude-haiku-4-6
