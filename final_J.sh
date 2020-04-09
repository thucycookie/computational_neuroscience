cd $HOME/ug4/build

# installing mpi so we dont get mpi.h not found error
sudo apt-get update -y
sudo apt install libopenmpi-dev
mpirun --version

LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/ompi/mpi

# added -DCMAKE_LIBRARY_PATH=~/tetgen1.4.3 
# because it throws TEGEN_LIB not found library
# according to this source https://github.com/floydhub/dl-docker/pull/48
# this error means that tetgen lib cannot be found 
echo "Step 15a"

# must have DPARALLEL ON for mpi.h for make -j4
# if not u will get mpi.h not found error
# -DCMAKE_LIBRARY_PATH=~/tetgen1.4.3
cmake -DCPU="1" -DDIM="2;3" -DPARALLEL=ON -DPCL_DEBUG_BARRIER=ON -DEMBEDDED_PLUGINS=ON -DUSE_LUA2C=ON -DParmetis=ON -DSuperLU=ON ..

echo "Step make for 15a"
make -j4  


echo "Step 15b"
cmake -DConvectionDiffusion=ON -DcalciumDynamics=ON -Dneuro_collection=ON -Dcable_neuron=ON -DMembranePotentialMapping=ON -DNeurolucida=ON ..

echo "Step make for 15b"
make -j4 

