# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S

PROMPT='$fg[blue]%~/$reset_color $(git_prompt_info)%{$reset_color%}> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[cyan]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
