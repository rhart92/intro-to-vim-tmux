# Use Ubuntu as the base image
FROM ubuntu:latest
# Update package lists and install necessary packages
RUN apt-get update && apt-get install -y tmux curl ninja-build gettext cmake unzip curl build-essential unzip git ripgrep jq fzf

# Install neovim 0.10.1
RUN cd /root
WORKDIR /root
RUN git clone https://github.com/neovim/neovim
WORKDIR /root/neovim
RUN git checkout stable
RUN make CMAKE_BUILD_TYPE=Release
RUN make install

# Install kickstart
WORKDIR /root
RUN mkdir .config
WORKDIR /root/.config
RUN git clone https://github.com/nvim-lua/kickstart.nvim.git nvim

# Let neovim install plugins
WORKDIR /root
RUN nvim --headless +qall

# Basic tmux config
COPY tmux.conf /root/.tmux.conf

# Basic bash config
COPY bashrc /root/.bashrc

# Copy tmux session manager
WORKDIR /usr/local/bin
COPY tms /usr/local/bin/tms

COPY playground /root/playground

WORKDIR /root

# Make test directories
RUN mkdir /root/project-A
RUN mkdir /root/project-B
RUN mkdir /root/project-C
RUN mkdir /root/project-D

WORKDIR /root/playground

# Start the shell
CMD ["/bin/bash"]
