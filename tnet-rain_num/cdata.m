function [train , test] = cdata(  labels, images)
% ����ѵ���������ݼ�
% --------------------------------------------------
% ������[train , test] = cdata( images, labels )
% @���� images    ����ͼ��
%       labels    �����ͼ���ǩ
% @��� train     �����ѵ��ͼ��ͱ�ǩ
%       test      ����Ĳ���ͼ��ͱ�ǩ
% ---------------------------------------------------
%                               ���� ��� @2017

%% ��������
randIdx=randperm(size(images,3));
for i=1:size(images,3)
    newimages(:,:,i)=images(:,:,randIdx(i));
    newlabels(i)=labels(randIdx(i));
end;

%% �ּ����� 
% �ּ�ѵ������
train_images=newimages(:,:,1:1500);
train_labels=newlabels(1:1500);
train={train_images train_labels};

% �ּ��������
test_images=newimages(:,:,1501:1700);
test_labels=newlabels(1501:1700);
test={test_images test_labels};

end

