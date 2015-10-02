#!/bin/bash

cd ~
mkdir Handshake
cd Handshake

git clone git@github.com:strydercorp/handshake.git
git clone git@github.com:strydercorp/handshake-office.git
git clone git@github.com:strydercorp/documentation.git
git clone git@github.com:strydercorp/handshake-parser.git
git clone git@github.com:strydercorp/handshake-audit-logs.git

cd handshake

bash script/dependencies.sh
bash script/setup.sh

rake dev:reset

cp .env.example .env
vim .env
