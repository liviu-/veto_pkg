shell=$(echo $SHELL | grep -o "[a-z]*" | tail -1)
startup_script=".${shell}rc"
script="veto_packages.sh"

cat completions.sh >> "$HOME/${startup_script}"
chmod 755 $script
sudo cp $script /usr/bin/veto_packages

source "$HOME/${startup_script}"
