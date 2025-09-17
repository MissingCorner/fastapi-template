#!/usr/bin/env bash
set -e

export $(cat .env | grep "^[^#\;]" | xargs)

grep -E 'HISTFILE=' ~/.zshrc || echo 'HISTFILE=/workspace/local/tmp/.zsh_history' >> ~/.zshrc;
poetry install
