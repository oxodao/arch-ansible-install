# Arch Ansible Install

This is a custom version of https://github.com/jsf9k/ansible-arch-install/

## Setup
- `yay -S sshpass mkpasswd`
- Clone this repo
- Set your machine up in `inventory.yml`
- Edit group_vars/all.yml and set the variables as you need
- `./make_files.sh`
- On your machine to be setup:
    - Boot arch install media
    - `passwd # Set the root password to 'password'`
    - `systemctl restart sshd`
- `ansible-playbook -i inventory.yml setup.yml`

## Next

The machine is ready in a CLI state. To have a fully fledged desktop you can now use this repo: https://github.com/oxodao/ansible-arch-desktop
