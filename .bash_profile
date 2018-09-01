

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\w\[\e[31;40m\]$(parse_git_branch)\[\e[m\] ⚡️ \n'

# export GITAWAREPROMPT=~/.bash/git-aware-prompt
# source "${GITAWAREPROMPT}/main.sh"

# export PS1="\w\[\e[31;40m\] $git_prompt ⚡️ \n"

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nsr5812/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/nsr5812/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nsr5812/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/nsr5812/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export PATH="/Users/nsr5812/go/bin:$PATH"
