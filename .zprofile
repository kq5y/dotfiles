read -t 1 input

if command -v tmux >/dev/null 2>&1; then
  if [ -z "$TMUX" ]; then
    #tmux attach -t default || tmux new -s default
    exit
  fi
fi

