# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes


# Add git branch if its present to PS1
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$force_color_prompt" = yes ]; then
    PS1='\[\033[01;33m\][\[\033[02;36m\]\w\[\033[02;37m\]$(parse_git_branch)\[\033[00;00m\]\[\033[01;33m\]]\[\033[00m\]\$ '
#    PS1='[\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]]\$ '
else
    PS1='\w$(parse_git_branch)\$ '
fi

unset color_prompt force_color_prompt

alias startPhotobooth='cd ~/programming/photo-booth-automation && python watch.py'

#export PS1="[\w]$ "