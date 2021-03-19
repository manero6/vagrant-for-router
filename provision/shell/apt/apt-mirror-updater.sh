apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -yq python3-pip
pip3 install apt-mirror-updater
apt-mirror-updater --auto-change-mirror