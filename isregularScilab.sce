//isregular
Time = duration(0,0:10, 0)';
Temperature = [38 37.5 37.4 37.5 37.1 37.6 37.7 38.2 37.8 37 38.3]';
ts = timeseries(Time, Temperature, "VariableNames", ["Time", "Temp"]);
[a, b] = isregular(ts)
 
 
