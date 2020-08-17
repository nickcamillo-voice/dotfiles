# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# zshrc by Nick Camillo
# http://dev.nickcamillo.com/portfolio
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PATH Definitions
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  export ZSH=$HOME/.oh-my-zsh
  export PATH=/Users/nick.camillo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Plugins
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  source ~/dotfiles/antigen.zsh
  antigen use oh-my-zsh

  antigen bundle git
  antigen bundle history
  antigen bundle history-substring-search
  antigen bundle terminallap
  antigen bundle zdharma/fast-syntax-highlighting
  antigen bundle tmux

  antigen theme geometry-zsh/geometry
  antigen apply

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Aliases
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  alias b="cd .."
  alias e="exit"
  alias reload="source ~/.zshrc; tmux source-file .tmux.conf"
  alias dotfiles="cd ~/dotfiles"
  alias tmux="tmux attach"
  alias cat="bat"
  alias clear="clear; echoGnome"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Colors
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  green="$(tput setaf 2)"
  blue="$(tput setaf 4)"
  teal="$(tput setaf 6)"
  white="$(tput setaf 7)"
  grey="$(tput sgr0)"
  pur="$(tput setaf 7)"
  red="$(tput setaf 1)"
  tan="$(tput setaf 3)"
  default="$(tput sgr0)"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Gnome Greeting
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echoGnome() {
    echo -e "$teal".............."$red"OCC"$teal"....................................................................
    echo -e "$teal"............"$red"OO8OC"$teal"....................................................................
    echo -e "$teal"............."$red"OO88OOO"$teal".........................................0000....................
    echo -e "$teal"..............."$red"OOCCC"$teal".......................................000000000.................
    echo -e "$teal"..............."$red"OOCCCCCC"$teal"..................................00000......0................
    echo -e "$teal"............"$red"OO8OOCCCCoC"$teal".................................00000........................
    echo -e "$teal"............"$red"OO8OCCCCCCCCC"$teal"..............................00000.........................
    echo -e "$teal".........."$red"OO88OCCCCCCCCCC"$teal"..............................00000.........................
    echo -e "$teal"........."$red"OO8OCCCCCCCCoCCCOOO"$teal"...........................00000.........................
    echo -e "$teal"........."$red"OO8OOCCCCCCCCCCCCCCCCC"$teal".........................00000.........0..............
    echo -e "$teal"........"$red"8OOCCCCCCCCCCCCCCCCoCCCCCO"$teal"........................00000......00..............
    echo -e "$teal"......"$red"OO8OCCCCCCCCCCCCCCCCCCCCCCCCCCO"$teal"........................000000000...............
    echo -e "$teal"......"$red"OO8OCCCC"$tan"88888888888888888"$red"CoCCCO"$teal"...........................0000.................
    echo -e "$teal"......"$red"OOOooCOO"$tan"O"$white"@@"$grey"OOO"$tan"88888"$white"@@@"$grey"OOO"$red"OOoooO"$teal"................................................
    echo -e "$teal"......"$tan"88"$pur"CccC"$tan"88"$white"@@@"$blue"OOO"$tan"88888"$white"@@@"$blue"OOO"$tan"88"$pur"CccC"$tan"88"$teal"..............................................
    echo -e "$teal"..."$pur"ccc"$tan"88"$pur"CccC"$tan"888888880000088888888"$pur"CccC"$tan"88"$pur"Ccc"$teal"...........................................
    echo -e "$teal"..."$pur"ccc"$tan"88"$pur"CccC"$tan"888888880000088888888"$pur"CccC"$tan"88"$pur"Ccc"$teal"...........................................
    echo -e "$teal"......"$pur"cccccccccccccccccccccccccccccccccO"$teal".............................................
    echo -e "$teal"..."$pur"ccccccccccccccccc"$tan"88888"$pur"ccccccccccccccccc"$teal"...........................................
    echo -e "$teal"..."$pur"ccc"$blue"::"$pur"ccccccccccccccccccccccccccccc"$blue"::C"$teal".............................................
    echo -e "$teal"......"$blue"::"$pur"ccccccccccccccccccccccccccccc"$blue"::ccc"$teal"...........................................
    echo -e "$teal"..."$blue"cccccc::"$pur"ccccccccccccccccccccccc"$blue":::::cccccc"$teal"........................................
    echo -e "$teal"..."$blue"ccccccccc::"$pur"ccccccccccccccccc"$blue":::::ccccccccc"$teal"........................................
    echo -e "$teal"..."$blue"cccccccccccc:::::ccccc"$blue":::::::::ccccccc:ccc"$teal"........................................
  }

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Greeting Logic
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echoGnome;

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# FZF
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

source $ZSH/oh-my-zsh.sh
