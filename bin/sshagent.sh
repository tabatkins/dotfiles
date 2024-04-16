{ eval `ssh-agent -s`; } &>/dev/null
ssh-add -q ~/.ssh/sshkey
$SHELL
ssh-agent -k
exit
