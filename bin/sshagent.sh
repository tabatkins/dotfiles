if [ -z "$__IN_SSHAGENT_SUBSHELL" ]; then
	{ eval `ssh-agent -s`; } &>/dev/null
	ssh-add -q ~/.ssh/sshkey
	__IN_SSHAGENT_SUBSHELL=true $SHELL
	ssh-agent -k
	exit
fi;