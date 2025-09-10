# 🚖 Análise de Corridas da Uber — SQL + Power BI

## 📌 Contexto
Este projeto tem como objetivo analisar dados de corridas da Uber utilizando **consultas SQL** para responder perguntas de negócio 
e consolidar os insights em um **dashboard interativo no Power BI**.

---

## 🔍 Perguntas respondidas com SQL
Algumas das principais análises realizadas:

1. **Volume de corridas por dia da semana**  
2. **Horários de pico de demanda**  
3. **Regiões de origem e destino mais comuns**  
4. **Distância média das corridas por região**  
5. **Preço médio por corrida (análise de receita)**  
6. **Total de corrida e avaliação total por tipo de veículo**  
7. **Taxa de cancelamento e duração média das corridas**  

➡️ *Todas as queries estão documentadas no notebook [`Sql_Query.ipynb`](Sql_Query.ipynb).*

---

## 📊 Dashboard em Power BI
Os resultados foram consolidados em um dashboard no Power BI, incluindo:

- Faturamento por Mês 
- Cancelamento por Mês  
- Corridas por Mês  
- Distribuição das corridas por hora  
- Seleção por Tipo de Veículo, Data da Corrida e Motivo de Cancelamento  

📄 Veja o dashboard completo em [`Dashboard.pdf`](Dashboard.pdf).

Exemplo de visualização:

<p align="center">
  <img width="982" height="551" alt="image" src="https://github.com/user-attachments/assets/cdb2ee47-1df9-4cb7-bd46-e72c6a869bf9" />
</p>

---

## ⚙️ Tecnologias Utilizadas
- **SQL (MySQL)** → consultas e agregações  
- **Python (Jupyter Notebook)** → execução e organização das queries  
- **Power BI** → visualização e storytelling dos dados  
- **Excel/CSV** → dataset base  

---

## 💡 Principais Insights
- A maior concentração de corridas ocorre nos horários de pico entre as 17 e 19 horas.  
- Os veículos que obtiveram mais corridas foram os automáticos e os que obtiveram menos foram os Uber XL.  
- As corridas com as maiores distâncias se concentram nos meses de junho e julho, possivelmente relacionado a férias.  
- Curiosamente os meses que antecedem e sucedem as férias possuem uma maior taxa de cancelamento.  

---
