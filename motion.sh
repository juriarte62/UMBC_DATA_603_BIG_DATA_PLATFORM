#!/bin/bash 

# adhd_y1-8 groups
#Contain trio, prisma singleband, and prisma multiband data
###### Trio to prisma upgrade happened sometime in August 2016 (201608**), any scan before 201607** is trio

pushd /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/HCP/derivatives/abcd-hcp-pipeline

for sub in `ls -d sub*`; do 
    pushd ${sub}
        for ses in `ls -d ses-*`; do 
            pushd ${ses}/func
                if [ -d "*TrioSingleBand*" ]; then 
                    link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                    echo ${link} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/trio.conc
                elif [ -d "*PrismaSingleBand*" ]; then 
                    link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                    echo ${link} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/singlebandprisma.conc
                elif [ -d "*PrismaSingleBand*" ]; then 
                    link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                    echo ${link} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/multibandbandprisma.conc
                    echo "Error with this sub/ses"
                    echo ${sub},${ses} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/errorif.csv
                else
                    echo "failure"
                fi
            popd 
        done 
    popd
done 

popd 

pushd /home/groups/brainmri/adhd_asd/data/adhd_Y9-Y12/HCP/derivatives/abcd-hcp-pipeline

for sub in `ls -d sub*`; do 
    pushd ${sub}
        for ses in `ls -d ses-*`; do 
            pushd ${ses}/func
                if [ -d "*TrioSingleBand*" ]; then 
                    link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                    echo ${link} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/trio.conc
                elif [ -d "*PrismaSingleBand*" ]; then 
                    link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                    echo ${link} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/singlebandprisma.conc
                elif [ -d "*PrismaSingleBand*" ]; then 
                    link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                    echo ${link} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/multibandbandprisma.conc
                    echo "Error with this sub/ses"
                    echo ${sub},${ses} >> /home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/errorif.csv
                else 
                    echo "failure"
                fi
            popd 
        done 
    popd
done 

popd 