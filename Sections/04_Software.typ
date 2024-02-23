= Programvare

short description of my program and its feautures. 


I programmet er det brukt mange ulike ((((blokker???))))

For å programere MyDAQ-en, bruker man en programvare med navn LabVIEW. Det endelige programmet er bestående av mange forskellige blokker. 

Hovedsaklig består koden av ulike variabler, en blokk som sender og tar i mot signaler fra MyDAQ-en ----

== LabVIEW <LabVIEW>


== Steinartharts-Hart kodeblokk
I LabVIEW er det mulighet for å sammle mange kodeblokker i en blokk. 
Ved bruk av denne metoden samlet jeg hele Steinartharts-Harts formelen i en blokk som tokk inn noen variabler og returnerte en temperatur verdi. 

== Hovedkoden
MyDAQ-en tar å måler over komponentene, og sender de inn i programmet. Programmet vil splitte de to signalene for å utgjøre utregninger for å finne hva resistansen, $R_"thermistor"$.
$R_"thermistor"$ vil så bli puttet inn i Steinartharts-Harts kodeblokken. Den vil returnere den utregnede temperaturen i grader. 
