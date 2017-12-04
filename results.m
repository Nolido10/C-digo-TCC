close all
clear all;
clc;

    
file_name = 'Dados';
concate = num2str(1);
extensao = '.txt';
file = strcat(file_name,concate,extensao);

fid = fopen(file, 'rt');
% s = textscan(fid,'%s %s');

count = 0;
while ~feof(fid)
    
    line_ex = fgetl(fid)
    
       x = strcmp('*** FREQUENCIES FROM BLOCK LANCZOS ITERATION ***',line_ex)
        
    count = count + 1;
end

count

fclose(fid)

% 
% format long
% 
% for i= 1:25
%     
%     h{i} = s{2}{i+1078};
%     %j(i) = str2num(h{i});
% end
% 
% 
%  z = j'