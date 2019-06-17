[1mdiff --git a/config/systemd/user/bloop.service b/config/systemd/user/bloop.service[m
[1mdeleted file mode 120000[m
[1mindex 6f0a94e..0000000[m
[1m--- a/config/systemd/user/bloop.service[m
[1m+++ /dev/null[m
[36m@@ -1 +0,0 @@[m
[31m-/home/luis/.bloop/systemd/bloop.service[m
\ No newline at end of file[m
[1mdiff --git a/config/systemd/user/default.target.wants/bloop.service b/config/systemd/user/default.target.wants/bloop.service[m
[1mindex 6f0a94e..a8e1119 120000[m
[1m--- a/config/systemd/user/default.target.wants/bloop.service[m
[1m+++ b/config/systemd/user/default.target.wants/bloop.service[m
[36m@@ -1 +1 @@[m
[31m-/home/luis/.bloop/systemd/bloop.service[m
\ No newline at end of file[m
[32m+[m[32m/usr/lib/systemd/user/bloop.service[m
\ No newline at end of file[m
[1mdiff --git a/zshrc b/zshrc[m
[1mindex 6d56d60..5379942 100644[m
[1m--- a/zshrc[m
[1m+++ b/zshrc[m
[36m@@ -17,3 +17,13 @@[m [mfi[m
 if [ -f ~/.zprofile ]; then[m
     source ~/.zprofile[m
 fi[m
[32m+[m
[32m+[m[32m# tabtab source for serverless package[m
[32m+[m[32m# uninstall by removing these lines or running `tabtab uninstall serverless`[m
[32m+[m[32m[[ -f /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh[m
[32m+[m[32m# tabtab source for sls package[m
[32m+[m[32m# uninstall by removing these lines or running `tabtab uninstall sls`[m
[32m+[m[32m[[ -f /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh[m
[32m+[m[32m# tabtab source for slss package[m
[32m+[m[32m# uninstall by removing these lines or running `tabtab uninstall slss`[m
[32m+[m[32m[[ -f /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /tmp/yaourt-tmp-luis/aur-nodejs-serverless/pkg/nodejs-serverless/usr/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh[m
\ No newline at end of file[m
