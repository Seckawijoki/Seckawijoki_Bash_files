outputFile=cppclean_miniworld_result.log

clientPath=/f/trunk/env1/client

androidbuildPath=/f/trunk/env1/androidbuild

iworldPath=$clientPath/iworld

iworldcustomPath=$clientPath/iworldcustom

iworldminicodePath=$clientPath/iworldminicode

OgreMainExtPath=$clientPath/OgreMainExt

OgreMainPath=$clientPath/OgreMain

scriptsupportPath=$clientPath/scriptsupport

platformPath=$clientPath/platform

commonPath=$androidbuildPath/AppPlay/Common

jniPath=$androidbuildPath/AppPlay/Proj.Android/jni

iteratedPaths[${#iteratedPaths[*]}]=$iworldPath
iteratedPaths[${#iteratedPaths[*]}]=$iworldcustomPath
iteratedPaths[${#iteratedPaths[*]}]=$iworldminicodePath
iteratedPaths[${#iteratedPaths[*]}]=$OgreMainExtPath
iteratedPaths[${#iteratedPaths[*]}]=$OgreMainPath
iteratedPaths[${#iteratedPaths[*]}]=$scriptsupportPath
iteratedPaths[${#iteratedPaths[*]}]=$platformPath
iteratedPaths[${#iteratedPaths[*]}]=$commonPath
iteratedPaths[${#iteratedPaths[*]}]=$jniPath

includedPaths="$includedPaths --include-path=$iworldPath"
includedPaths="$includedPaths --include-path=$iworldcustomPath"
includedPaths="$includedPaths --include-path=$iworldminicodePath"
includedPaths="$includedPaths --include-path=$OgreMainExtPath"
includedPaths="$includedPaths --include-path=$OgreMainPath"
includedPaths="$includedPaths --include-path=$scriptsupportPath"
includedPaths="$includedPaths --include-path=$platformPath"
includedPaths="$includedPaths --include-path=$commonPath"
includedPaths="$includedPaths --include-path=$jniPath"

includedPaths="$includedPaths --exclude=CPython"
includedPaths="$includedPaths --exclude=MakeWebPatchTools"

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
cppclean $includedPaths $clientPath > $outputFile