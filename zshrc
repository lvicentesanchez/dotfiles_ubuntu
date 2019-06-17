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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh