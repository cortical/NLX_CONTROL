function s = nlx_control_defaultSPK(ChanName)

% Creates the default data structure to store event and spike data.
% Input:
% ChanName ... ChannelNr in rows. Electrode Name in 1st column. ClusterNr in 2nd column.
% Output:
% SPK ... structure containing events, spike timestamps etc.

global NLX_CONTROL_SETTINGS;

numTrials = 0;
numChan = size(ChanName,1);

s = al_spk;
s = spk_addTrialcode(s,'TrialID');
s = spk_addTrialcode(s,'CortexBlock');
s = spk_addTrialcode(s,'CortexCondition');
s = spk_addTrialcode(s,'CortexPresentationNr');

if isfield(NLX_CONTROL_SETTINGS,'SendConditionPresentParName') && ~isempty(NLX_CONTROL_SETTINGS.SendConditionPresentParName)
    for i=1:NLX_CONTROL_SETTINGS.SendConditionPresentParNum
        s = spk_addTrialcode(s,NLX_CONTROL_SETTINGS.SendConditionPresentParName{i});
    end
end

s = spk_set(s, ...
    'channel',ChanName, ...
    'chancolor',NLX_CONTROL_SETTINGS.SpikeChanColor(1:numChan,:), ...    
    'spk',cell(numChan,numTrials), ...
    'eventlabel',NLX_CONTROL_SETTINGS.EventName, ...
    'events',cell(length(NLX_CONTROL_SETTINGS.EventName),numTrials), ...
    'align',zeros(1,numTrials).*NaN, ...
    'date',datestr(now,30), ...
    'timeorder',-3, ...
    'stimulus',cell(1,numTrials), ...
    'analog',cell(1,numTrials));