# Oxodao's Archlinux setup

## Initial setup

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
