function [caseIDs,myLabels,shifts,monTypes,MonPaths,myTit]=GetDefSetNFOs(NickName,DefSets,MeasDB)
    fprintf("getting IDs of pre-defined case '%s' ...\n",NickName);
    % identify pre-defined data set
    iPreDefSet=find(strcmpi(DefSets.NICKNAME,NickName));
    if (length(iPreDefSet)<1)
        warning("Cannot find pre-defined set '%s' - let's continue with the next one...",NickName);
        caseIDs=NaN(); myLabels=NaN(); shifts=NaN(); monTypes=NaN(); MonPaths=NaN(); myTit=NaN();
    elseif (length(iPreDefSet)>1)
        warning("Found too many pre-defined sets named '%s' - let's continue with the next one...",NickName);
        caseIDs=NaN(); myLabels=NaN(); shifts=NaN(); monTypes=NaN(); MonPaths=NaN(); myTit=NaN();
    else
        FilterFields=intersect(string(MeasDB.Properties.VariableNames),string(DefSets.Properties.VariableNames),"stable");
        FilterValues=strings(length(FilterFields),1);
        for iField=1:length(FilterFields)
            FilterValues(iField)=DefSets.(FilterFields(iField))(iPreDefSet);
        end
        [caseIDs]=GetCaseIDs(FilterFields,FilterValues,MeasDB);
        if (isempty(caseIDs))
            % no measurments found
            caseIDs=NaN(); myLabels=NaN(); shifts=NaN(); monTypes=NaN(); MonPaths=NaN(); myTit=NaN();
        else
            % monitor types (for acquisition)
            monTypes=GetMonType(MeasDB.MONITOR(caseIDs));
            % plot title
            myTit=string(DefSets.PLOT_TITLE(iPreDefSet));
            if (ismissing(myTit)), myTit="Chosen data set"; end
            % legend
            myLabels=string(DefSets.PLOT_LEGEND(iPreDefSet));
            if (ismissing(myLabels))
                myLabels=monTypes;
            else
                myLabels=split(myLabels,",");
                if (length(myLabels)==1)
                    if (length(find(strcmpi(myLabels,FilterFields)))==1)
                        myLabels=string(MeasDB.(myLabels)(caseIDs));
                    else
                        error("Wrong indication for PLOT_LEGEND: '%s'",DefSets.PLOT_LEGEND(iPreDefSet));
                    end
                end
                myLabels=strcat(myLabels,string(MeasDB.DATE(caseIDs)," (yyyy-MM-dd)"));
            end
            % shifts
            shifts=DefSets.PLOT_SHIFTs(iPreDefSet);
            if (ismissing(shifts))
                shifts=zeros(length(caseIDs),1);
            else
                shifts=double(split(string(shifts),","));
            end
            % paths to data
            MonPaths=GetFullPath(MeasDB.DISK(caseIDs),MeasDB.PATH(caseIDs));
        end
    end
end
