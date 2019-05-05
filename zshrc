source <(antibody init)

export ZSH="$(antibody home)"/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh

antibody bundle robbyrussell/oh-my-zsh
antibody bundle robbyrussell/oh-my-zsh path:plugins/docker
antibody bundle robbyrussell/oh-my-zsh path:plugins/git
antibody bundle robbyrussell/oh-my-zsh path:plugins/gitfast
antibody bundle robbyrussell/oh-my-zsh path:plugins/git-extras
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle /home/luis/.dotfiles/zsh/themes/fox

if [ -f ~/.zshrc.after ]; then
    source ~/.zshrc.after
fi

if [ -f ~/.zprofile ]; then
    source ~/.zprofile
fi
