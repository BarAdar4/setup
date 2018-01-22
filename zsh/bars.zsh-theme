if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$terminfo[bold]$FG[123]%}%n%{$reset_color%}@%{$terminfo[bold]$FG[075]%}%m\
%{$reset_color%}:%{$terminfo[bold]$FG[154]%}%~%{$reset_color%} \
$(git_prompt_info)\
%{$FG[000]%}%(!.#.$)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[000]%}(%{$FG[051]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[082]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[160]%}•%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[000]%})%{$reset_color%}"
