#!/usr/bin/env bash

set -xueo pipefail

curl -Lo /usr/bin/bauh https://github.com/vinifmor/bauh/releases/download/0.10.7/bauh-0.10.7-x86_64.AppImage
chmod +x /usr/bin/bauh

cd /tmp
curl -Lo palemoon.tar.xz "https://www.palemoon.org/download.php?mirror=us&bits=64&type=linuxgtk3"
mkdir -p /usr/opt
cd /usr/opt
tar xf /tmp/palemoon.tar.xz
ln -s /usr/opt/palemoon/palemoon /usr/bin/palemoon
