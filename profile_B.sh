# refer https://askubuntu.com/questions/161249/bashrc-not-executed-when-opening-new-terminal
# by default Ubuntu uses profile
echo "export PATH=$PATH:$HOME/ughub" >> $HOME/.profile
. $HOME/.profile
export PATH=$PATH:$HOME/ughub
