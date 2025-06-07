#!/usr/bin/env bash

TMUX_STORAGE_DIR="$HOME/.tmux"
TMUX_STORAGE_FILE="${TMUX_STORAGE_DIR}/storage_data"

ETH_INTERFACES="en0"

MODULES="time"

function get_interface_ip() {
  local interface

  if [ -z "$1" ]; then
    return
  fi

  interface="$1"

  ip addr show "$interface" | grep -E "^[[:space:]]*inet " | xargs | cut -d" " -f2 | cut -d "/" -f1
}

function get_ip_data() {
  local ip
  local output

  for interface in ${ETH_INTERFACES}; do
    ip=$(get_interface_ip "$interface")

    if [ -n "$ip" ]; then
      output+=" ${interface: 0:2}: $ip"
    fi
  done

  if [ -z "$output" ]; then
    echo "IP N/A"
  fi

  echo "$output" | xargs
}

function get_storage_data() {
  if [ ! -d "${TMUX_STORAGE_DIR}" ]; then
    mkdir -p "${TMUX_STORAGE_DIR}"
  fi

  if [ "$(date +%S)" != "00" ]; then
    if [ ! -f "${TMUX_STORAGE_FILE}" ]; then
      echo "Storage data not available"
      return
    fi
  else
    df --output=used,size -h / | tail -1 | xargs echo -n | tr ' ' '/' > "${TMUX_STORAGE_FILE}"
  fi

  cat "${TMUX_STORAGE_FILE}"
}

function get_time_data() {
  date --rfc-3339=seconds | cut -d "+" -f1
}

output=""

for module in ${MODULES}; do
  output+="| $(eval get_"${module}"_data) "
done

if [ -n "$output" ]; then
  output+="|"
fi

echo "$output"
