autoload -U colors
autoload -U compinit

unsetopt menu_complete
unsetopt flowcontrol
setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt no_list_ambiguous

colors
compinit

DIRSTACKSIZE=8
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
MAILCHECK=0





source ~/.config/zsh/theme/bira.zsh
source ~/.config/zsh/lib/prompt_info_functions.zsh



source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


  alias v='neovide'
  alias search='doas find / -name'
  alias note='nvim ~/documents/record-vault'
  alias reboot='doas reboot'
  alias poweroff='doas poweroff'
  alias ls='lsd'
  alias update='doas pacman -Syu --noconfirm'
  alias syc='doas pacman -Syy'
  alias zsrc='source ~/.zshrc'


