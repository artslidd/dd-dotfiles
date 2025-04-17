# Add volta to PATH
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Add yarn to PATH, in front of volta
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Add cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/arthur.belleville/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump) 

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"


export EDITOR='vim'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias yd="yarn devlocal"
alias yt="yarn test:unit --watch"
alias ytl="yarn test:unit javascript/datadog/logs --watch"
alias yta="yarn test:unit javascript/datadog/audit --watch"
alias yts="yarn test:unit javascript/datadog/organization-settings --watch"
alias ytall="yarn test:unit javascript/datadog/logs javascript/datadog/organization-settings/sensitive-data-scanner javascript/datadog/audit --watch"
alias gpr="gpsup && dd-pr"
alias gt="fp"
alias gtc="gt commit c -m"

GPG_TTY=$(tty)
export GPG_TTY

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# BEGIN ANSIBLE MANAGED BLOCK
# Add homebrew binaries to the path.
export PATH="/usr/local/bin:${PATH?}"

# Force certain more-secure behaviours from homebrew
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_DIR=/usr/local
export HOMEBREW_BIN=/usr/local/bin

# Load ruby shims
# eval "$(rbenv init -)"

# Prefer GNU binaries to Macintosh binaries.
export PATH="/usr/local/opt/coreutils/libexec/gnubin:${PATH}"

# Add AWS CLI to PATH
export PATH="/usr/local/opt/awscli@1/bin:$PATH"

# Add datadog devtools binaries to the PATH
export PATH="${HOME?}/dd/devtools/bin:${PATH?}"

# Point GOPATH to our go sources
export GOPATH="${HOME?}/go"

# Add binaries that are go install-ed to PATH
export PATH="${GOPATH?}/bin:${PATH?}"

# Point DATADOG_ROOT to ~/dd symlink
export DATADOG_ROOT="${HOME?}/dd"

# Tell the devenv vm to mount $GOPATH/src rather than just dd-go
export MOUNT_ALL_GO_SRC=1

# store key in the login keychain instead of aws-vault managing a hidden keychain
export AWS_VAULT_KEYCHAIN_NAME=login

# tweak session times so you don't have to re-enter passwords every 5min
export AWS_SESSION_TTL=24h
export AWS_ASSUME_ROLE_TTL=1h

# Helm switch from storing objects in kubernetes configmaps to
# secrets by default, but we still use the old default.
export HELM_DRIVER=configmap

# Go 1.16+ sets GO111MODULE to off by default with the intention to
# remove it in Go 1.18, which breaks projects using the dep tool.
# https://blog.golang.org/go116-module-changes
export GO111MODULE=auto
export GOPRIVATE=github.com/DataDog
# END ANSIBLE MANAGED BLOCK

# Load nodenv automatically by appending
# the following to ~/.zshrc:
# eval "$(nodenv init -)"
export GITLAB_TOKEN=$(security find-generic-password -a ${USER} -s gitlab_token -w)

# workspaces
export WORKSPACE="arthur-belleville"
export WORKSPACE_EU="arthur-belleville-eu"

# google-cloud-sdk brew caveat
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# BEGIN ANSIBLE MANAGED BLOCK
# Add homebrew binaries to the path.
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:${PATH?}"

# Force certain more-secure behaviours from homebrew
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_DIR=/opt/homebrew
export HOMEBREW_BIN=/opt/homebrew/bin

# Load python shims
eval "$(pyenv init -)"

# Load ruby shims
eval "$(rbenv init -)"

# Prefer GNU binaries to Macintosh binaries.
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:${PATH}"

# Add AWS CLI to PATH
export PATH="/opt/homebrew/opt/awscli@1/bin:$PATH"

# Add datadog devtools binaries to the PATH
export PATH="${HOME?}/dd/devtools/bin:${PATH?}"

# Point GOPATH to our go sources
export GOPATH="${HOME?}/go"

# Add binaries that are go install-ed to PATH
export PATH="${GOPATH?}/bin:${PATH?}"

# Point DATADOG_ROOT to ~/dd symlink
export DATADOG_ROOT="${HOME?}/dd"

# Tell the devenv vm to mount $GOPATH/src rather than just dd-go
export MOUNT_ALL_GO_SRC=1

