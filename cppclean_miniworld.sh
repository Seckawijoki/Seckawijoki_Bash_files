outputFile=../cppclean_miniworld_result.log

basePath=/f/trunk/env1/client

iworldPath=$basePath/iworld

iworldcustomPath=$basePath/iworldcustom

iworldminicodePath=$basePath/iworldminicode

OgreMainExtPath=$basePath/OgreMainExt

OgreMainPath=$basePath/OgreMain

scriptsupportPath=$basePath/scriptsupport

platformPath=$basePath/platform

iteratedPaths[${#iteratedPaths[*]}]=$iworldPath
iteratedPaths[${#iteratedPaths[*]}]=$iworldcustomPath
iteratedPaths[${#iteratedPaths[*]}]=$iworldminicodePath
iteratedPaths[${#iteratedPaths[*]}]=$OgreMainExtPath
iteratedPaths[${#iteratedPaths[*]}]=$OgreMainPath
iteratedPaths[${#iteratedPaths[*]}]=$scriptsupportPath
iteratedPaths[${#iteratedPaths[*]}]=$platformPath

includedPaths="$includedPaths --include-path=$iworldPath"
includedPaths="$includedPaths --include-path=$iworldcustomPath"
includedPaths="$includedPaths --include-path=$iworldminicodePath"
includedPaths="$includedPaths --include-path=$OgreMainExtPath"
includedPaths="$includedPaths --include-path=$OgreMainPath"
includedPaths="$includedPaths --include-path=$scriptsupportPath"
includedPaths="$includedPaths --include-path=$platformPath"

for (( i = 0; i < ${#iteratedPaths[*]}; ++i ))
do
    path=${iteratedPaths[i]}
    # echo $path
    for folderPath in $path/*
    do
        # echo $folderPath
        if test -d $folderPath 
        then
            # echo $folderPath
            includedPaths="$includedPaths --include-path=$folderPath"
        fi
    done
done

# echo $includedPaths
cppclean $includedPaths $basePath > $outputFile