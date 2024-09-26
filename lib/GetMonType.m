function MonTypes=GetMonType(monitors)
    MonTypes=strings(size(monitors,1),1);
    % - CAMeretta
    camIndices=startsWith(upper(monitors),"CAM");
    if (any(camIndices)), MonTypes(camIndices)="CAM"; end
    % - DDS/NZL
    ddsIndices=(contains(upper(monitors),"DDS") | contains(upper(monitors),"NZL"));
    if (any(ddsIndices)), MonTypes(ddsIndices)="DDS"; end
    % - BD
    if (any(~camIndices & ~ddsIndices))
        myMon=split(upper(monitors(~camIndices & ~ddsIndices)),"-");
        MonTypes(~camIndices & ~ddsIndices)=string(myMon(:,3));
    end
end
