
apt update && upgrade
#traditional way
# pip install python3-pip ipython3
# pip3 install jupyter


# via pyenv 
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# paste into bash profile
export PATH="/home/sergio212/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


source ~/.bash_profile
pyenv update
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev
pyenv install python3.7.1
pyenv global 3.7.

pip3 install jupyter

