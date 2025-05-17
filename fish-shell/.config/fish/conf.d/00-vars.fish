set -e EDITOR
set -U -x EDITOR nvim

set -e VAULT_ADDR
set -U -x VAULT_ADDR https://vault.int.wahlberger.dev

set -U PYTHONPATH /opt/homebrew/lib/python3.10/site-packages

set -gx PY_COLORS 1

set -gx _ZO_FZF_OPTS "--color=16,bg+:-1"

set -gx LANG en_US.UTF-8

set -gx FZF_DEFAULT_OPTS "--color=16,bg+:-1"

set -Ux nvm_default_version v18.11.0

set -gx fish_config_type "public"
set fish_greeting
