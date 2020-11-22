FROM archlinux:latest

RUN \
    # update repositories and upgrade packages
    pacman --quiet --noconfirm -Syyyuuuu && \
    # install zsh, neovim and runtimes for nvim plugins
    pacman --quiet --noconfirm -S \
        base-devel git zsh neovim python python-pip ctags libnotify && \
    # install misc. cli tools
    pacman --quiet --noconfirm -S \
        bat exa prettyping fzf \
        fd ncdu tldr ripgrep ranger tmux \
        the_silver_searcher \
        jq figlet zip unzip moreutils \
        shellcheck yamllint \
        fortune-mod && \
    # clean pacman cache
    pacman --quiet --noconfirm -Scc && \
    # get vim-plug plugin manager
    curl -fLo /home/zcli/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    # get the antigen plugin manager script
    mkdir -p /usr/share/zsh/share && \
    curl -L git.io/antigen > /usr/share/zsh/share/antigen.zsh && \
    # add non-root user
    useradd -m zcli && \
    # set the correct shell
    chsh -s /bin/zsh zcli

COPY init.vim /home/zcli/.config/nvim/init.vim
COPY docker_entrypoint.sh /home/zcli/docker_entrypoint.sh

RUN chown -R zcli:zcli /home/zcli

WORKDIR /home/zcli

USER zcli

RUN \
    # install python nvim binding and dependencies
    pip install --user --upgrade pynvim neovim-remote msgpack && \
    # install nvim plugins
    nvim --headless +PlugUpdate +UpdateRemotePlugins +qa && \
    # get pfetch script
    curl -fLo /home/zcli/.local/bin/pfetch --create-dirs \
        https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch && \
    chmod +x /home/zcli/.local/bin/pfetch && \
    # get some env config files
    git clone https://github.com/zanderhavgaard/dotfiles && \
    cp dotfiles/.zshrc . && \
    cp dotfiles/.aliases . && \
    cp dotfiles/.gitconfig . && \
    touch .env && \
    echo "export EDITOR='nvim'" >> .env && \
    echo "export PATH=\"$PATH:/home/zcli/.local/bin\"" >> .env && \
    rm -rf dotfiles && \
    # touch some env files
    touch .env-local && \
    # initialize zsh plugins
    zsh /home/zcli/.zshrc || echo "okay to fail ..." && \
    # remove cache files
    rm -rf /home/zcli/.cache/*

WORKDIR /

CMD ["bash","/home/zcli/docker_entrypoint.sh"]
