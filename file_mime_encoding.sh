pushd /f/trunk/env1/bin_externel/res/csvdef/

for file in *.csv 
do
    isUTF8=false;
    for (( i = 0; i < ${#aUTF8Files[@]}; ++i )) do 
        if [ $file == ${aUTF8Files[i]}.csv ]  
        then
            isUTF8=true;
        fi
    done;
    if [ "$isUTF8" != true ] 
    then
        file --mime-encoding $file
    fi
done

popd