# Based on mira zsh theme with n-nvm, and python support
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'

local nvm_node='%{$fg[green]%}‹n-$(n ls 2>&1)›%{$reset_color%}'

local git_branch='$(git_prompt_info)'

local python_version='%{$fg[red]%}‹$(python --version 2>&1)›%{$reset_color%}'

PROMPT="╭─${user_host} ${current_dir} ${nvm_node} ${python_version}  ${git_branch}
╰──%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"
