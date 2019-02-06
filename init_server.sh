#!/bin/bash

groupadd builders
sudo apt install -y git acl ufw mosh zsh neofetch
git clone https://github.com/akhilnarang/scripts.git
cd scripts && bash setup/android_build_env.sh
