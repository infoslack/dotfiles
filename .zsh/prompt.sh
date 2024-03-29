# Colors
fg_blue="\033[0;34m"
fg_reset="\e[0m"
fg_gray="\033[1;30m"
fg_green="\033[0;32m"
fg_light_gray="\033[0;37m"
fg_light_green="\033[1;32m"
fg_light_red="\033[1;31m"
fg_red="\033[0;31m"
fg_white="\033[1;37m"
fg_yellow="\033[0;33m"

__custom_git_branch () {
  branch=$(git branch 2> /dev/null | grep \* | sed 's/* //')

  if [[ "$branch" = "" ]]; then
    branch=$(git status 2> /dev/null | grep "On branch" | sed -E 's/^.*On branch //')
  fi

  branch=$(echo $branch | sed -E 's/[)(]//g')

  echo $branch
}

__custom_git_status () {
  nothing_to_commit="# Initial commit"
  behind="Your branch is behind"
  ahead="Your branch is ahead"
  untracked="Untracked files"
  diverged="have diverged"
  changed="Changed but not updated"
  to_be_commited="Changes to be committed"
  changes_not_staged="Changes not staged for commit"

  git_branch=$(__custom_git_branch)
  git_status=$(git status 2> /dev/null | tr "\\n" " ")

  if [[ "$git_branch" = "" ]]; then
    return
  fi

  if [[ "$git_status" =~ "$changes_not_staged" ]]; then
    prompt_color="${fg_red}"
    state=""
  elif [[ "$git_status" =~ "$nothing_to_commit" ]]; then
    prompt_color="${fg_red}"
    state=""
  elif [[ "$git_status" =~ "$diverged" ]]; then
    prompt_color="${fg_red}"
    state="${state}${fg_red}↕${fg_reset}"
  elif [[ "$git_status" =~ "$behind" ]]; then
    prompt_color="${fg_red}"
    state="${state}${fg_red}↓${fg_reset}"
  elif [[ "$git_status" =~ "$ahead" ]]; then
    prompt_color="${fg_red}"
    state="${state}${fg_red}↑${fg_reset}"
  elif [[ "$git_status" =~ "$changed" ]]; then
    prompt_color="${fg_red}"
    state=""
  elif [[ "$git_status" =~ "$to_be_commited" ]]; then
    prompt_color="${fg_red}"
    state=""
  else
    prompt_color="${fg_green}"
    state=""
  fi

  if [[ "$git_status" =~ "$untracked" ]]; then
    state="${state}${fg_red}*${fg_reset}"
  fi

  echo "${fg_yellow}\uf7a1${fg_reset} ${prompt_color}${git_branch}${fg_reset}${state}"
}

__custom_path () {
  current_path="${PWD/#$HOME/~}"
  echo "${fg_blue}${current_path}${fg_reset}"
}

__custom_prompt() {
  prompt="\n$(__custom_path) $(__custom_git_status)\n$ "
  echo $prompt
}

PROMPT='$(__custom_prompt)'
