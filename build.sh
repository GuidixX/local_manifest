sudo add-apt-repository universe && sudo apt update && sudo apt upgrade
sudo apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev repo python-is-python3
git lfs install
git config --global user.email "GuidixX"
git config --global user.name "guidixm@gmail.com"
wget http://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libtinfo5_6.4-2_amd64.deb && sudo dpkg -i libtinfo5_6.4-2_amd64.deb  
wget http://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libncurses5_6.4-2_amd64.deb && sudo dpkg -i libncurses5_6.4-2_amd64.deb
mkdir crdroid && cd crdroid
mkdir ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
sudo mv ~/bin/repo /usr/bin/repo
repo init -u https://github.com/crdroidandroid/android.git -b 11.0 --git-lfs --depth=1
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/GuidixX/android_device_xiaomi-spes device/xiaomi/spes 
source build/envsetup.sh
lunch lineage_spes-userdebug
mka bacon
