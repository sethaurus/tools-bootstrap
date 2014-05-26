fn=/tmp/$RANDOM
touch $fn
chmod +x $fn
curl -L https://raw.githubusercontent.com/sethaurus/tools-bootstrap/master/interactive.sh > $fn
bash $fn