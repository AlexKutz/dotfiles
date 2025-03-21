#!/bin/bash

log_message() {
    echo "[INFO] $1"
}

error_message() {
    echo "[ERROR] $1"
}

update_system() {
	log_message "System updating..."
	pacman -Syu --noconfirm
}

function install_package {
	log_message "Installing: $1"
	pacman -S --noconfirm "$1" || {
		error_message "Error"
		return 1
	}
}

main() {
	echo "alex ALL=(ALL) NOPASSWD: /sbin/poweroff, /sbin/reboot" | sudo tee /etc/sudoers.d/sudo-poweroff

	update_system()
	install_package sudo

	# font for terminal and status bar
	install_package "ttf-jetbrains-mono"

	# font with icons
	install_package ttf-font-awesome

	# better i3 status bar
	install_package i3blocks

	# for easier battery charge display
	install_package acpi

	# for open images
	install_package feh

	# package for mount android fs
	install_package android-file-transfer
	
	install_package navi
	install_package thefuck
	install_package fastfetch

	curl -sS https://raw.githubusercontent.com/ekkinox/yai/main/install.sh | bash

	git clone https://github.com/Hendrikto/backlight_control.git
	cd backlight_control
	sudo make install

	# https://github.com/chubin/cheat.sh
	curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh

}


# add swap file
