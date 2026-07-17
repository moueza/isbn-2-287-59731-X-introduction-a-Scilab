clc
t=[0.0,.8,1,2] ;dimm=size(t)(2);
;

t20=[0.0,.8,1,1.5,2] ;dimm2=size(t)(2);
;
//I)

//t,y ... resample from into t20 :
M=[t;
 0.0,1.0,3.0,6];
 disp(M)
 
 f=M(2,:)
//timeseries is transposee of M

YMDHMS=zeros(dimm,6);//6 of YMDHMS
YMDHMS(:,6)=t

Year=2026*ones(dimm,1)
YMDHMS(:,1)=Year


Month=1*ones(dimm,1)
YMDHMS(:,2)=Month


Day=1*ones(dimm,1)
YMDHMS(:,3)=Day

disp(YMDHMS)


dt=datetime(YMDHMS) //or simpler = duration t
disp(dt)

ts_timeseries=timeseries(dt,f')
disp("ts_timeseries : ",ts_timeseries)

ts2_duration=timeseries(seconds(t)',f','VariableNames',["Time","y"]);//++++
disp("ts2_duration",ts2_duration)

//II) RESAMPLING...

ts20out = retime(ts2_duration, seconds(t20)','linear')
disp("ts20out : ",ts20out)


//III) SYNC 2 TTIMESERIES...diff
t30 =[1.5,2.5] ;dimm30=size(t)(2);
f30= [100,200]
ts30_duration=timeseries(seconds(t30)',f30','VariableNames',["Time","y"]);//++++
disp("ts30_duration",ts30_duration)
 

ts40_sync=synchronize(ts2_duration,ts30_duration,"union","linear")
disp("ts40_sync",ts40_sync)


//IV) SYNC 2 TTIMESERIES OF SAME VAR
clc;disp("ts2_duration:",ts2_duration);disp("ts30_duration:",ts30_duration)
ts41_duration=[ts2_duration;ts30_duration];disp("ts41_duration:",ts41_duration)
ts42_duration_sorted=sortrows(ts41_duration,1);//or gsort
disp("ts42_duration:",ts42_duration_sorted)
