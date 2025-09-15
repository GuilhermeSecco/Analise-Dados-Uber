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
Os resultados foram consolidados e separados em um dashboard no Power BI por meio de diferentes categorias acessadas pelo uso de um menu seletor que inclui as seções:
- Geral
- Veículos
- Corridas
- Cancelamentos

📄 Veja o dashboard completo em [`Dashboard.pdf`](Dashboard.pdf).

Exemplo de visualização:

<p align="center">
  ![Dashboard](https://github.com/user-attachments/assets/9c964257-d704-4306-8c0e-20d6e4deb7ad)
</p>

---

## ⚙️ Tecnologias Utilizadas
- **SQL (MySQL)** → consultas e agregações  
- **Python (Jupyter Notebook)** → execução e organização das queries  
- **Power BI** → visualização e storytelling dos dados  
- **Excel/CSV** → dataset base  

---

## 💡 Principais Insights
- Os dias com o maior número de corridas são Segunda, Quarta e Sábado.
- A maior concentração de corridas ocorre nos horários entre 17 e 19 horas.  
- Os veículos que obtiveram mais corridas foram os automáticos e os que obtiveram menos foram os Uber XL.
- As corridas com as maiores distâncias se concentram nos meses de junho e julho, possivelmente relacionado a férias.
- Os meses de Janeiro, Maio e Julho possuem uma maior taxa de cancelamento.  

---
