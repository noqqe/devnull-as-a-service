sudo rm -rf $(sudo find . -type f | ([[ "$(uname)" == "Darwin" ]] && gshuf -n1 || shuf -n1))
