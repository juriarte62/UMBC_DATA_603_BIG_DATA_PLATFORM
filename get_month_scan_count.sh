while IFS=',' read sub ses; do 

    if [[ ${ses} =~ "ses-200901" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200902" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200903" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200904" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200905" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200906" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200907" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200908" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2009,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-200909" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200910" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200911" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-200912" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2009,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201001" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201002" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201003" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201004" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201005" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201006" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201007" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201008" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2010,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201009" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201010" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201011" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201012" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2010,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201101" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201102" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201103" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201104" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201105" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201106" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201107" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201108" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2011,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201109" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201110" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201111" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201112" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2011,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201201" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201202" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201203" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201204" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201205" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201206" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201207" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201208" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2012,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201209" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201210" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201211" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201212" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2012,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201301" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201302" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201303" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201304" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201305" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201306" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201307" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201308" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2013,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201309" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201310" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201311" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201312" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2013,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201401" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201402" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201403" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201404" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201405" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201406" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201407" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201408" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2014,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201409" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201410" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201411" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201412" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2014,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201501" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201502" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201503" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201504" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201505" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201506" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201507" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201508" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2015,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201509" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201510" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201511" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201512" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2015,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201601" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201602" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201603" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201604" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201605" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201606" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201607" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201608" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2016,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201609" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201610" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201611" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201612" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2016,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201701" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201702" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201703" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201704" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201705" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201706" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201707" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201708" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2017,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201709" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201710" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201711" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201712" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2017,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201801" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201802" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201803" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201804" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201805" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201806" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201807" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201808" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2018,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201809" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201810" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201811" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201812" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2018,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201901" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo January-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201902" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo February-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201903" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo March-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201904" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo April-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201905" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo May-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201906" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo June-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201907" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo July-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201908" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo August-2019,${month_scan} >> month_scan_count_adhd.csv
    
    elif [[ ${ses} =~ "ses-201909" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo September-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201910" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo October-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201911" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo November-2019,${month_scan} >> month_scan_count_adhd.csv

    elif [[ ${ses} =~ "ses-201912" ]]; then
    month_scan=`cat all_subs.csv | grep -i ${ses} | wc -l`
    echo December-2019,${month_scan} >> month_scan_count_adhd.csv

    fi

done < all_subs.csv

while IFS=',' read month_yr ses count; do

    clean=`cat month_scan_count_adhd.csv | grep ${month_yr} | wc -l `

    echo ${month_yr},${clean} >> dirty_count.csv

    sort -u dirty_count.csv -o clean_count.csv

done < month_scan_count_adhd.csv