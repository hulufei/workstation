sudo apt-get install -y nginx
sudo python get-pip.py
sudo pip install virtualenv
sudo pip install git-up

cd ~

virtualenv work
source bin/activate

# Depedencies
pip install flask flask-assets flask-script xlwt
pip install pymongo redis celery pysolr

# matplotlib dependencies
sudo apt-get install -y python-dev pkg-config libpng12-dev libfreetype6-dev
pip install matplotlib

# MySQL
sudo apt-get install -y mysql-client mysql-server libmysqlclient-dev
pip install mysql-python

sudo cp nginx.conf /etc/nginx/
# sudo cp hosts /etc/
sudo service nginx start

# Note: While this is convenient, Git will store your credentials in clear text in
# a local file (.git-credentials) under your "home" directory ("cd" should take you
# there). If you don't like this, delete this file and switch to using the cache
# option.
# Refer: http://goo.gl/ldKTjP
git config --global credential.helper store
git clone http://space1:8080/platform/matrix.git

# Start dev server, visit like: 192.168.33.10:8080/matrix
