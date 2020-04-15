sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default.conft
sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
cd /home/box/web/etc/
gunicorn -b 0.0.0.0:8080 hello:app &
cd ~

git config --global user.name "MixITGit"
git config --global user.email "sidorov.ml99@gmail.com"
