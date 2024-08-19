if [ -f "${HOME}/.bashrc" ]; then
	source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bins if they exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi
if [ -d "${HOME}/.local/bin" ] ; then
    PATH="${HOME}/.local/bin:${PATH}"
fi

# Go code output
PATH="/usr/local/go/bin:${PATH}"

# load python/anaconda config
if [ -f "${HOME}/.bash_python" ]; then
        source "${HOME}/.bash_python"
fi

export PS1='\[\e[38;5;133;1m\]\u\[\e[0m\]@\[\e[38;5;154m\]\H\[\e[0m\](\[\e[38;5;32m\]${CONDA_DEFAULT_ENV:-base}\[\e[0m\]): \w\\$ '

