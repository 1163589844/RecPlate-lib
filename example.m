%% ���ƴ������
%
%
clear
close all
clc

%% ��ȡ����ͼ��
% [fn,pn,~]=uigetfile('ChePaiKu\*.jpg','ѡ��ͼƬ');
% Is=imread([pn fn]);%����ԭʼͼ��
% clear fn pn
Is='img/3.jpg';% ����ԭʼͼ��
% figure
% imshow(Is)
load param_char
load param_num

%% �ҵ�����λ��
Iplate=findplate(Is);
[Iplate,angle]=rotateimg(Iplate);
% plate=finetune(sbw);
figure
imshow(Iplate)

%% �����ַ��ָ�
[Ipcrop, Ipchar] = cropplate(Iplate);  clear Iplate;
% save Iplate Iplate

%% �����ַ�ʶ��
figure
resultc = recchar(Ipchar, param_char);
[resultp,~] = recplate(Ipcrop, param_num)
res=strcat(resultc,resultp(1), ' ',resultp(2), resultp(3), resultp(4), resultp(5), resultp(6));
% fprintf('ʶ������%s %s  %s %s %s %s %s \n',resultc, resultp);
figure
imshow(imread(Is));
title(res)
