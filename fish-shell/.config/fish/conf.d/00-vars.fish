set -e EDITOR
set -U -x EDITOR nvim

set -e VAULT_ADDR
set -U -x VAULT_ADDR https://vault.int.wahlberger.dev

set -U PYTHONPATH /opt/homebrew/lib/python3.10/site-packages

set -gx PY_COLORS 1
set fish_greeting
