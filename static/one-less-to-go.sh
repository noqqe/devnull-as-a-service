sudo rm -f $(sudo find / -type f -print0 | shuf -n1 -z)
