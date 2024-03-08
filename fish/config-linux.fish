if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end


# homebrew
set -gx HOMEBREW_PREFIX "$HOME/homebrew";
set -gx HOMEBREW_CELLAR "$HOME/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "$HOME/homebrew";
set -q PATH; or set PATH ''; set -gx PATH "$HOME/homebrew/bin" "$HOME/homebrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "$HOME/homebrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "$HOME/homebrew/share/info" $INFOPATH;

