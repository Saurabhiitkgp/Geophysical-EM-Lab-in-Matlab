clear all;
close all;

% N=3;
% M=zeros(2*N-1);
% rho=M(1:N);   
% l=M(N+1,length(M));

N=5;        % number of layer
M=[100,10,100,30,50,40,100,400,1000];      % First three value are resistivity of 3 layer and last two value are Thickness of the layer
rho=M(1:N);
l=M(N+1:length(M));

f=logspace(-3,3,1000);  % frequency
T = 1/f;  % Time Period

w=2*pi*f;

for j=1:length(w)

     q(N,:)=sqrt(4*pi*10^-7*1i*w(j)/rho(N));
     C(N,:)=1/q(N);

for k=1:N-1

    q(N-k,:)=sqrt(4*pi*10^-7*1i*w(j)/rho(N-k));
    C(N-k,:)=(1/q(N-k))*(q(N-k).*C(N-k+1)+tanh(q(N-k).*l(N-k)))/(1+q(N-k).*C(N-k+1)*tanh(q(N-k).*l(N-k)));

end

    z(j)=1i*w(j)*C(1);
    p_app(j)=4*pi*10^-7*abs(z(j))^2/w(j);

%   rho(j)=abs(p_app(j));
    phi(j)=(180/pi)*atan(imag(z(j))./real(z(j)));

end



% subplot(3,1,1)
% loglog(f,p_app,'r')
% xlabel("frequency")
% ylabel('Real App Res')
% zlabel('Imag App Res')
% 
% subplot(3,1,2)
% loglog(f,phi,'b')
% xlabel("frequency")
% ylabel('phi')

subplot(3,1,3)
loglog(T,p_app,'r',T,phi,'b')
legend('apparent resistivity','phi')