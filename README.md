# Proiect 7 – Analiza și Modelarea Seriilor de Timp

Acest repository conține un proiect aplicat pe serii de timp, structurat în două părți: o analiză de descompunere sezonieră în Excel și o modelare econometrică ARIMA în RStudio.

## Partea I – Descompunerea seriei de timp (Excel + Word)

Lucrarea pornește de la o serie lunară neajustată sezonier, preluată dintr-o bază de date oficială. Obiectivele au fost:
- identificarea schemei de descompunere (aditivă sau multiplicativă) folosind testul Buys-Ballot  
- calculul mediilor mobile pentru estimarea trendului  
- obținerea seriei dezezonalizate  
- realizarea unei previziuni pentru luna următoare  

Rezultatele au fost obținute în Excel și interpretate în documentul Word.

## Partea a II-a – Modelare econometrică în R

Pe baza aceleiași serii, a fost construit un model ARIMA în RStudio. Au fost parcurse următoarele etape:
- conversia vectorului în obiect ts cu frecvență lunară  
- analiza grafică și statistică a datelor  
- testarea staționarității cu `adf.test`  
- diferențierea seriei și retestare  
- estimarea modelului cu `auto.arima()`  
- prognoză pentru 12 luni  
- verificarea reziduurilor și a autocorelației  

Interpretările apar în documentul Word, alături de graficele și testele generate în R.

## Fișiere

- Excel serii de timp_Radoi_Gabriela.xlsx – fișierul cu analiza din Excel  
- Proiect serii de timp_Radoi_Gabriela.docx – interpretarea în Word (Partea I și II)  
- Proiect_serii_de_timp_Radoi_Gabriela.R – scriptul R pentru modelul ARIMA
