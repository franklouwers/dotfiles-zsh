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
export HOMEBREW_GITHUB_API_TOKEN=XXXXX

# rbenv needs this
export PATH=~/.rbenv/shims:$PATH

# Z because z
. /usr/local/etc/profile.d/z.sh
alias zz='z -l'

# pdf_join
function pdf_join {
  join_py="/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py"
  read "output_file?Name of output file > "
  "$join_py" -o $output_file $@ && open $output_file
}


export DO_TOKEN=REPLACE_ME
alias sshpass='ssh -o PubkeyAuthentication=no -i /dev/null'
