clear
key_location="$HOME/.ssh/id_rsa"
if ! [[ -e $key_location.pub ]]; then
	ssh-keygen -q -t rsa -f $key_location -N ""
fi

key_data=$(cat $key_location.pub)
json_payload="{\"title\": \"butt-house\", \"key\": \"$key_data\"}"
read -s -p "Github password? " github_password
github_username=sethaurus
github_url="https://$github_username:$github_password@api.github.com/user/keys"

curl --data "$json_payload" $github_url
cd ~
yes | git clone ssh://git@github.com/$github_username/tools