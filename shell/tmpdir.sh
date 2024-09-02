# Private tmpdir
if [ ! -d "$HOME/.tmp" ]; then
    mkdir "$HOME/.tmp"
fi
export TMPDIR="$HOME/.tmp"
