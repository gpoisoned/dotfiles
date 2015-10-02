#!/bin/bash

## Dependencies:
# - git
# - ssh setup for github
# - access to strydercorp (duh)
# - dependencies mentioned by script output (should all be taken care of by osx-setup.sh or by this script)

cd ~
mkdir Handshake
cd Handshake

git clone git@github.com:strydercorp/handshake.git
git clone git@github.com:strydercorp/handshake-office.git
git clone git@github.com:strydercorp/documentation.git
git clone git@github.com:strydercorp/handshake-parser.git
git clone git@github.com:strydercorp/handshake-audit-logs.git

brew install Caskroom/cask/java # elasticsearch install failed and told me to run this

cd handshake

bash script/dependencies.sh
bash script/setup.sh

rake dev:reset

cp .env.example .env
vim .env
