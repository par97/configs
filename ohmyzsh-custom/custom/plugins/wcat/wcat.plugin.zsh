# ------------------------------------------------------------------------------
# Description
# -----------
# insert "wcat" to the beginning of line
# ------------------------------------------------------------------------------
# Authors
# -------
# jacklu
# this is written using the similar function in the sudo plugin 
# ------------------------------------------------------------------------------

wcat-command-line() {
    [[ -z $BUFFER ]] && LBUFFER="$(fc -ln -1)"

    # Save beginning space
    local WHITESPACE=""
    if [[ ${LBUFFER:0:1} = " " ]]; then
        WHITESPACE=" "
        LBUFFER="${LBUFFER:1}"
    fi

    # Preserve beginning space
    LBUFFER="wcat ${WHITESPACE}${LBUFFER}"
}

wcat(){
    loc=$(which $1)
    if [ -f "$loc" ]; then
        cat "$loc"
    else
        echo "can not find file: $1"
    fi
}

zle -N wcat-command-line

# Defined shortcut keys: ``
bindkey -M emacs '``' wcat-command-line
bindkey -M vicmd '``' wcat-command-line
bindkey -M viins '``' wcat-command-line
