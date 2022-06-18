# Oxodao's Archlinux setup

## Initial setup

First we'll do the initial setup of the machine, this will install a full archlinux ready to be booted

1. Install the dependencies
```
$ yay -S sshpass mkpasswd
```
2. Clone this repo
3. Generate the password files
```
$ ./make_files.sh
```
4. Start your computer and boot the archiso usb key
    - `$ loadkeys fr`
    - `$ passwd` => Set the password to `password`
    - `$ dhcpcd` => Start the network (Can vary depending on your setup (Ethernet, Wifi, ...))
    - `$ ip addr` => Grab the IP address of your computer
5. Update the `inventory.yml` with your machine's info
6. `$ ansible-playbook -i inventory.yml setup.yml --limit MACHINE_NAME`

## Post-setup
There is a second step because it would be to complicated to do from the archiso.

When the first playbook is done, you can reboot the machine and log-in. You will then need to run the post-setup.

1. Reboot and login
2. Connect to the internet
3. Clone the repository
4. `$ ansible-playbook -i inventory.yml post_setup.yml --limit localhost`