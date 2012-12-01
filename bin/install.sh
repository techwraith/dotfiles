#
# Run this script to get set up
#

# back up all files that we'll be overwriting:
#
#  .zsh.backup.{{timestamp}}
#    .oh-my-zsh
#    .zshrc
#    .zsh_aliases
#    .zsh_exports
#    .zsh_functions
#
#  .vim.backup.{{timestamp}}
#    .vim
#    .vimrc
#    .vimrc.local
#    .vimrc.bundles.local
#

# ZSH
mkdir -p ~/.zsh.backup
mv ~/.oh-my-zsh ~/.zsh.backup
mv ~/zshrc ~/.zsh.backup
mv ~/.zsh_aliases ~/.zsh.backup
mv ~/.zsh_exports ~/.zsh.backup
mv ~/.zsh_functions ~/.zsh.backup

# VIM
mkdir -p ~/.vim.backup
mv ~/.vim ~/.vim.backup
mv ~/.vimrc ~/.vim.backup
mv ~/.vimrc.local ~/.vim.backup
mv ~/.vimrc.bundles.local ~/.vim.backup

# clone the repo down
git clone git@github.com:Techwraith/dotfiles.git ~/.dotfiles

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install custom zsh theme
ln -s ~/.dotfiles/zsh/zen.zsh-theme ~/.oh-my-zsh/themes/zen.zsh-theme

# install custom zshrc and friends
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/.zsh_aliases ~/.zsh_aliases
ln -sf ~/.dotfiles/zsh/.zsh_exports ~/.zsh_exports
ln -sf ~/.dotfiles/zsh/.zsh_functions ~/.zsh_functions

# load vimrc.local and vimrc.bundles.local
ln -sf ~/.dotfiles/vim/.vimrc.local
ln -sf ~/.dotfiles/vim/.vimrc.bundles.local

# install spf13
curl https://raw.github.com/spf13/spf13-vim/3.0/bootstrap.sh -L -o - | sh
