
sudo apt update && upgrade

# install pip, ipython3
sudo apt install python3-pip



# 1. load pyenv 
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# 2. sets environment variables in .bash_profile(or .profile or .bashrc) and pyenv initialization
# https://www.baeldung.com/linux/bashrc-vs-bash-profile-vs-profile
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
source ~/.bash_profile

# 3. pyenv update
pyenv update

# 4 install python
# some necessary packages
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev
pyenv install 3.7.9

# 5. use different python versions
# check default version by adding 3.7.9 into the file: .pyenv/version
# pyenv versions
# global
pyenv global 3.7.9
# local: add .python-version in a project folder to automatically activation
pyenv local 3.7.9
# Set back System Python version: 
pyenv global system

# 5.1 use virtualenv
pyenv virtualenv 3.7.9 pytorch-gpu
pyenv activate pytorch-gpu
pyenv local pytorch-gpu

# 6. uninstall pyenv
# remove environment variables in ~/.bashrc
# remove ./pyenv
#rm -rf ~/.pyenv
#rm -rf $(pyenv root)



