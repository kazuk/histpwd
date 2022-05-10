cd() { 
    builtin cd "$@" && chpwd; 
}
pushd() {
    builtin pushd "$@" && chpwd; 
}
popd() {
    builtin popd "$@" && chpwd;
}
chpwd() {
    history -a
    mkdir -p "${HOME}/.bash_history.d${PWD}"
    HISTFILE="${HOME}/.bash_history.d${PWD}/.bash_history"
    # FOR DEBUG
    # echo "HISTORY FILE is ${HISTFILE}"
    touch ${HISTFILE}
    history -r
}

histpwd_init() {
    mkdir -p "${HOME}/.bash_history.d${PWD}"
    HISTFILE="${HOME}/.bash_history.d${PWD}/.bash_history"

}