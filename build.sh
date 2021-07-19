
if [ -d code ]; then
    echo "Already exists"
    git subtree pull --prefix code https://github.com/bootandy/dust.git master --squash
else
    git subtree add --prefix code https://github.com/bootandy/dust.git master --squash
fi

apt-get install mingw-w64
apt install gcc



