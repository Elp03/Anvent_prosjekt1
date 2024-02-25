= Programvare

short description of my program and its feautures. 


For å programere MyDAQ-en -- Kapittel @MyDAQ --, bruker man en programvare med navn LabVIEW. 
Programmet er programert med mange ulike blokker. En blokk kan vaere en konstant, en while-løkke, tidsforsinkelse, en sammensettning av blokker, bolske variabler eller mer. 

== LabVIEW <LabVIEW>
LabVIEW er en programmvare levert av NI solutions. Ved bruk av programmvaren kan man programere en MyDAQ. Kapittel @MyDAQ. 
Programmet består av en side der man lagrer tall og kan endre på konstanter. Imens den andre siden består av blokker man kan koble sammen, lage if-settninger, while-loops eller lignende. 

Et prosjekt kan bestå av mange blokker og gjøre mange ulike utregninger sammtidig. 

Når et prosjekt består av mange blokker så kan man gruppere disse blokkene i en blokk. Denne blokken kan bli brukt på nytt i mange ulike prosjekter.
Blokken kan bli programert til å ta inn verdier og gi ut verdier. 

== Steinartharts-Hart kodeblokk
Steinhart–Hart formelen -- Kapitel @Steinhart-tittel --består av mange konstanter og matematiske blokker. 
Siden den består av mange blokker, ryddet jeg opp koden og laget formelen som en blok. Den tar inn den utregnede $R_"thermistoren"$, $B$, $T_0$ og $R_1$. Den returnerer $T$ i grader. 

((((BILDE HER))))

== Hovedkoden

Programmet til målestystemet består i hovesak av variabler, en MyDAQ-kontroller og en While-løkke. MyDAQ-kontrolleren sender og motar informasjon fra MyDAQ-en. 

MyDAQ-en tar å måler over komponentene, og sender de inn i programmet. Programmet vil splitte de to signalene for å utgjøre utregninger for å finne hva resistansen, $R_"thermistor"$.

$R_"thermistor"$ vil så bli puttet inn i Steinartharts-Harts kodeblokken. Den vil returnere den utregnede temperaturen i grader. 

Hele koden er satt i en while-løkke sånn at den kan ta målinger kontinuelig.
