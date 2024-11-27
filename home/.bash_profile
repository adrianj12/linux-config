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
