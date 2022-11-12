function fish_prompt
  set -l cwd (prompt_pwd)
  set -l branch (command git symbolic-ref HEAD | sed -e 's|^refs/heads/||')
  printf "\n $USER @ $(hostname) $cwd \n"
  if test -n "$branch"
      set_color blue
      printf "  $branch "
  printf "  "
end
