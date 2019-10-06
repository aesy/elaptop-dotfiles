#_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true
#export PATH="$HOME/.cargo/bin:$PATH"

export VISUAL="nano"
export EDITOR="nano"
export PAGER="less"
export TERMINAL="termite"
export BROWSER="firefox-developer-edition"

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Fix JVM GUI (such as IntelliJ) render issues
export _JAVA_AWT_WM_NONREPARENTING=1