# store key in the login keychain instead of aws-vault managing a hidden keychain
export AWS_VAULT_KEYCHAIN_NAME=login

# tweak session times so you don't have to re-enter passwords every 5min
export AWS_SESSION_TTL=24h
export AWS_ASSUME_ROLE_TTL=1h

# Helm switch from storing objects in kubernetes configmaps to
# secrets by default, but we still use the old default.
export HELM_DRIVER=configmap

# Go 1.16+ sets GO111MODULE to off by default with the intention to
# remove it in Go 1.18, which breaks projects using the dep tool.
# https://blog.golang.org/go116-module-changes
export GO111MODULE=auto
export GOPRIVATE=github.com/DataDog
export GOPROXY=binaries.ddbuild.io,https://proxy.golang.org,direct
export GONOSUMDB=github.com/DataDog,go.ddbuild.io

# Configure Go to pull go.ddbuild.io packages.
export GOPROXY="binaries.ddbuild.io,proxy.golang.org,direct"
export GONOSUMDB="github.com/DataDog,go.ddbuild.io"
# END ANSIBLE MANAGED BLOCK

# Enchant for datadog-api-spec repo
export PYENCHANT_LIBRARY_PATH=/opt/homebrew/lib/libenchant-2.dylib

# Node options
export NODE_OPTIONS="--max-old-space-size=25000"

# Set SSH_AUTH_SOCK to the launchd-managed ssh-agent socket (com.openssh.ssh-agent).
export SSH_AUTH_SOCK=$(launchctl asuser $(id -u) launchctl getenv SSH_AUTH_SOCK)

# Load SSH keys from the keychain if keychain is empty.
ssh-add -l > /dev/null || ssh-add --apple-load-keychain 2> /dev/null

# dd-go
export PKG_CONFIG_PATH="$(brew --prefix)/opt/openssl/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="$(brew --prefix)/lib/pkgconfig:$PKG_CONFIG_PATH"
export CPATH="$(brew --prefix)/include:$CPATH"
export LIBRARY_PATH="$(brew --prefix)/lib:$LIBRARY_PATH"
export GITLAB_TOKEN=$(security find-generic-password -a ${USER} -s gitlab_token -w)

eval "$(starship init zsh)"
ulimit -n 32768

# eval "$(zellij setup --generate-auto-start zsh)"

# Helix
HELIX_RUNTIME=~/src/helix/runtime

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# store key in the login keychain instead of aws-vault managing a hidden keychain
export AWS_VAULT_KEYCHAIN_NAME=login

# tweak session times so you dont have to re-enter passwords every 5min
export AWS_SESSION_TTL=24h
export AWS_ASSUME_ROLE_TTL=1h

# sublime text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# bun completions
[ -s "/Users/arthur.belleville/.bun/_bun" ] && source "/Users/arthur.belleville/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Mongo port forward
function mongo-port-forward() {
        export FILE="${DATADOG_ROOT}/k8s-resources/k8s/mongo/values/environments/_._._.$1.dog.yaml"
        if [ ! -f "$FILE" ]; then
                echo "${FILE} does not exists"
                return 1
        else
                echo "${FILE} exists"
        fi
        cluster=$(yq '.mongoRestoreReplica.k8sCluster' "$FILE")
        namespace=$(yq '.mongoRestoreReplica.namespace' "$FILE")
        echo "Switching to cluster ${cluster} and namespace ${namespace}"
        kubectl --context ${cluster} --namespace ${namespace} port-forward mongo-restore-replica-0 27017:27017
}

# Fixes UTF-8 issue: https://github.com/withfig/fig/issues/2484#issuecomment-2123362480
export LC_ALL="en_US.UTF-8"
export LANG="en_US@UTF-8"

# DogQ alias
alias kdogq='kubectl exec -n dogq $(kubectl get -n dogq pod -l app=dogq -o=name --field-selector status.phase=Running) -it -- /bin/bash'

alias k='kubectl'

# pnpm
export PNPM_HOME="/Users/arthur.belleville/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"
[ -f ~/.config/gitsign/include.sh ] && source ~/.config/gitsign/include.sh
