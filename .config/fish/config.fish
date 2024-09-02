if status is-interactive
    # Commands to run in interactive sessions can go here
  neofetch
end

if status --is-login; and test -z "$DISPLAY"; and test "$XDG_VTNR" -eq 1
	dhcpcd
  exec startx
end

zoxide init --cmd cd fish | source
