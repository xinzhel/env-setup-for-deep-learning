#environment
apt update && upgrade
apt install python3 
apt install python3-pip
apt install virtualenv
mkdir /data/www
virtualenv -p /usr/bin/python3 flask_env

source /data/www/flask_env/bin/activate



# install extensions
sudo apt install git
git clone  地址

cd order/
pip install -r requirements.txt

#database-related package 
pip install flask-sqlacodegen
pip install flask-sqlalchemy

#dependence
apt install libmysqlclient-dev
apt install gcc
apt install python-dev
pip install mysqlclient

#
export ops_config=production
