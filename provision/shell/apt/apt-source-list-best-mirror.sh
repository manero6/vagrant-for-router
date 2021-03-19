cp /etc/apt/sources.list /etc/apt/sources.list.bak
RELEASE=`lsb_release -sc`
CLOSEST=`curl -s mirrors.ubuntu.com/mirrors.txt|head -1|head -c-2`
cat > /etc/apt/sources.list <<EOF
deb $CLOSEST $RELEASE main restricted universe multiverse
deb $CLOSEST $RELEASE-updates main restricted universe multiverse
deb $CLOSEST $RELEASE-security main restricted universe multiverse
EOF