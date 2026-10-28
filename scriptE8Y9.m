% 1. Extraer los datos de la simulación 
% (Ajusta 'r_out', 'y_out' y 'u_out' al nombre exacto que le diste a tus bloques To Workspace)
r = out.r.Data; 
y = out.y.Data; 
u = out.u.Data; 

% 2. Calcular el Error Cuadrático Medio (ECM)
ecm = mean((y - r).^2);

% 3. Calcular el valor absoluto máximo de u(t)
u_max_abs = max(abs(u));

% 4. Mostrar los resultados en la ventana de comandos
fprintf('Error Cuadrático Medio (ECM): %.4f\n', ecm);
fprintf('Valor absoluto máximo de u(t): %.4f\n', u_max_abs);



t = 0:0.01:5;
w = (t >= 1 & t < 2);
fsw = sum(abs(diff(sign(u(w)))) > 0) / 2;
fprintf('Frecuencia de conmutacion de u(t): %.4f\n', fsw);