  FigHandle = figure;
  set(FigHandle, 'Position', [0, 0, 640, 640]);

mais10 = csvread('10compras.csv');


nservidores = mais10 ( :, [2]); 
wq = mais10 ( : ,[7]);
figure(1)
p = plot(nservidores,wq)
hline = refline([0 90]);
hline.Color = 'r';
p(1).LineWidth = 3;

l = legend('Wq, #unidades <= 10' ,'limite max. permitido (90s)');

set(l,'FontSize',12);

ylabel('Wq -Tempo  m\''{e}dio de espera na fila (s)' ,'interpreter','latex');
ylim([0 100]);
xlabel('#Servidores');
set(gca,'fontsize',12);
set(gca,'XTick',nservidores)
title({'An\''{a}lise gr\''{a}fica da evolu\c{c}\~{a}o do tempo m\''{e}dio de espera na fila,' 'mediante o aumento do n\''{u}mero de servidores envolvidos,' 'para clientes com n\''{u}mero de unidades de artigos inferior ou igual a 10'},'interpreter','latex');

