Time = datetime(2023, 6, 1:3)';
A = [1; 2; 3];
B = [10; 20; 30];
C = [-10;-20;-30];
ts = timeseries(Time,A,B,C, "VariableNames", ["Time", "A", "B", "C"])
T = timeseries2table(ts)
