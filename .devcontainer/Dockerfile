# using microsoft image as base dev container for best support vscode
FROM mcr.microsoft.com/devcontainers/python:3.11 AS vsc-py-dev
# persist tmp/cache to optimize rebuild time
ENV XDG_CACHE_HOME="/workspace/local/tmp/python-3.11/.caches" \
    XDG_CONFIG_HOME="/workspace/local/tmp/python-3.11/config" \
    POETRY_VIRTUALENVS_IN_PROJECT=true
RUN apt-get update -y -qq \
  && pip install --no-cache-dir --user --upgrade \
    pip pylance black==22.3.0 isort==5.12.0 "pylint>=3.0.2,<3.1.0" "pylint-django>=2.5.5,<2.6.0" \
    pipx \
  && pipx install poetry \
  && apt-get clean
