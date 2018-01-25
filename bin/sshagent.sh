eval `ssh-agent -s`
ssh-add ~/.ssh/sshkey
$SHELL
ssh-agent -k
exit