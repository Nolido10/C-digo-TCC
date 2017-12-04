%% Interface APDL ANSYS para MATLAB


for i = 1:3000
   path_exe = 'C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\';
   syst_com_string = ['"', path_exe, 'ANSYS162.exe" -b -i viga',num2str(i),'.txt -o Dados',num2str(i),'.txt'];
   status = system(syst_com_string);
   file_name = 'viga';
   concate = num2str(i);
   extensao = '.txt';
   file = strcat(file_name,concate,extensao);
   delete(file)
end;       
