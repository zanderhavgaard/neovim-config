FROM archlinux:latest

USER root

# install packages and setup non-root user with sudo privileges without password
RUN \
    pacman --noconfirm --needed -Sy \
        sudo base-devel git zsh python python-pip ctags libnotify \
        docker docker-compose \
        bat exa prettyping fzf fd ncdu tldr ripgrep ranger tmux \
        ansible-lint hub github-cli  \
        jq zip unzip moreutils shellcheck yamllint tree  \
        neofetch figlet && \
    pacman --noconfirm -Scc && \
    rm -rf /var/cache/pacman && \
    groupadd -g 1000 zcli && \
    useradd --shell /bin/zsh --create-home -g zcli -u 1000 zcli && \
    echo "zcli ALL=(ALL) NOPASSWD: ALL" > "/etc/sudoers.d/zcli_sudo" && \
    mkdir /workspace && \
    chown -R 1000:1000 /workspace

USER zcli

WORKDIR /home/zcli

COPY init.vim /home/zcli/.config/nvim/init.vim
COPY docker_entrypoint.sh /home/zcli/docker_entrypoint.sh

RUN \
    # build paru aur helper
    git clone https://aur.archlinux.org/paru.git && \
    cd paru && \
    makepkg --noconfirm --needed --syncdeps --rmdeps --clean --install && \
    # use paru to install AUR packages
    paru --noconfirm --needed --removemake --cleanafter -S pfetch antigen neovim-git && \
    # cleanup
    sudo pacman --noconfirm -Scc && \
    sudo rm -rf /home/zcli/paru /home/zcli/.cargo /home/zcli/.cache/* /var/cache/pacman

RUN \
    # get vim-plug plugin manager
    curl -fLo /home/zcli/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    # install python nvim binding and dependencies
    pip install --user --upgrade pynvim neovim-remote msgpack && \
    # install nvim plugins
    nvim --headless +PlugUpdate +UpdateRemotePlugins +qa

RUN \
    # get some env config files
    git clone https://github.com/zanderhavgaard/dotfiles && \
    cp dotfiles/.zshrc . && \
    cp dotfiles/.aliases . && \
    cp dotfiles/.gitconfig . && \
    touch .env && \
    echo "export EDITOR='nvim'" >> .env && \
    echo "export PATH=\"$PATH:/home/zcli/.local/bin\"" >> .env && \
    rm -rf dotfiles && \
    touch .env-local && \
    # initialize zsh plugins
    zsh /home/zcli/.zshrc || echo "okay to fail ..."

WORKDIR /workspace

CMD ["zsh","/home/zcli/docker_entrypoint.sh"]
