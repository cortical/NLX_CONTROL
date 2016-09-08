function s = spk_copyEvent(s,FindLab,NewLabel,EventNr)

% Rename/extract events, create a new event from a subset of event sequence 
% s = spk_renameEvent(s,FindLab,NewLabel,EventNr)

if nargin<4
    EventNr = [];
end

%% get current trials
nTrTotal = spk_TrialNum(s);
[cTr,s] = spk_CheckCurrentTrials(s);
nTr = length(cTr);

[nEvLabel,nnn] = size(s.events);

%% find events
iEv = strcmp(FindLab,s.eventlabel);
if ~any(iEv);error(['cannot find event >>' FindLab '<<']);end
nEv = cellfun('length',s.events(iEv,cTr));
iNewEv = strcmp(NewLabel,s.eventlabel);

%% 
if isempty(EventNr) && any(iNewEv) % add all old to existing
    for iTr = 1:nTr
        s.events{iNewEv,cTr(iTr)} = cat(1,s.events{iNewEv,cTr(iTr)},s.events{iEv,cTr(iTr)});
        s.events{iNewEv,cTr(iTr)} = sort(s.events{iNewEv,cTr(iTr)});
    end
    s.events(iEv,:) = [];
    s.eventlabel(iEv) = [];
    
elseif isempty(EventNr) && ~any(iNewEv)% simply rename
    s.eventlabel{iEv} = NewLabel;
    %s.events(nEvLabel,iNewEv) = s.events(nEvLabel,iEv);
    
elseif ~isempty(EventNr) && length(unique(nEv))>1
    error('Number of found events differ in trials!');

elseif ~isempty(EventNr) && length(unique(nEv))==1
    % rename subsample of events
    for iTr = 1:nTr
        s.events{iNewEv,cTr(iTr)} = cat(1,s.events{iNewEv,cTr(iTr)},s.events{iEv,cTr(iTr)}(EventNr));
        s.events{iEv,cTr(iTr)}(EventNr) = [];
        s.events{iNewEv,cTr(iTr)} = sort(s.events{iNewEv,cTr(iTr)});
    end
    

%% create event 
if ~any(iNewEv)
    disp(['create new event >>' NewLabel '<<']);
    s.eventlabel{nEvLabel+1} = NewLabel;
    iEv(nEvLabel+1) = false;
    iNewEv(nEvLabel+1) = true;
    s.events(nEvLabel+1,:) = cell(1,nTrTotal);
    nEvLabel = nEvLabel+1;
end

%% check existing events




else
    error('Cannot rename events!');
end

