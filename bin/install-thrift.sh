apt-get update -y
apt-get install -y git-core

if [ ! -f /vagrant/bin/install_thrift_all_langs.sh ]; then
  echo "Downloading file from Gist:"
  mkdir -p /tmp/thrift-install && cd /tmp/thrift-install
  git clone https://gist.github.com/220b68b5b812c796efdd.git .
  mv install_thrift_all_langs.sh /vagrant/bin/install_thrift_all_langs.sh
  chmod +x /vagrant/bin/install_thrift_all_langs.sh
  rm -R /tmp/thrift-install
fi

echo "Installing Thrift:"
cd /vagrant/bin/
./install_thrift_all_langs.sh 2>&1 | tee /var/log/thrift-install.log