export PATH=$HOME/bin:/usr/local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Some environment variables that the Workarea CLI expect to be present.
export WEBLINC_SSH_KEY_NAME="id_workarea"
export WEBLINC_CLI_USERNAME="Chris.Shaffer"
# https://github.com/b4winckler/macvim/wiki/FAQ#how-can-i-use-macvim-to-edit-git-commit-messages
# Edit a file, don't keep it in recent edit, and when finished, find an iTerm window to reactivate.
export EDITOR='/usr/local/bin/mvim -f --nomru -c "au VimLeave * !open -a iTerm"'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  # fix for sed error: https://stackoverflow.com/questions/11287564/getting-sed-error-illegal-byte-sequence-in-bash
  LC_ALL=C . $(brew --prefix)/etc/bash_completion
fi

eval "$(rbenv init -)"
eval "$(nodenv init -)"
