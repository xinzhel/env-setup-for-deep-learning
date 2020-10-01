
sudo apt update && upgrade

# install pip, ipython3
sudo apt install python3-pip



# install pyenv 
# 1. git clone https://github.com/pyenv/pyenv.git ~/.pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# 2. Sets environment variables in bash profile
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.pyenv/bin:$PATH"

# 3. 以下内容~/.bashrc或/。bash_profile的最底部。因为在 pyenv 初始化期间会操作 path 环境变量，导致不可预测的行为
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source ~/.bash_profile
pyenv update

# 4. 为避免安装失败(pyenv install python3.X.X)，执行如下命令
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev

# pyenv用法： pyenv 是托管 python 版本，virtualenv 使用 python 版本
# 1. 安装托管版本
pyenv install python3.7.1
pyenv global 3.7.1

# 2.创建虚拟环境
pyenv virtualenv 3.7.1 my-env-name

# 3.1 激活环境
pyenv activate my-env-name

# 3.2 在莫格project下运行一下命令，就会为此目录add .python-version 以后只要进入此目录，就会自动激活虚拟环境
pyenv local my-env-name

# uninstall pyenv
# 1. remove environment variables in ~/.bashrc
# 2. remove ./pyenv
#rm -rf ~/.pyenv
#rm -rf $(pyenv root)



