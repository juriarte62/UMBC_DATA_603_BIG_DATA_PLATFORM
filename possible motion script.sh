#!/bin/bash 

adhd1_8='/home/groups/brainmri/adhd_asd/data/adhd_Y1-Y8/HCP/derivatives/abcd-hcp-pipeline'
adhd9_12='/home/groups/brainmri/adhd_asd/data/adhd_Y9-Y12/HCP/derivatives/abcd-hcp-pipeline'

prisma='/home/groups/brainmri/adhd_asd/data/prisma.csv'
trio='/home/groups/brainmri/adhd_asd/data/trio.csv'


pushd ${adhd1_8}

for sub in `ls -d sub*`; do 
    pushd ${sub}
        for ses in `ls -d ses*`; do 
            pushd ${ses}/func
            if [ $ses == ses-20161* ]; then 
                link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                echo ${sub},${ses},2.5,${link} >> ${prisma}
            elif [ $ses == ses-201[789]**]; then
                link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                echo ${sub},${ses},2.5,${link} >> ${prisma}
            else 
                link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                echo ${sub},${ses},2.3,${link} >> ${trio}
            fi 
            popd 
        done 
    popd 
done  

popd 

pushd ${adhd9_12}

for sub in `ls -d sub*`; do 
    pushd ${sub}
        for ses in `ls -d ses*`; do 
            pushd ${ses}/func
            if [ $ses == ses-20161* ]; then 
                link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                echo ${sub},${ses},2.5,${link} >> ${prisma}
            elif [ $ses == ses-201[789]** ]; then
                link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                echo ${sub},${ses},2.5,${link} >> ${prisma}
            else 
                link=`readlink -f ${sub}_${ses}_task-rest_motion_mask.mat`
                echo ${sub},${ses},2.3,${link} >> ${trio}
            fi 
            popd 
        done 
    popd 
done  

popd 