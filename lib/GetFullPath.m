function fullPaths=GetFullPath(disks,paths,kPath)
    if (~exist("kPath","var")), kPath="P:\Accelerating-System\Accelerator-data"; end
    fullPaths=strings(size(disks,1),1);
    kIndices=startsWith(upper(disks),"K:");
    fullPaths( kIndices)=strcat(kPath,"\",paths( kIndices));
    fullPaths(~kIndices)=strcat(disks(~kIndices),"\",paths(~kIndices));
end
