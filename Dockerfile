FROM archlinux:latest

RUN \
    # update repositories and upgrade packages
    pacman --quiet --noconfirm -Syyyuuuu && \
    # install zsh, neovim and runtimes for nvim plugins
    pacman --quiet --noconfirm -S \
        base-devel git zsh neovim python python-pip nodejs npm yarn libnotify && \
    # install misc. cli tools
    pacman --quiet --noconfirm -S \
        bat exa prettyping fzf \
        fd ncdu tldr ripgrep ranger tmux \
        jq figlet zip unzip moreutils \
        shellcheck yamllint && \
    # clean pacman cache
    pacman --quiet --noconfirm -Scc && \
    # install nvim node binding
    npm install -g neovim && \
    # get vim-plug plugin manager
    curl -fLo /home/zenv/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    # get the antigen plugin manager script
    mkdir -p /usr/share/zsh/share && \
    curl -L git.io/antigen > /usr/share/zsh/share/antigen.zsh && \
    # add non-root user
    useradd -m zenv && \
    # set the correct shell
    chsh -s /bin/zsh zenv

COPY init.vim /home/zenv/.config/nvim/init.vim

RUN chown -R zenv:zenv /home/zenv

WORKDIR /home/zenv

USER zenv

RUN \
    # install python nvim binding and dependencies
    pip install --user --upgrade pynvim neovim-remote msgpack && \
    # install nvim plugins
    nvim --headless +PlugUpdate +UpdateRemotePlugins +qa && \
    # get pfetch script
    curl -fLo /home/zenv/.local/bin/pfetch --create-dirs \
        https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch && \
    chmod +x /home/zenv/.local/bin/pfetch && \
    # get some env config files
    git clone https://github.com/zanderhavgaard/dotfiles && \
    cp dotfiles/.zshrc . && \
    cp dotfiles/.aliases . && \
    touch .env && \
    echo "export EDITOR='nvim'" >> .env && \
    echo "export PATH=\"$PATH:/home/zenv/.local/bin\"" >> .env && \
    rm -rf dotfiles && \
    # touch some env files
    touch .env-local && \
    # initialize zsh plugins
    zsh /home/zenv/.zshrc || echo "okay to fail ..." && \
    # remove cache files
    rm -rf /home/zenv/.cache/*

WORKDIR /home/zenv/mount

CMD figlet "zenv" && echo -e "\nzsh + nvim in an Arch environment, ready to use.\n" && zsh
