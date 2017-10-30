#export GOPATH=$HOME/go
export GOPATH=$HOME/go:/Users/andrew/go/src/git.dev.kochava.com/core/watson/vendor:/Users/andrew/go/src/git.dev.kochava.com/core/watson
export GOROOT=/usr/local/go
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS:~/go/bin
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

PS1='[\u@\h \w]\$ '

alias atom="atom ~/go/src/git.dev.kochava.com ~/go/src/github.com ~/public_html ~/Documents"

alias dcub="screen -S docker -dm docker-compose up --build && screen -rx"
alias dcu="screen -S docker -dm docker-compose up && screen -rx"
alias dcd="docker-compose down"
