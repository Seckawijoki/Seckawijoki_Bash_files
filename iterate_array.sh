aUTF8Files=(stringdef monster buffdef itemdef hotkey role roleskin storehorse storeprop signin horseability fruit book bookseries achievement enchant plot ruleoption task TriggerEnum TriggerFunction TriggerItem TriggerParam HomeNpcDef HomeAnimalDef HomeChunkDef HomeCraftDef HomeCropsDef HomeItemDef HomePackDef HomeTabDef HomeTraderDef animact EffectBank ScriptAPI EffectBankEnum EffectBankSliding filterstring random_names ItemUseSkinDef)

pushd /f/trunk/env2/bin_externel/res/csvdef/

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