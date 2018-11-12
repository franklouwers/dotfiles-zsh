#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Frank's aliases
alias grep='ggrep -a --color=auto'
alias rgrep='grep -r'
alias mtr='sudo mtr'
unset GREP_COLORS
export GREP_COLOR="01;32"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Z because z
. /usr/local/etc/profile.d/z.sh
alias zz='z -l'

# pdf_join
function pdf_join {
  join_py="/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py"
  read "output_file?Name of output file > "
  "$join_py" -o $output_file $@ && open $output_file
}

alias sshpass='ssh -o PubkeyAuthentication=no -i /dev/null'

if [ -r ~/.zshrc.not.public ]
then
    source ~/.zshrc.not.public
fi
