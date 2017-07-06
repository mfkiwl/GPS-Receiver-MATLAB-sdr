function[ calcFreq ] = FrequencyFind_FLL(initSine, sinMap, cosMap, sinMap2, cosMap2)

%t = [0:(1/fs):(1000/fs-1/fs)];
fs = 8*10^6;    % sampling frequency
%%

Q1 = initSine.*cosMap;
I1 = initSine.*sinMap;
Q2 = initSine.*cosMap2;
I2 = initSine.*sinMap2;
Qps1 = sum(Q1);
Ips1 = sum(I1);
Qps2 = sum(Q2);
Ips2 = sum(I2);
%%
dot = Ips1*Ips2 + Qps1*Qps2;
cross = Ips1*Qps2 - Ips2*Qps1;

% calcFreq = atan2(dot, cross)/(8000/fs);

met2 = cross*sign(dot);
calcFreq =(met2)/(8000/fs);

% calcFreq = asin(cross)*10^(3);

end
