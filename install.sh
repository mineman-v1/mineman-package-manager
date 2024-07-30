wget https://raw.githubusercontent.com/mineman-v1/mineman-package-manager/main/mineman
chmod +x mineman
mv mineman /usr/local/bin/
wget https://raw.githubusercontent.com/mineman-v1/mineman-package-manager/main/sources.mineman
mv sources.mineman /usr/local/bin
export PATH="$HOME/bin:$PATH"
source ~/.bashrc

