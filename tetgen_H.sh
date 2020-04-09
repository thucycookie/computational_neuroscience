cd $HOME
wget http://tetgen.org/files/tetgen1.4.3.zip

sudo apt install unzip -y

unzip tetgen1.4.3.zip 

# Must have Cmake for TETGEN
cp $HOME/scripts_for_ug/CMakeLists.txt $HOME/tetgen1.4.3/

cd tetgen1.4.3 && mkdir build && cd build && cmake .. && make

# very important
# must cd into UG4 build folder
# so we can compile with tetgen
cd $HOME/ug4/build

cmake -DTETGEN=/tetgen1.4.3 ..
nohup make -j4 &
