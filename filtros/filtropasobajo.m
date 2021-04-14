
x=audioread('pajaro.wav');
L=length(x);
n=0:length(x)-1;

figure(1)
subplot(2,2,1)
plot(n,x)
grid

subplot(2,2,1)
fftx=abs(fft(x));
subplot(2,2,2)
plot(n/((L+1)/2),fftx)
grid

y = filtro_paso(x);  % llamado a función
subplot(2,2,3)
plot(n,y)
grid

subplot(2,2,1)
ffty=abs(fft(y));
subplot(2,2,4)
plot(n/((L+1)/2),ffty)
grid


figure(2)


plot(n/((L+1)/2),fftx)
grid
hold on
plot(n/((L+1)/2),ffty)
grid






% http://rymnikski2.blogspot.com/2015/04/filtro-digital-de-audio-butterworth.html

