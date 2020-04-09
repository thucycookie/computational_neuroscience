cd $HOME/ug4/

mkdir runs
cd runs
ugshell -ex Examples/poisson.lua
ugshell -ex Examples/poisson.lua -dim 3
ugshell -ex Examples/solmech.lua
ugshell -ex Examples/elder_adapt.lua
ugshell -ex Examples/navier_stokes.lua
ugshell -ex Examples/electromagnetism_pan.lua -numRefs 3
