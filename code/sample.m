clc;clear;

fs = 3000;

wo = 50/(fs/2);
bw = wo/40;
[num,den] = iirnotch(wo,bw);
