%��ָ����ͼ���ļ�ת��Ϊ�Ҷ�ͼ��
%filename:ͼ���ļ���
%����:�����ѧ  �ｨ��
%ʱ��:2007��7��9��
function I=im2gray(filename)

colortype=imfinfo(filename);
colortype=colortype.ColorType;%��ȡͼ����ɫ����

%�����ж�
switch(colortype)
    case 'truecolor'
        I=rgb2gray(imread(filename));
    case  'indexed'
        [I,map]=imread(filename);
        I=ind2gray(I,map);
    otherwise
        I=imread(filename);
end
clear filename;clear colortype;