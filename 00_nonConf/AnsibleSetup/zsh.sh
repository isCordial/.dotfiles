#!/usr/bin/env bash

ansible-playbook ansbl.yml --tags=zsh
wait $!
zsh
