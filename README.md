# gssh

A wrapper script for ssh that sets up gpg-agent forwarding to allow you to sign git commits with gpg on your local machine.
(Other use of gpg via ssh is also possible, but requires use of a gpg wrapper on the remote machine.)

Installation:

* Place gssh on the machine you are connecting from in a directory in your PATH.
* Connect to a remote machine using the same argument syntax as for ssh, e.g..:
  ```
  gssh user@example.com
  ```
* Modify your global git configuration to use a wrapper for gpg to sign your commits.
  The code to do this is loaded into `LD`
