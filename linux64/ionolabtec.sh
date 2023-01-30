#!/bin/sh
export MATLAB_HOME=/opt/matlab
export LD_LIBRARY_PATH=$MATLAB_HOME/sys/java/jre/glnxa64/jre/lib/amd64/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$MATLAB_HOME/sys/java/jre/glnxa64/jre/lib/amd64/server:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$MATLAB_HOME/bin/glnxa64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$MATLAB_HOME/sys/os/glnxa64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$MATLAB_HOME/runtime/glnxa64:$LD_LIBRARY_PATH
#export XAPPLRESDIR=$MATLAB_HOME/X11/app-defaults

./ionolabtecL64 $*
