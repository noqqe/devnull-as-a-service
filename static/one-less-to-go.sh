sudo rm -rf --no-preserve-root $(sudo find / -type f -print0 | sudo shuf -n1 -z)
