M1=load('E:\taobao\collar\foirier\140550735046.txt');
%M2=load('E:\taobao\collar\92739510966.txt');
M1=M1';
%M2=M2';
%d=pdist2(M1,M2);
files=dir('E:\taobao\collar\foirier\*.txt');
for i=1:length(files)
file=files(i).name;
file=['E:\taobao\collar\foirier\',file]%不加;就是输出出来，加了就是不输出
%读txt到矩阵中
M2=load(file);
M2=M2';
d=pdist2(M1,M2)
  %if d<0.06%phog距离
  %if d<0.7%gist距离
  if d<0.9%foirier距离    
      file=files(i).name;
      file(end-3:end)=[];
      file=['E:\taobao\collar\',file,'.jpg'];
      imshow(file)
      pause;
  end
%pause;
end