export PS1="$ \u \w "

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

alias vm='homestead up && homestead ssh'
