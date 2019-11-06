# SSH Bouncer

A fake SSH daemon which runs on any number of ports, listens for clients,
sends them a fake SSH version infos and then keeps the connections open forever
to simulate a non-responsive SSH daemon.

This is useful when you run sshd on a non-default port but want to pretend
that SSH is running on a standard port.

## Modif 
- Created fake ssh-bouncer home folder for chroot fake user file system (Note: should find better)
- Added install.sh for brainless install on debian system type.

## TODO 
Fix missing error handling in line 138 and fix log system for more fun.

## License

This daemon is MIT licensed (see `ssh-bouncer.c`), copyright &copy; 2012 Torsten Becker <torsten.becker@gmail.com>.
