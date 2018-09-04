% Kp = 5;
% Kr = 200;
% wc = 2*pi*0.8;
% num = [Kr*2*wc 0];
% den = [1 2*wc w0^2];
%PR controller, resonant + proportional 
% s_pr = tf(num,den) + tf([Kp],[1]); 
s_pr1 = pr_gen(2*pi*0.1);
[mag1,phase1,w1] = bode(s_pr1);

s_pr2 = pr_gen(2*pi*1);
[mag2,phase2,w2] = bode(s_pr2);

s_pr3 = pr_gen(2*pi*2);
[mag3,phase3,w3] = bode(s_pr3);

figure(1)
subplot(2,1,1);
plot(w1, 20*log10(mag1(:)) );
hold on;
plot(w2, 20*log10(mag2(:)) );
plot(w3, 20*log10(mag3(:)) );

xlim([10,10000])
set(gca, 'XScale', 'log')
ylabel('Magnitude (dB)')
legend('\omega_c=0.2\pi rad/s','\omega_c=2\pi rad/s','\omega_c=4\pi rad/s')
grid on;


subplot(2,1,2)
plot(w1, phase1(:));
hold on;
plot(w2, phase2(:));
plot(w3, phase3(:));

xlim([10,10000])
set(gca, 'XScale', 'log')
xlabel('Frequency (rad/s)')
ylabel('Phase (deg)')
legend('\omega_c=0.2\pi rad/s','\omega_c=2\pi rad/s','\omega_c=4\pi rad/s')
grid on;
%making the figure larger 
x0=10;
y0=10;
width=600;
height=400;
set(gcf,'units','points','position',[x0,y0,width,height])
%making the figure larger

print('nipr_bode','-depsc')  %save to eps

% figure(20)
% [mag,phase,wout] = bode(z_o);
% ax1 = subplot(2,1,1); % gain plot
%     plot(wout, 20*log10(mag(:)))
%     set(gca, 'XScale', 'log')
%     ylabel('Magnitude (dB)')
% ax2 = subplot(2,1,2); % Phase plot 
%     plot(wout, phase(:))
%     set(gca, 'XScale', 'log')
%     xlabel('Frequency (rad/s)')
%     ylabel('Phase (deg)')
%     grid on; 


function s_pr = pr_gen(wc)
Kp = 5;
Kr = 200;
w0 = 2*pi*50;
num = [Kr*2*wc 0];
den = [1 2*wc w0^2];
s_pr = tf(num,den) + tf([Kp],[1]); 
end