sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py   /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
#cd /home/box/web/etc/
#gunicorn --bind 0.0.0.0:8080 hello:app &
#cd ~

git config --global user.name "MixITGit"
git config --global user.email "sidorov.ml99@gmail.com"
