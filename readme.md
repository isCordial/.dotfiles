# .dotfiles
Goal: to reproduce my dev env on debian (native + WSL) and macos

## Todos
- **v1 Outline**
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


## Run process (roughly)
1. Bash install ansible
    - ppa on docker?
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
