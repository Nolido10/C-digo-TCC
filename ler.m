%% teste arquivos
close all
clear all;
clc;
global template_form

arquivo = fopen('Placa10mm_Shell181.txt','r+');
template_form = fscanf(arquivo,'%c');
fclose(arquivo)


for x= 1:3000
    
    file_name = 'viga';
    concate = num2str(x);
    extensao = '.txt';
    file = strcat(file_name,concate,extensao);
    novo_arquivo = fopen(file, 'w+'); % abrindo arquivo
 
 
    i = random('gamma',media^2/desvio^2,desvio^2/media);
  
    gg = num2str(i);
     

    out=strrep(template_form,'64565756878',gg);
   
    
    fprintf(novo_arquivo, '%c',out); % escreve um no arquivo criado
    fclose(novo_arquivo); % fecha o arquivo
end
