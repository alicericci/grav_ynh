#!/bin/bash

# Execute a command as another user
# usage: exec_as USER COMMAND [ARG ...]
exec_as() {
	local USER=$1
	shift 1

	if [[ $USER = $(whoami) ]]
	then
		eval $@
	else
		sudo -u "$USER" $@
	fi
}

extra_pkg_dependencies="php7.2-fpm php7.2-cli php7.2-gd php7.2-mysql php7.2-xml php7.2-ldap php7.2-mbstring php7.2-json php7.2-simplexml php7.2-curl php7.2-mbstring php7.2-ctype php7.2-zip"
