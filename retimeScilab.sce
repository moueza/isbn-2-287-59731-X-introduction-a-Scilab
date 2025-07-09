//isregular
clc
clf
Time = duration(0,0:10, 0)';
Temperature = [38 37.5 37.4 37.5 37.1 37.6 37.7 38.2 37.8 37 38.3]';
ts = timeseries(Time, Temperature, "VariableNames", ["Time", "Temp"]);
[a, b] = isregular(ts)
disp(a,b) // T  00:01:00

//durations=duration(0,0:.5:5,0)
d=duration(0,.5,0)
tsout = retime(ts, "regular",'linear', "TimeStep", d)
disp("tsout : ",tsout)







// with TimeStep
T = datetime(["2022-12-01 08:35:00"; "2022-12-01 08:57:15"; "2022-12-01 09:27:43"; ...
"2022-12-01 10:00:00"; "2022-12-01 10:14:56"]);

AmbientTemperature = [18; 18.5; 20; 20.2; 20.5];
FlowRate = [50; 52; 53; 55; 60];

ts = timeseries(T, AmbientTemperature, FlowRate, "VariableNames", ["Time", "AmbientTemp", "FlowRate"])
timestep = hours(1)
r = retime(ts, 'regular', 'linear', 'TimeStep', timestep)
disp("r",r)
