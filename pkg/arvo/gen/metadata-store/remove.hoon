::  :metadata-store|remove: remove resource from group
::  Usage:
::  :metadata-store|remove
::    <group-name> <app-name> <channel-path> 
::    %urbit-community %chat /~darrux-landes/general-503
::
::  You can acquire the channel-path with 
::  :metadata-store +dbug [%state '(~(got by group-indices) <group-path>)'
::  and looking for the entry with an app-path that is similar to the
::  title of the channel
::  
/-  *metadata-store
/+  resource
:-  %say
|=  $:  [now=@da eny=@uvJ =beak]
        [[group=term app=term =path ~] ~]
    ==
:-  %metadata-action
^-  metadata-action
[%remove (en-path:resource [p.beak group]) app path]
