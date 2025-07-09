xDuration=[1 10  0; 2 20 0]
dt = datetime("12 December 2022", "InputFormat", "dd MMMM yyyy", "OutputFormat", "MM/dd/yy")
//xDatetime=[0 0 0 10 10 00 128;0 0 0 11 11 00 300]
//xDatetime2=[0 0 0 10 10 00 ;0 0 0 11 11 00 ]//j 0 dc pas vraiment d annee
xDatetime3=[2020 1 1 10 10 00 ;2020 1 1 11 11 00;2020 1 1 11 11 00.3005 ]
disp(xDatetime3)
dt2Matrix=datetime(xDatetime3)
disp(dt2Matrix)
