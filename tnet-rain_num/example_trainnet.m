% ѵ��matlab�������� num
% ��һ����СΪ25*15

clear all
close all
clc

% rootpath='charSamples/*';
% [labels, images ,flag] = readimg(rootpath);
load plateData;
param_num.dim=35;
param_num.one_hot=34;

%% ���ɱ�׼���ݸ�ʽ��������mnist��
[train , test] = cdata(labels, images);
clear images labels

%% Ԥ����
[img_train, label_train, img_test, label_test, param_num]=...
    process(train, test, flag, param_num);
clear test train dim flag
% savevari('D:', img_train, label_train, img_test, label_test) % �洢���ݼ���txt

%% ������
param_num = ANN(img_train, label_train, img_test, label_test, param_num); % ѵ�������粢�õ�ʶ����
save param_num