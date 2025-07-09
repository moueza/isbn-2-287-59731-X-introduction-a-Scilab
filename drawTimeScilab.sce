t = datetime(2022, 1, 1):datetime(2022, 8, 31);
n = size(t, "*");
y1 = floor(10 * rand(n, 2)) + 10;
ts1 = timeseries(t, y1(:, 1), y1(:, 2), "VariableNames", ["Time", "Result_1", "Result_2"]);

y2 = floor(10 * rand(n, 2)) + 20;
ts2 = timeseries(t, y2(:, 1), y2(:, 2), "VariableNames", ["Time", "Result_1", "Result_2"]);
stackedplot(ts1, ts2);
stackedplot(ts1, ts2, "CombineMatchingNames", %f);
