create database uber;

use uber;

select * from corridas;

select dia as "Data", count(idCorrida) as "Total de Corridas" from corridas
group by Dia
order by count(idCorrida) desc
limit 5;

select hour(Horario) as Horas, count(idCorrida) as "Total de Corridas" from corridas
group by hour(Horario)
order by count(idCorrida) desc
limit 5;

select avg(valorViagem) as "Preço médio das viagens" from corridas;

select avg(distanciaViagem) "Distância média das viagens" from corridas;

select localInicio as "Local de Inicio", count(idCorrida) as "Total de Corridas" from corridas
group by localInicio
order by count(idCorrida) desc;

select localFim as "Local de Chegada", count(idCorrida) as "Total de Corridas" from corridas
group by localFim
order by count(idCorrida) desc;

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