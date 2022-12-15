# SPDX-License-Identifier: MIT
plenvdirs=("$HOME/.plenv" "$XDG_DATA_HOME/plenv" "/usr/local/bin/plenv" "/usr/local/plenv" "/opt/plenv")

FOUND_PLENV=0
for plenvdir in $plenvdirs; do
    if [[ -d "${plenvdir}/bin" ]]; then
        FOUND_PLENV=1
        break
    fi
done

if [[ $FOUND_PLENV -eq 0 ]]; then
    if (( $+commands[brew] )) && plenvdir="$(brew --prefix plenv)"; then
        [[ -d "${plenvdir}/bin" ]] && FOUND_PLENV=1
    fi
fi

if [[ $FOUND_PLENV -eq 1 ]]; then
    (( $+commands[plenv] )) || export PATH="${plenvdir}/bin:$PATH"
    eval "$(plenv init -)"

    function plenv_prompt_info() {
      local version="$(plenv version-name 2>/dev/null)"
      echo "${version:gs/%/%%}"
    }

    if [[ -d "${plenvdir}/versions" ]]; then
        export PLENV_ROOT=$plenvdir
    fi
else
    function plenv_prompt_info() {
      echo "Not Implemented"
    }
fi

unset plenvdir plenvdirs FOUND_PLENV
