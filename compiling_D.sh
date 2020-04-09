# refer
# to prevent cxx-compiler-broken error
sudo apt-get update
sudo apt-get install -y build-essential

echo ". $HOME/ug4/ugcore/scripts/shell/ugbash" >> ~/.profile

. ~/.profile

. $HOME/ug4/ugcore/scripts/shell/ugbash

cd $HOME/ug4
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release .. -DENABLE_ALL_PLUGINS=ON ..
nohup make -j2 &

echo "nohup.out in ug4/build directory"
