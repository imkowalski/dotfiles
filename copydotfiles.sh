

echo "Hello $USER"

echo "copying dot files"
cp -r ~/.config/micro ./micro
cp -r ~/.config/wofi ./wofi
cp -r ~/.config/wlogout ./wlogout
cp -r ~/.config/hypr ./hypr
cp -r ~/.config/alacritty ./alacritty
cp -r ~/.config/waybar ./waybar

echo "copying bash and zsh rc files"
cp -r ~/.bashrc ./
cp -r ~/.zshrc ./    

echo "Adding the files to git"
git add .
read -p "Commit message:" msg
echo "Commiting to the repo with the message: $msg"
git commit -m "$msg"
read -p "Push To origin (y/n)?>" choice
case "$choice" in 
  y|Y ) git push origin;;
  n|N ) echo "bye";;
  * ) echo "wasn't an option";;
esac


