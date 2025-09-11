#!/bin/bash 

# rough draft test code 3/19/20 4:45pm 

# task set out by micki based on nigg and fair requriements 
# get COMPLETE list of adhd subject ID's 
## make sure you get the adhd y1-8, 1-8 err, 9-12, ***there is no 9-12 err :D
# and total amount of scans that these 

for sub in `ls -d sub*`; do 
    pushd ${sub} 
        for ses in `ls -d ses*`; do 
            pushd ${ses}
                scan_count=`ls -d */*.nii.gz | wc -l`
                echo ${sub},${ses},${scan_count} >> /some/path
            popd
        done
    popd
done 


### for the subs with single and multiband data 
### make a .csv for the regular subs
### then do grep -vf to exclude those 1-8 error subs in the other directory 
### then you can manually add them back in with some excel magic 
#do a sort to get all the unique numbers, then do a wc -l for all the number counts 

# DON'T FORGET ABOUT `bc` this is a math code formula thingy that linux has built in 

# MAKE SURE TO EXCLUDE THE ERROR 1-8 SUBS, DO A
