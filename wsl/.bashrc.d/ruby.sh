# vi: ai et ts=4 sw=4 sts=4 expandtab fs=shell

# sudo apt install -y libssl-dev libreadline-dev zlib1g-dev
# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# cd ~/.rbenv && src/configure && make -C src
# source ~/wsl/.bashrc.d/ruby.sh
# mkdir -p $(rbenv root)/plugins
# git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
# rbenv install 2.6.2
# rbenv global

if [[ -d ${HOME}/.rbenv ]]; then
    PATH=${PATH/\/home\/y_okazawa\/.rbenv\/bin:}
    PATH=${HOME}/.rbenv/bin:${PATH}
    eval "$(rbenv init -)"
    alias be='bundle exec ' 
fi
