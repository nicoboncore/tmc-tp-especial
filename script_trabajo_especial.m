% script_trabajo_especial
clear
clc

epsilon = 0.1;
DNI = 40669266;

[probabilidades_parciales,probabilidad_estimada] = calcular_probabilidad_fallo_doble(epsilon, DNI); 


fprintf('Probabilidad estimada = %f: \n', probabilidad_estimada);


figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

epsilon = 0.01;
[probabilidades_parciales,probabilidad_estimada] = calcular_probabilidad_fallo_doble(epsilon, DNI); 


fprintf('Probabilidad estimada = %f: \n', probabilidad_estimada);


figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

epsilon = 0.001;
DNI = 40669266;

[probabilidades_parciales,probabilidad_estimada] = calcular_probabilidad_fallo_doble(epsilon, DNI); 


fprintf('Probabilidad estimada = %f: \n', probabilidad_estimada);


figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

desvio_estandar_primeros_20 = std(probabilidades_parciales(1:20));
desvio_estandar_ultimos_20 = std(probabilidades_parciales(end-19:end));