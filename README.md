# Arch Ansible Install

## Initial Setup
Everything in this section relates to the ansible setup in the base directory
This is a custom version of https://github.com/jsf9k/ansible-arch-install/

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

## Post-install setup
Everything in this section relates to the ansible setup in the postinstall directory

- create folder `files/fonts` and put all Windows fonts in it (Not given for legal reasons)
- `ssh-copy-id USERNAME@HOST`
- `ansible-playbook -i inventory.yml setup.yml`
