if status is-interactive
    # Commands to run in interactive sessions can go here
  neofetch
end

if status --is-login; and test -z "$DISPLAY"; and test "$XDG_VTNR" -eq 1
	exec startx
end

fish_add_path /opt/i686-elf-gdb/bin/
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

zoxide init --cmd cd fish | source
set -x DEBUGINFOD_URLS "https://debuginfod.archlinux.org"
starship init fish | source
