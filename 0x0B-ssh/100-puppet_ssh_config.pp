#!/usr/bin/env bash
# using puppet to make configuration changes

file{ 'etc/ssh/ssh_config':
	ensure => present,

content =>"
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	"
}
