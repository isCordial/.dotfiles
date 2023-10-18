# .dotfiles
Goal: to reproduce my dev env on debian (native + WSL) and macos

## Todos
- **v1 Linux**
    - [x] get ansible setup into its own repo
        - https://github.com/isCordial/ansible
    - [x] finish scaffolding ansible playbooks
    - [ ] For Each: install packages + symlink dotfiles
        - [x] nvim build + install
        - [x] tmux
        - [x] zsh
        - [ ] *Linux*
            - [x] ulauncher
            - [ ] i3 (TBD)
    - [x] ssh store

- **Other**
    - [ ] ansible-pull nuances
    - [ ] Scaffold windows install script
    - [ ] Scaffold mac install script

---

- **Windows**
    - [ ] symlinks + installs
        - [ ] glazeWM cfg
        - [ ] flow launcher
        - [ ] powertoys
    - [ ] WSL2 setup
    - [ ] Misc. Software
        - other install script? (ex. thisiswin11 / chris titus)
        - [ ] OBS
        - [ ] Browsers

- **MacOS**
    - [ ] brew VS apt ansible-playbooks


## Run process (roughly)
1. Bash install ansible
    - "~~ppa on docker?~~
2. `ansible-pull` playbook repo
3. `ansible-playbook local.yml` + args
    - *(order is wip)*
    1. install required packages
    2. clone dotfiles repo
        - recursive?
    3. symlink (bash / dotbot / stow / tbd)


## Stretch goals
- [ ] refine personal tmux-sessionizer / alternative
- [ ] and other scripts

...
???
...
- [?] arch / nix? lul
