#
# Run this script to get set up
#
dotfiles="${HOME}/.dotfiles"
ohmyzsh="${HOME}/.oh-my-zsh"

# Ensure Vim, Curl, and Git are installed
if [ ! -e "$(which vim)" ]; then
  echo "Vim is required to install the dotfiles"
  exit 1
fi

if [ ! -e "$(which curl)" ]; then
  echo "Curl is required to install the dotfiles"
  exit 1
fi

if [ ! -e "$(which git)" ]; then
  echo "Git is required to install the dotfiles"
  exit 1
fi

# Create backup of old directories if they exist
if [ -d "${dotfiles}" ]; then
  mv -f "${dotfiles}" "${dotfiles}_backup"
  echo "Created backup of ${dotfiles} to ${dotfiles}_backup"
fi

if [ -d "${ohmyzsh}" ]; then
  mv -f "${ohmyzsh}" "${ohmyzsh}_backup"
  echo "Created backup of ${ohmyzsh} to ${ohmyzsh}_backup"
fi

# Install dotfiles and oh-my-zsh
git clone git@github.com:Techwraith/dotfiles.git "${dotfiles}"
curl -L -# https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Link ZSH files
ln -sf "${dotfiles}/zsh/zen.zsh-theme" "${ohmyzsh}/themes/zen.zsh-theme"
ln -sf "${dotfiles}/zsh/.zshrc" "${HOME}/.zshrc"
ln -sf "${dotfiles}/zsh/.zsh_aliases" "${HOME}/.zsh_aliases"
ln -sf "${dotfiles}/zsh/.zsh_exports" "${HOME}/.zsh_exports"
ln -sf "${dotfiles}/zsh/.zsh_functions" "${HOME}/.zsh_functions"

# Link Vim files
ln -sf "${dotfiles}/vim/.vimrc.local" "${HOME}/.vimrc.local"
ln -sf "${dotfiles}/vim/.vimrc.bundles.local" "${HOME}/.vimrc.bundles.local"

# Install spf13 and install bundles
curl -L -# https://raw.github.com/spf13/spf13-vim/3.0/bootstrap.sh | sh
