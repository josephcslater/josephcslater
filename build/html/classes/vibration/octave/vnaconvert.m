%VNACONVERT 1.0.1
% Converts a vna file to something a human can read.
% Input filename by loading the filename and path into the filename
% and pathname variables to allow an m file to directly convert 
% the vna file by calling vnaconvert.  If the path & file variables
% do not exist, the ui asks you to browse for the file.
%
%EXAMPLE:
%  filename='labdata.vna'
%  pathname='C:\matlab\bin\'
%  vnaconvert
%
% In running the experiment, you should have entered the conversion from
% volts (or mV) to the engineering unit. For example, if the calibration
% factor is .12 G/mV, the number should be entered as 1200, and the
% engineering unit label as G. If the calibration factor is given as
% 9.5 mV/G, the number entered should be 1/9.5=0.10526315789474, with the
% engineering unit label as G.
% Joseph C. Slater
% 5/2/01
% Modified 5/8/01 to allow bypass of UI. David M. Wright
% Modified 9/22/08 to work on Octave by Rom�n D. Griego

if exist('filename')==0
   [filename,pathname]=uigetfile('*.vna','Select VNA-File to Load');
pathname
filename
end

%% Added line to remove Matlab format so script will run in Octave.
isOctave=exist('OCTAVE_VERSION')

if filename~=0
destr=['load ' '''' [pathname filename] '''' ' -mat'];
if isOctave~=0
destr=['load ' '''' [pathname filename] '''' ];%% Format Removed
endif

eval(destr)
disp(['File ' filename ' loaded.'])
else
disp('You''re not going to get much work done if you don''t load a file.')
disp('Why?')
why
clear filename pathname
break

end
clear pathname filename destr

t=SLm.tdxvec';

f=SLm.fdxvec';

disp('Time and frequency vectors extracted.')

disp('Time vector units are seconds.')

disp('Frequency vector units are Hz.')

ch1EUscalefac=SLm.scmeas(1).eu_val;

ch2EUscalefac=SLm.scmeas(2).eu_val;

ch1time=SLm.scmeas(1).tdmeas*ch1EUscalefac;

ch2time=SLm.scmeas(2).tdmeas*ch2EUscalefac;

ch1aspec=SLm.scmeas(1).aspec*ch1EUscalefac^2;

ch2aspec=SLm.scmeas(2).aspec*ch2EUscalefac^2;

%ch1EUon=SLm.scmeas(1).eu_on_off;

%ch2EUon=SLm.scmeas(2).eu_on_off;

ch1label=SLm.scmeas(1).label;

ch2label=SLm.scmeas(2).label;

ch1EUstring=SLm.scmeas(1).eu_string;

ch2EUstring=SLm.scmeas(2).eu_string;

%ch1EUval=SLm.scmeas(1).eu_val;

%ch2EUval=SLm.scmeas(2).eu_val;

%fs_val=SLm.scmeas(1).fs_val;

Xfer=SLm.xcmeas(1,2).xfer*ch2EUscalefac/ch1EUscalefac;

coh=SLm.xcmeas(1,2).coh;

disp([ch1label ' units are ' ch1EUstring '.'])

disp([ch2label ' units are ' ch2EUstring '.'])

disp(['Transfer function units are ' ch2EUstring '/' ch1EUstring '.'])


%modal=SLm.modal;

clear CenterFreq ch_ptr vdlg1_s1 ChanLabel exdlg2_s1 vdlg1_s2
clear ChanStat exdlg2_vis vdlg2_s1 Cmprssd_Notes grids vi_timestamp
clear EULabel hdlg1_s1 vna_pos SLm hdlg2_s1 xplot_axes
clear SampleRate hdlg2_vis xplot_s1 SystemClk key xplot_s2
clear UniformFlg num_io  ch1EUscalefac ch2EUscalefac
who
