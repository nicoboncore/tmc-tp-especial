function [probabilidades_parciales,probabilidad_estimada] = calcular_probabilidad_fallo_doble(epsilon, DNI) 
  
  probabilidades_parciales = [];
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  contador = 0;
   
  tic
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, contador)
          
        probabilidad_anterior = probabilidad_actual;
        autorizacionDNI=my_mex_service(DNI);
        autorizacionDNI2=my_mex_service(DNI);
     
        contador=contador+1;        
        
              if ~(autorizacionDNI && autorizacionDNI2) 
                casos_favorables = casos_favorables + 1;
              end
                    
         probabilidad_actual = casos_favorables / contador;
    
        probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
        
        
  end
  
    probabilidad_estimada = probabilidad_actual;
toc
end