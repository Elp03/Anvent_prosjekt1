= Programvare

short description of my program and its feautures. 


I programmet er det brukt mange ulike ((((blokker???))))

For å programere MyDAQ-en, bruker man en programvare med navn LabVIEW. Det endelige programmet er bestående av mange forskellige blokker. 

Hovedsaklig består koden av ulike variabler, en blokk som sender og tar i mot signaler fra MyDAQ-en ----

== LabVIEW <LabVIEW>
LabVIEW er en programmvare levert av ----. Med denne kan man programere en MyDAQ, @MyDAQ. 
Programmet består av en side der man lagrer tall kan endre på konstanter, imens den andre siden består av blokker man kan koble sammen, lage if-settninger, while-loops eller lignende. 
Prosjektet er bestående av 

== Steinartharts-Hart kodeblokk
I LabVIEW er det mulighet for å sammle mange kodeblokker i en blokk. 
Ved bruk av denne metoden samlet jeg hele Steinartharts-Harts formelen i en blokk som tokk inn noen variabler og returnerte en temperatur verdi. 

== Hovedkoden
MyDAQ-en tar å måler over komponentene, og sender de inn i programmet. Programmet vil splitte de to signalene for å utgjøre utregninger for å finne hva resistansen, $R_"thermistor"$.
$R_"thermistor"$ vil så bli puttet inn i Steinartharts-Harts kodeblokken. Den vil returnere den utregnede temperaturen i grader. 
