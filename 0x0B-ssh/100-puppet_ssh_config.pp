#!/usr/bin/env bash
# a script showing how to use pupet to make changes to a file


file {  'etc/ssh/ssh_config':
	 ensure => present.

content =>"

	#SSH Client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	".
}
