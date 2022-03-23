#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cd ~
mkdir bin
git clone https://github.com/querterdesu/oisuite
cd oisuite
cargo build --release
cp -f target/release/oisuite ~/bin
cd ~
rm -rf oisuite
git clone https://github.com/querterdesu/qcpp
cd qcpp
cargo build --release
cp -f target/release/qcpp ~/bin
cd ~
rm -rf qcpp
mkdir q_libs
cd q_libs
git clone https://github.com/querterdesu/qcpp-libs
mv qcpp-libs/* .
rm -rf qcpp-libs
cd ~
~/bin/oisuite install
echo "default_repo: https://github.com/querterdesu/ois_cfg\nsolutions_repo: https://github.com/querterdesu/public-algo-question-repository" > oi/.oisuite/config.yml
~/bin/oisuite update
echo "Successfully installed qtr's algo config! Make sure to install the other config files!"
