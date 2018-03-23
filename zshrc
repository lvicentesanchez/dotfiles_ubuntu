source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle docker
antigen bundle gitfast
antigen bundle git-extras
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme fox

antigen apply

if [ -f ~/.zshrc.after ]; then
    source ~/.zshrc.after
fi

if [ -f ~/.zprofile ]; then
    source ~/.zprofile
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/vault vault
