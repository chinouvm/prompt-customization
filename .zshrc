# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# ALIAS COMMANDS

alias grep='grep --color'

# set an icon based on the distro https://github.com/lukas-w/font-logos
case $_distro in
    *)                ICON="";;
esac

export STARSHIP_DISTRO="$ICON"

# Load Starship
eval "$(starship init zsh)"
