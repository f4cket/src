#ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="pws"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"
prompt walters
plugins=(git bundler brew gem rbates)
alias l="ls -la"
alias ll="ls -l |lolcat"
export PATH="$HOME/.gem/ruby/1.9.1/bin:/usr/local/bin:$PATH"

#source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
