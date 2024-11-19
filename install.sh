#!bin/bash

cd $PREFIX/etc/

mv bash.bashrc backup

cp $HOME/kali-termux/bash.bashrc ./

echo " [ ✓ ] : Done installing ... "
