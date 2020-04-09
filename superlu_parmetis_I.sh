echo "
Host ug4quad quadruped.gcsc.uni-frankfurt.de
     HostName quadruped.gcsc.uni-frankfurt.de
     User gitolite3
     IdentityFile ~/.ssh/rosado
" >> ~/.ssh/config

cp ~/scripts_for_ug/rosado ~/.ssh/
cp ~/scripts_for_ug/rosado.pub ~/.ssh/

cd $HOME
chmod 600 ~/.ssh/rosado
chmod 644 ~/.ssh/rosado.pub
chmod 700 ~/.ssh

cd $HOME/ug4/plugins

ughub addsource quadruped ug4quad:ug4-packages

echo "password is mrpink1985"
# look in password.txt
ughub install SuperLU Parmetis


