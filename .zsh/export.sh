export INSTALL_DIR=${INSTALL_DIR:-$HOME/local}
export GEM_HOME=${GEM_HOME:-$INSTALL_DIR/ruby/gems}
export GEM_PATH=${GEM_PATH:-$GEM_HOME}
export NPM_HOME=${NPM_HOME:-$INSTALL_DIR/npm}
export NODE_PATH=${NODE_PATH:-./node_modules:$HOME/local/npm/lib/node_modules}
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
export PATH="/opt/homebrew/bin/:$GEM_HOME/bin:$NPM_HOME/bin:$PATH"
