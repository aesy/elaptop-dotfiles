if [ -z "$TMUX" ]; then
  tmux new-session && exit
fi

exec fish
