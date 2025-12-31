# kali-template

clone a debian-13-xfce template and run the following as root to turn it into a kali template

```export HTTP_PROXY=http://127.0.0.1:8082
export HTTPS_PROXY=http://127.0.0.1:8082
echo "proxy = http://127.0.0.1:8082" >> ~/.curlrc
echo "https-proxy = http://127.0.0.1:8082" >> ~/.curlrc
echo "use_proxy = on" >> ~/.wgetrc
echo "http_proxy = 127.0.0.1:8082" >> ~/.wgetrc
echo "https_proxy = 127.0.0.1:8082" >> ~/.wgetrc

apt update
apt install -y gnupg gnupg2 wget
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add

mv /etc/apt/sources.list /root/sources.list
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

apt -y update
apt-cache search kali-linux
apt install -y kali-linux-core
apt-get -y update
apt-get -y dist-upgrade
apt-get -y autoremove
```

you should now have a working kali template
