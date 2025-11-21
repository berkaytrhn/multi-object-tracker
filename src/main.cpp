#include <iostream>
#include <stdio.h>
#include <fuser.hpp>


int main(){
    Fuser* fuser = new Fuser();

    fuser->fuse();

    delete fuser;
    return 0;
}