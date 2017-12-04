clear all
close all
clc

for o=1:3000

format long


file_name = 'Dados';
concate = num2str(o);
extensao = '.txt';
file = strcat(file_name,concate,extensao);

file = fopen(file, 'rt');
s{o}= textscan(file,' %s %s ');
fclose(file);



tf=0;
cont=1;
while tf==0
    
s1= 'ITERATION';
s2= s{o}{2}{cont};
tf = strcmp(s1,s2);

cont=cont+1;

end

cont;



for i= 1:25
    

    h{i} = s{o}{2}{i+cont+2};
    j{o}(i) = str2num(h{i});

    
end

     
     
     
     
file_name = 'resultado';
concate = num2str(o);
extensao = '.txt';
file = strcat(file_name,concate,extensao);


    novo_arquivo = fopen(file, 'w+'); % abrindo arquivo
         fprintf(novo_arquivo, '%f \n ', j{o}(1:25)); % escreve um no arquivo criado
fclose(novo_arquivo); % fecha o arquivo



 

     end
% conteudo(z) = h(3:25);% funçao que varia os parametros do modelo




%fprintf( '%f \n ', j(3:25)) ;