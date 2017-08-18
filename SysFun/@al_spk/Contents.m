%  
% Path ->  C:\MATLAB Files\alwin\classes\@al_spk
% 
%   al_spk                 - Constructor for the @al_spk class
%   display                - Display a @neurons object.
%   error                  - Report an error that occurred in a spike object
%   MakeContents           - MAKECONTENTS  makes Contents file in current working directory.
%   spk_align              - align events of an al_spk object to a certain time or event
%   spk_cat                - concatenation of @al_spk objects
%   spk_cuttrials          - cut trials out of an object
%   spk_density            - Calculates the Spike Density Function over trials listed in s.currenttrials
%   spk_eventdiff          - calculates time differences of two types of events in the trials given in
%   spk_findchannel        - get the indices of channels as appearing in s.channel
%   spk_findeventlabel     - returns the index of an eventlabel
%   spk_findtrialcodelabel - returns the index of a trialcodelabel
%   spk_findtrials_AND     - find trials with trialcodes given in varargin
%   spk_findtrials_OR      - find trials with trialcodes given in varargin
%   spk_get                - Get the value of @al_spk fields.
%   spk_getevents          - returns the events as a cell array
%   spk_gettrialcodes      - returns the trial codes trials trials given in s.currenttrials ; set by >>spk_set(s,'currentrials',[ ... ])
%   spk_gettrialdata       - gets data of trials specified by s.currenttrials
%   spk_histogram          - calculates histograms for spikedata defined by s.currenttrials and s.currentchan
%   spk_instant            - calculates instantaneaous spike rate for the current trials
%   spk_isempty            - checks for trials with no spikes
%   spk_loadstruct         - loads a file in mat format to a @al_spk object
%   spk_loadstructarray    - opens a gui a to select mat files 
%   spk_nlxget             - connects to a cheetah data acquisition software and writes data into a
%   spk_nlxreadspikedata   - reads spike data from a neuralynx *.nse file
%   spk_nlxreadspikedata2  - reads spike data from a neuralynx *.nse file
%   spk_numchan            - returns channel data
%   spk_numtrials          - returns and check for number of trials in @al_spk object
%   spk_poolchannels       - pool the spikes of different channels
%   spk_raster             - rasters of spikes or events in current axes
%   spk_rastertrial        - plots a raster plot for trials given s.currenttrials
%   spk_readcortex         - reads a cortex file in @al_spk object
%   spk_read_mane2         - reads a mane2 file into a @al_spk object
%   spk_revcorrtemp        - calculates a reverse correlation to a temporal sequence of different stimuli  
%   spk_savestruct         - saves a @al_spk object as a mat file
%   spk_sessiontime        - returns the earliest and latest event times of a number of al_spk
%   spk_set                - set the fields of an @al_spk object
%   spk_TrialEventLimit    - returns the time window between earliest and latest event of
%   spk_TrialEventWindow   - returns the time window between two specified events
%   spk_winrate            - calculate rate of the current trials
%   subsasgn               - Subscript assignmemt for the @al_spk object. 
%   subsref                - Subsref for al_spk Objects
