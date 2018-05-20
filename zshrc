source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle docker
antigen bundle gitfast
antigen bundle git-extras
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme /home/luis/.dotfiles/zsh/themes/fox --no-local-clone

antigen apply

if [ -f ~/.zshrc.after ]; then
    source ~/.zshrc.after
fi

if [ -f ~/.zprofile ]; then
    source ~/.zprofile
fi
