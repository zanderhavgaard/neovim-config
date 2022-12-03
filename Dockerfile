FROM archlinux:latest

USER root

# install packages and setup non-root user with sudo privileges without password
RUN \
    pacman --noconfirm --needed -Sy \
        sudo base-devel git zsh python python-pip ctags libnotify \
        docker docker-compose \
        bat exa prettyping fzf fd ncdu tldr ripgrep ranger tmux \
        ansible-lint hub github-cli  \
        jq zip unzip moreutils shellcheck yamllint tree shfmt \
        neofetch figlet zoxide \
        npm starship && \
    pacman --noconfirm -Scc && \
    rm -rf /var/cache/pacman && \
    groupadd -g 1000 zcli && \
    useradd --shell /bin/zsh --create-home -g zcli -u 1000 zcli && \
    echo "zcli ALL=(ALL) NOPASSWD: ALL" > "/etc/sudoers.d/zcli_sudo" && \
    mkdir /workspace && \
    chown -R 1000:1000 /workspace

USER zcli

WORKDIR /home/zcli

# install some pip packages
RUN \
    pip install --no-cache-dir --user --upgrade pynvim neovim-remote msgpack yamlfix

# build paru aur helper
RUN \
    git clone https://aur.archlinux.org/paru.git && \
    cd paru && \
    makepkg --noconfirm --needed --syncdeps --rmdeps --clean --install && \
    # cleanup
    sudo pacman --noconfirm -Scc && \
    sudo rm -rf /home/zcli/paru /home/zcli/.cargo /home/zcli/.cache/* /var/cache/pacman

# use paru to install AUR packages
RUN \
    paru --noconfirm --needed --removemake --cleanafter -S pfetch antigen logo-ls nitch && \
    paru --noconfirm --needed --removemake --cleanafter -S tree-sitter-git && \
    paru --noconfirm --needed --removemake --cleanafter -S neovim-git && \
    # cleanup
    sudo pacman --noconfirm -Scc && \
    sudo rm -rf /home/zcli/paru /home/zcli/.cargo /home/zcli/.cache/* /var/cache/pacman

RUN \
    git clone https://github.com/wbthomason/packer.nvim\
     /home/zcli/.local/share/nvim/site/pack/packer/start/packer.nvim

COPY --chown=zcli:zcli init.lua  /home/zcli/.config/nvim/init.lua
COPY --chown=zcli:zcli lua       /home/zcli/.config/nvim/lua
COPY --chown=zcli:zcli vimscript /home/zcli/.config/nvim/vimscript
COPY --chown=zcli:zcli docker_entrypoint.sh /home/zcli/docker_entrypoint.sh

# install plugins and compile treesitter modules, both are asynchrounous
# so sleep is HACK to give them time to run
# TODO do this in a better way...
RUN \
    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' && \
    nvim --headless +UpdateRemotePlugins +qa && \
    nvim --headless +TSUpdateSync +qa

# get some env config files
RUN \
    git clone https://github.com/zanderhavgaard/dotfiles && \
    cp dotfiles/.zshrc . && \
    cp dotfiles/.aliases . && \
    cp dotfiles/.gitconfig . && \
    touch .env && \
    echo "export LANG='en_US.UTF-8'" >> .env && \
    echo "export EDITOR='nvim'" >> .env && \
    echo "export PATH=\"$PATH:/home/zcli/.local/bin\"" >> .env && \
    rm -rf dotfiles && \
    touch .env-local && \
    # initialize zsh plugins
    zsh /home/zcli/.zshrc || echo "okay to fail ..."

WORKDIR /workspace

CMD ["zsh","/home/zcli/docker_entrypoint.sh"]
