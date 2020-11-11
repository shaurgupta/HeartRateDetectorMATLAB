%to plot the ECG signal from the sample
sig=load('ecg.txt');
plot(sig)
xlabel('Samples');
ylabel('Electrical activity');
title('ECG signal sampled at 100Hz')
hold on 
plot(sig,'ro')