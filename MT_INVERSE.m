clear all
close all
% N=3;
% M=zeros(2*N-1);
% rho=M(1:N);   
% l=M(N+1,length(M));

freq=xlsread("MT_data.xlsx", 'A1:A30');  %frequency
app_res=xlsread('MT_data.xlsx','B1:B30')';  % apparent resistivity
phase=xlsread('MT_data.xlsx','C1:C30');  %phase

N=3;
M=[117,5.3,346,500,300];
rho=M(1:N);
l=M(N+1:length(M));
%f=logspace(-3,3,1000);  % frequency

w=2*pi*freq;

for j=1:length(w)

     q(N)=sqrt(4*pi*10^-7*1i*w(j)/rho(N));
     C(N)=1/q(N);

for k=1:N-1

    q(N-k,:)=sqrt(4*pi*10^-7*1i*w(j)/rho(N-k));
    C(N-k,:)=(1/q(N-k))*(q(N-k).*C(N-k+1)+tanh(q(N-k).*l(N-k)))/(1+q(N-k).*C(N-k+1)*tanh(q(N-k).*l(N-k)));

end

    z(j)=1i*w(j)*C(1);
    app_RES(j)=4*pi*10^-7*abs(z(j))^2/w(j);

%   rho(j)=abs(p_app(j));
    phi(j)=(180/pi)*atan(imag(z(j))./real(z(j)));

end


%E=rmse(app_res,app_RES);  %RMS error

subplot(2,1,1)
loglog(freq,app_RES,'r',freq, app_res,'b','Linewidth',2)
legend('Predicted','Field Data','Linewidth',2)
xlabel("frequency")
ylabel('App Res')

subplot(2,1,2)
loglog(freq,phi,'y',freq,phase,'m')
legend('Predicted','Field Data')
xlabel("frequency")
ylabel('phase')

