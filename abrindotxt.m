close all
clear all
clc

COLUNA = 3000;
LINHAS = 25;

for o=1:COLUNA % qtdade de coluna
    file_name = 'resultado';
    concate = num2str(o);
    extensao = '.txt';
    file = strcat(file_name,concate,extensao);

    file = fopen(file, 'rt');
    s{o}= textscan(file,' %s ');
    fclose(file);

    for i=1:LINHAS %qtdade de linhas
         h{i} = s{o}{1}{i};
         j{o}(i) = str2num(h{i});
         z{o}=[j{o}'];
    end
end

testando = [z{:};];
%xlswrite('Pasta1.xlsx', testando );
Media = mean(testando');
Desvio= std(testando')';
   
%         for i =1:LINHAS;
%                 figure
%                 hist(testando(i,:))
%         end


          for i =1:25;
%                 figure
                
                mi{i}=min(testando(i,:));
                ma{i}=max(testando(i,:));
                
%                 X=mi:0.01:ma;
%                 
%                 histogram(testando(i,:),'Normalization','pdf') 
%                 hold on
%                 pd = fitdist(testando(i,:)','Kernel','Kernel','epanechnikov');
%                 y = pdf(pd,X);
%                 plot(X,y)
%                ylabel ('Quantidade de ocorrencias normalizada')
%                xlabel ('F(Hz)')
% %                 fx_theory = pdf('normal',X,mean(testando(i,:)'),std(testando(i,:)'));
% %                 plot(X,fx_theory)

m1{i} =[mi{i}'];
m2{i} =[ma{i}'];
          end        
                             
              testandot = [m1{:};]';                 
              testandoz = [m2{:};]';
                
oi=(testandot-Media')*100/(Media');%minimo
tchau=(testandoz-Media')*100/(Media'); %  maximo 

              %                 for t =7:13;
%                 figure
%                 histfit(testando(t,:),100,'kernel')
%         
%                 
%                 
%                 
%                end
% 





    




