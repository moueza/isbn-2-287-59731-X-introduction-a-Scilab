T = datetime(2022, 12, 1:5)';
AmbientTemperature = [18; 18.5; 20; 20.2; 20.5];
FlowRate = [50; 52; 53; 55; 60];
ts = timeseries(T, AmbientTemperature, FlowRate)




T2 = [duration(1, 0, 0):minutes(15):duration(2, 0, 0)]';
AmbientTemperature2 = [18; 18.5; 20; 20.2; 20.5];
FlowRate2 = [50; 52; 53; 55; 60];
ts2 = timeseries(T2, AmbientTemperature2, FlowRate2)
