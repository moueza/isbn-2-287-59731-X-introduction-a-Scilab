//https://help.scilab.org/docs/2025.1.0/en_US/stackedplot.html
n = 100;
t = datetime(2000, 1, 1) + caldays(1:n)';
y = floor(10 * rand(n, 3)) + 10;
ts = timeseries(t, y(:, 1), y(:, 2), y(:, 3), "VariableNames", ["Time", "Var 1", "Var 2", "Var3"]);
stackedplot(ts);
