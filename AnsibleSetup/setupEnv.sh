#!/usr/bin/env bash

ansible-playbook ansbl.yml --tags=node
wait $!
source ~/.bashrc
ansible-playbook ansbl.yml --tags=npm,tmux,misc,nvim
wait $!
source ~/.bashrc
