
%program to determine the BPM of an ECG signal 
%count of the dominent peaks in the signal(these corresponds to heart beats)
beat_count=0;
%peaks are defined to be samples greater  than their two nearest neighbours
for k=2:length(sig)-1
    if(sig(k)>sig(k-1) & sig(k)>sig(k+1) & sig(k) > 1)
        k
        disp('Prominent peak found');
        beat_count=beat_count+1;
    end
end
%divide the beats counted by the signal duration (in minutes)
fs=100;
N=length(sig);
duration_in_seconds=N/fs;
duration_in_minutes=duration_in_seconds/60;
BPM=beat_count/duration_in_minutes 