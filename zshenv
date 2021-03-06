export ANDROID_HOME=~/development/tools/android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ARDUINO_PATH=/home/luis/development/tools/arduino/1.8.5
export BROWSER=$(which firefox)
export EDITOR=$(which nvim)
export GOPATH=~/development/tools/go/packages
export HELM_HOME=$HOME/.helm
export PATH="$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.bloop:$PATH"
export RUST_SRC_PATH=$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
export SSH_AGENT_PID=`ssh-agent | grep SSH_AGENT_PID | cut -f1 -d';' | cut -f2 -d'='`
export SSH_AUTH_SOCK=`ssh-agent | grep SSH_AUTH_SOCK | cut -f1 -d';' | cut -f2 -d'='`
