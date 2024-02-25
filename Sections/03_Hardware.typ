= Maskinvare


Oppsettet jeg hade. 
Hovrdan ejg byggde sustemet. legg ved bilde. 
schematics. 
bulletpoints? 

((((Bilde av Hardware))))

Hardware består av en MyDAQ, et breadboard, en 10k thermistor -- Kapitel @thermistor -- og en motstand på 10k. 

Thermistoren er satt i serie med motstanden på breadboardet. Breadboardet er koblet til porter på MyDAQ-en. Ved hjelp av ledninger, blir det koblet opp målingspunkter for å måle spenningene over komponentene. Disse punktene blir koblet til den analoge inngangen på MyDAQ-en. 

(((schematics)))

Thermistoren blir på senere tidspunkt koblet på lange lednigner sånn at det skal bli enklere å legge den i en kopp. 

MyDAQ-en blir koblet til en pc med instalerte LabVIEW programmer. 

== MyDAQ <MyDAQ>
En MyDAQ er et verktøy utviklet hovedsaklig med tanke på studenter.(((referanse)))
Den er for å hjelpe studenter med ingeniørproblemer og laere hvordan man skal løse probmlemer. 

MyDAQ-en er utviklet av NI solutions, og produsert av Texas Instruments. 


Ved bruk av NI solutions sine applikasjoner er det mange mulige ting man kan gjøre med MyDAQ-en. En har mulighet til å bruke MyDAQ-en som et et Osiloscop eller et multimeter. Den har mulighet for å bli programert som en mikrokontroller. 

MyDAQ-en er utstyrt med mange ulike porter. Den kan ta inn lyd og sende lyd. Inngang til multimeter. Mulighet for å koble på et breadboard rett inn i systemet. Med et breadboard har den analoge porter, digitale porter, 5V og $plus.minus$15V. ((referere til MyDAQ bilde))

For å programere MyDAQ-en brukes det en USB type B fra MyDAQ-en til en PC med USB type A. Med dette gjør det mulig å bruke programmvaren LabVIEW. Kapitel @LabVIEW. 
(((Bilde av MyDAQ)))