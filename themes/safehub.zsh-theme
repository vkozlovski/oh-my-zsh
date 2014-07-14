# hellips.zsh-theme
#
# Author: Vlad Kozlovski
# URL: http://vladkozlovski.com/
# Repo: https://github.com/vladkozlovski/oh-my-zsh
# Direct Link: https://github.com/vladkozlovski/oh-my-zsh/blob/master/themes/hellips.zsh-theme
#
# Created on:		January 12, 2014
# Last modified on:	January 12, 2014



if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'
eval my_blue='$FG[032]'


# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}

$my_blue%n$FG[075]@$my_orange%m%{$reset_color%} % \
$FG[032]%~ \
$(git_prompt_info) \

$FG[105]%(!.#.»)%{$reset_color%} '


PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# right prompt
# RPROMPT='$my_orange%n$FG[075]@$my_blue%m%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$my_orange(branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
