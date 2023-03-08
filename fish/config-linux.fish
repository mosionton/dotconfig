if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

set -xg CI_COMMIT_REF_NAME clyde
set -xg CI_COMMIT_SHORT_SHA clyde
# homebrew
set -gx HOMEBREW_PREFIX "/home/clyde/homebrew";
set -gx HOMEBREW_CELLAR "/home/clyde/homebrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/home/clyde/homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/home/clyde/homebrew/bin" "/home/clyde/homebrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/clyde/homebrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/clyde/homebrew/share/info" $INFOPATH;
