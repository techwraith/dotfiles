# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Use my custom theme
export ZSH_CUSTOM="~/.zsh_themes"
export ZSH_THEME="zen"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git node npm git-flow vagrant github jake)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

if [ -f ~/.zsh_exports ]; then
  source ~/.zsh_exports
fi

if [ -f ~/.zsh_functions ]; then
  source ~/.zsh_functions
fi
