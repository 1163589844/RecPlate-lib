% ѵ��matlab��������

clear all
close all
clc

% rootpath='samples/*';
% [labels, images ,flag] = readimg(rootpath);
load plate_data
param_.dim=30;
param_.one_hot=length(flag);

%% ���ɱ�׼���ݸ�ʽ��������mnist��
[train , test] = cdata(labels, images);clear images labels

%% Ԥ����
[img_train, label_train, img_test, label_test, param_]=...
    process(train, test, flag, param_);
clear test train dim flag
% savevari('D:', img_train, label_train, img_test, label_test) % �洢���ݼ���txt

%% ������
param_ = ANN(img_train, label_train, img_test, label_test, param_); % ѵ�������粢�õ�ʶ����
save param_