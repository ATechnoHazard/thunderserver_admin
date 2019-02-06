#!/bin/bash

groupadd builders
apt install -y git acl ufw mosh
git clone https://github.com/akhilnarang/scripts.git
cd scripts && bash setup/android_build_env.sh
