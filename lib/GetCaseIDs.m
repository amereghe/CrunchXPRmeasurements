function [caseIDs]=GetCaseIDs(FilterFields,FilterValues,MeasDB)
    myANDIndices=true(height(MeasDB),1);
    for iCol=1:length(FilterFields)
        if (~ismissing(FilterValues(iCol)))
            clear myORindices;
            myORindices=false(height(MeasDB),1);
            myCurQueries=split(FilterValues(iCol),",");
            switch upper(FilterFields(iCol))
                case "DATE"
                    for iCQ=1:length(myCurQueries)
                        myORindices=( myORindices | ( MeasDB.(FilterFields(iCol))==myCurQueries(iCQ) ) );
                    end
                case "MONITOR"
                    for iCQ=1:length(myCurQueries)
                        myORindices=( myORindices | contains( upper(MeasDB.(FilterFields(iCol))), upper(string(myCurQueries(iCQ))) ) );
                    end
                otherwise
                    for iCQ=1:length(myCurQueries)
                        myORindices=( myORindices | strcmpi( MeasDB.(FilterFields(iCol)), myCurQueries(iCQ) ) );
                    end
            end
            myANDIndices=( myANDIndices & myORindices );
        end
    end
    caseIDs=find(myANDIndices);
    if (isempty(caseIDs))
        warning("...found no measurements!");
    else
        fprintf("...found %d data sets;\n",length(caseIDs));
    end
end
