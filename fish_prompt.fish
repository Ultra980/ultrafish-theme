function fish_prompt
  set -l dir (prompt_pwd)
  set -l branch (command git symbolic-ref HEAD | sed -e 's|^refs/heads/||')
  set -l bwhite (set_color --bold white)
  set -l blblue (set_color --bold 02f4f4)
  set -l bteal (set_color --bold 02f4c0)
  set_color --bold white
  printf "\n $bteal$USER$bwhite@$(hostname) $blblue$dir$bwhite \n"
  if test -n "$branch"
    set_color 0ef9ee
    printf "  $branch "
  end
  printf "  "
end
