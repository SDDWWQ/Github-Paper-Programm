M1=load('E:\taobao\collar\foirier\140550735046.txt');
%M2=load('E:\taobao\collar\92739510966.txt');
M1=M1';
%M2=M2';
%d=pdist2(M1,M2);
files=dir('E:\taobao\collar\foirier\*.txt');
for i=1:length(files)
file=files(i).name;
file=['E:\taobao\collar\foirier\',file]%����;����������������˾��ǲ����
%��txt��������
M2=load(file);
M2=M2';
d=pdist2(M1,M2)
  %if d<0.06%phog����
  %if d<0.7%gist����
  if d<0.9%foirier����    
      file=files(i).name;
      file(end-3:end)=[];
      file=['E:\taobao\collar\',file,'.jpg'];
      imshow(file)
      pause;
  end
%pause;
end