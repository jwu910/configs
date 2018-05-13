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

# Start Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export PATH="/Users/allado-wu/mongodb/bin:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
