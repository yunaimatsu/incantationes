# alias of alias
a() {
  alias "$1"="$2"
}

# exec `^.e$`
a be 'bundle exec'
a de 'docker exec'

# log `^.l$`
a gl 'git log'
a dl 'docker logs'

# config `^.c$`
a gc 'git config'
a bc 'bundle config'
a nc 'npm config'
a pc 'pip config'

# ps `^.p$`
a dp='docker ps'

# zshrc
a nz 'nano ~/.zshrc'
a sz 'source ~/.zshrc'