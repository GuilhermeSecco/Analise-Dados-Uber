create database uber;

use uber;

select * from corridas;

select distinct motivoCancelamentoCliente from corridas;

update corridas
set motivoCancelamentoCliente = 'Motorista não estava se dirigindo ao local de inicio'
where motivoCancelamentoCliente = 'Driver is not moving towards pickup location';

update corridas
set motivoCancelamentoCliente = 'Motorista pediu para cancelar'
where motivoCancelamentoCliente = 'Driver asked to cancel';

update corridas
set motivoCancelamentoCliente = 'Ar Condicionado Não Funcionando'
where motivoCancelamentoCliente = 'AC is not working';

update corridas
set motivoCancelamentoCliente = 'Mudança de Planos'
where motivoCancelamentoCliente = 'Change of plans';

update corridas
set motivoCancelamentoCliente = 'Endereço Errado'
where motivoCancelamentoCliente = 'Wrong Address';

select distinct motivoCancelamentoMotorista from corridas;

update corridas
set motivoCancelamentoMotorista = 'Problema pessoal ou relacionado ao carro'
where motivoCancelamentoMotorista = 'Personal & Car related issues';

update corridas
set motivoCancelamentoMotorista = 'Problema com o cliente'
where motivoCancelamentoMotorista = 'Customer related issue';

update corridas
set motivoCancelamentoMotorista = 'Número de pessoas acima do permitido'
where motivoCancelamentoMotorista = 'More than permitted people in there';

update corridas
set motivoCancelamentoMotorista = 'Cliente tossindo ou doente'
where motivoCancelamentoMotorista = 'The customer was coughing/sick';

update corridas
set motivoNaoFinalizado = 'Veículo Quebrado'
where motivoNaoFinalizado = 'Vehicle Breakdown';

update corridas
set motivoNaoFinalizado = 'Pedido pelo Cliente'
where motivoNaoFinalizado = 'Customer Demand';

update corridas
set motivoNaoFinalizado = 'Outro Motivo'
where motivoNaoFinalizado = 'Other Issue';

select dia as "Data", count(idCorrida) as "Total de Corridas" from corridas
group by Dia
order by count(idCorrida) desc
limit 5;

select hour(Horario) as Horas, count(idCorrida) as "Total de Corridas" from corridas
group by hour(Horario)
order by count(idCorrida) desc
limit 5;

select avg(valorViagem) as "Preço médio das viagens" from corridas;

select avg(distanciaViagem) as "Distância média das viagens" from corridas;

select localInicio as "Local de Inicio", count(idCorrida) as "Total de Corridas" from corridas
group by localInicio
order by count(idCorrida) desc
limit 5;

select localFim as "Local de Chegada", count(idCorrida) as "Total de Corridas" from corridas
group by localFim
order by count(idCorrida) desc
limit 5;

select veiculo as "Tipo de Veiculo", count(idCorrida) as "Total de Corridas", avg(notaMotorista) as "Nota média do veículo" from corridas
group by veiculo
order by count(idCorrida) desc;

select motivoCancelamentoCliente as "Motivo do Cancelamento pelo Cliente", count(idCorrida) as "Total" from corridas
where motivoCancelamentoCliente is not null
group by motivoCancelamentoCliente
order by count(idCorrida) desc;

select motivoCancelamentoMotorista as "Motivo do Cancelamento pelo Motorista", count(idCorrida) as "Total" from corridas
where motivoCancelamentoMotorista is not null
group by motivoCancelamentoMotorista
order by count(idCorrida) desc;

select localInicio as "Local de Inicio", avg(notaCliente) as "Nota Média" from corridas
group by localInicio
order by avg(notaCliente) desc
limit 5;

select localInicio as "Local de Inicio", avg(notaCliente) as "Nota Média" from corridas
group by localInicio
order by avg(notaCliente) asc
limit 5;

select localInicio as "Local de Inicio", avg(tempoMedioEspera) as "Tempo médio de Espera" from corridas
group by localInicio
order by avg(tempoMedioEspera) desc;

select localInicio as "Local de Inicio", avg(tempoMedioEspera) as "Tempo médio de Espera" from corridas
group by localInicio
order by avg(tempoMedioEspera) Asc;

select sum(canceladoCliente) as "Cancelamentos", hour(horario) as "Horário" from corridas
group by hour(horario)
order by sum(canceladoCliente) desc;