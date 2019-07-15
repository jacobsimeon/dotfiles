HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/Users/jacobmorris/.zshrc'
autoload -Uz compinit
compinit

autoload -U colors
colors

export CLICOLOR=1
export VISUAL=/usr/local/bin/vim
export EDITOR=$VISUAL

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}

# No arguments: `git status`
# With arguments: acts like `git`
g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}
compdef g=git

setopt promptsubst

PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info) $ '

alias ll="ls -al"
alias b="bundle"
alias cart="carthage"
alias fast="bundle exec fastlane"
alias u="bin/update-api-keys-staging"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GIGYA_DATACENTER='us1'
export GIGYA_USER_KEY='AGKzffla/h+j'
export GIGYA_USER_SECRET='5CfKgryVnOw5bDvdjKowKGnEVNocZpLv'
export GIGYA_API_KEY='3_uancXaARBz-Oa1aR3pu3Z9-HsE7Lt-5wnHt6kWmXwd_r5b6N504tsBpEuPXQLrsW'
export GIGYA_API_KEY_PROD='3_386ubdMQvYYepXp_ANZR1PPRXco15aBkb0sEPwtcbeAjFsnUnic7vpup6t0AMUiM'
export GIGYA_API_KEY_DEV='3_uancXaARBz-Oa1aR3pu3Z9-HsE7Lt-5wnHt6kWmXwd_r5b6N504tsBpEuPXQLrsW'
export GIGYA_API_KEY_STAGING='3_5o5b8JbjmlTQzGv-zqhEEH1uxrtVB5_G0bAepFk8BL-PjkfBnQZdx-eHibCnez2e'
export GOOGLE_MAPS_KEY="AIzaSyCucvg58uPwO-01UiXzr4BwXwvART6lMtQ"
export GOOGLE_MAPS_SECRET="UwNg-WlEfIC_M8-YMXGYsLfoAvY="
export GOOGLE_PLACES_API_KEY='AIzaSyClqFNy_Ss-Jn7wuD7phQjLuDVCedhA9Ic'
export FIREBASE_PROJECT_ID='154101917899'
export FIREBASE_AUTHORIZATION_KEY='AAAAI-EwqMs:APA91bGGrfDmlCNF-VT8hT-Wl0qLEwwzlA-gTfkM4ZwCzIZ0YbORHu7lR90rBenRvwkpoLDoiSOCEMxh8k4kDzUCc3yIji0PDAsK239S_Fb-5EikuK-Y499gizyVRM7KQfVtwueXcbbdOJsIoyENIgvqTSPSiD-tnA'
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
eval "$(rbenv init -)"
