cd /usr/share/fonts/truetype/noto/
# Download Google Noto Fonts
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSans-hinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSerif-hinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansDisplay-hinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifDisplay-hinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoMono-hinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoColorEmoji-unhinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansKannada-hinted.zip
sudo wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifKannada-hinted.zip
# Unzip all .zip files in current directory, overwrite files of the same name
sudo unzip -o '*.zip'
# Remove all .zip files
sudo find . -maxdepth 1 -type f -iname \*.zip -delete
# Set file permissions on all .ttf files
find . -name "*.ttf" -exec sudo chmod 644 {} \;
# Refresh the font cache
fc-cache -f -v
# Reboot your system
sudo reboot
