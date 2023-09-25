#!/usr/bin/env bash
# a script showing how to use pupet to make changes to a file


file_line{'Turn off passwd auth':
path => '/etc/ssh/ssh_config',
line => 'PasswordAuthentication no'
}

file_line{'Declare identity file':
path => '/etc/ssh/ssh_config',
line => 'IdentityFile ~/.ssh/school'

}
