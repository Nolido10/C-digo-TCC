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
s{o}= textscan(file,' %s %s %s');
fclose(file);



 tf=0;
 cont=1;
 while tf==0
     
 s1= 'Material';
 s2= s{o}{3}{cont};
 tf = strcmp(s1,s2);
 
 cont=cont+1;
 
 end
 
 cont;
 
 
 
 
     
  h{o}= s{o}{3}{11+cont};
  j{o}= str2num(h{o});
 
    z{o}=[j{o}'];
 
end
 




testando = [z{:};];

  
  
                                
                mi=min(testando);
                ma=max(testando);
                
                X=mi:0.01:ma;
                
                histogram(testando,'Normalization','pdf') 
                hold on
                pd = fitdist(testando','Kernel','Kernel','epanechnikov');
                y = pdf(pd,X);
                plot(X,y)
                
               ylabel ('Quantidade de ocorrencias normalizada')
               xlabel ('Densidade kg/m^3')


