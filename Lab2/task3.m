f=[0.110 0.310 1.012 3.075 10.01 30.07 99.9]*1000; % frequency vector [Hz]
Vin=[22 22 22 21.5 21 21 21];
dVin=[5 5 5 5 5 5 5]*0.2;
Vout=[22 22 20.5 15 6.2 2.15 0.66];
dVout=[5 5 5 2 1 0.5 0.1]*0.1;
format short e % change the default display to floating point (short) Hmag_expt=@(Vin,Vout) Vout./Vin; % magnitude of the transfer function er=erprop(Hmag_expt,Vin,dVin,Vout,dVout);% calculate uncertainty in magnitude
Hmag_expt=@(Vin,Vout) Vout./Vin;

er=errprop(Hmag_expt,Vin,dVin,Vout,dVout);
disp(er);
