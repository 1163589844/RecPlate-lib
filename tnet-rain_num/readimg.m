function [labels, images ,flag] = readimg(rootpath)
%  ��ʽ��ͼ��
%  �����С��һ����ĳ��Ƶ��ַ�ͼ��
%   
%%
dirs = dir(rootpath); % �趨��Ŀ¼������ȡ��Ŀ¼�µ��ļ���
l = length(dirs);   % �ļ��и���
labels=[]; % ��ʼ��
images(25,15,1)=0; % ��ʼ��
num=1;
flag=[];

%% ѭ����ȡÿһ��Ŀ¼�µ�pngͼ��
for i=1:l    
    % ���ɵ�ǰĿ¼�µ�·��
    path=strcat('charSamples/ ',dirs(i).name, '/');
    files = dir(strcat(path,'*.png')); % ��ȡ��i��·���������ļ�����    
    n=length(files); % �õ����ļ�����
    % �ܽ���ѭ��˵����ǰ·����png�ļ�
    if n~=0 % ��ǰĿ¼�´���png�ļ�����������0��
    %��ȡͼ�񲢷�����25*15
    label=[];
    flag=[flag dirs(i).name ];
    for j=1:n
        img=imresize(imread(strcat(path, files(j).name)),[25,15]); %����ͼ��
        images(:,:,num)=img(:,:);
        label=[label dirs(i).name];
        num=num+1;
    end
    % �洢��ǰ��ǩ
    labels=[labels label];
    end
end

% % չʾBÿ��Ԫ�صĵ����ͼ��
% figure(1)
% j=1;
% for i=500:515
%     subplot(3,6,j)
%     j=j+1;
%     imshow(uint8(images(:,:,i)));
% end

end



