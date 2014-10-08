fn=$(mktemp)
curl -L https://raw.githubusercontent.com/sethaurus/tools-bootstrap/master/interactive.sh > $fn
chmod +x $fn
sh $fn
