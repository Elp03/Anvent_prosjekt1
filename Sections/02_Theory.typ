= Teori

Forklaring av de fysiske prinsippene av metoden. teori


Bruker steinhart-hart formel. 
spenningsdeling 

Stein


For å måle motstanden til thermistoren, så brukte vi matte for å regne den ut. Det vi vet er at strømmen igennom den ene motstanden er den samme som igjennom thermistoren. Det gjør at vi kan bruke sammenhengen 
#align(center )[
$ I_1 = I_2 = I_"tot" $
$ U_1 / R_1 = U_2 / R_2 = I_"tot" $
]

Ved å regne ut med hensyn på r_1 så vil vi få formelen

#align(center)[
  $ R_1 = U_1/U_2 dot R_2 $
]

Ved å måle spenningen over begge motstandene så vil vi få en mer presis måling fordi vi vet ikke om mydaq en sender en spenning på 5v eller om 4.8v etc. Så får å få en mer nøyaktig måling måles det over begge. 
Med hjelp av mydaq så får man mulighet til å måle motstanden i R_2 det gjør det mer presist og man kan få en mer presis målign og beregning av R_1

== Spenningsdeling
For å regne ut temperaturen, trenger man å finne resistansen til thermistoren, $R_"thermistor"$. 
Det er mange ulike måter å regne ut dette på. Når man velger formel må man tenke på de ulike feilkildene som kan oppstå. Man vet ikke om MyDAQ-en gir ut en fast spenning på 5V, den kan gi ut en spenning på 4.8V.
Siden MyDAQ-en har mulighet til å måle flere spenningskilder enn bare en, så så kan man sette thermistoren $R_"thermistor"$ og motstanden $R_1$ i serie. Dette gjør at man kan måle presist spenningen over begge, og bruke det til å regne ut en nøyaktig $R_"thermistor"$. 

$R_1$ er ikke nødvendig vis presist den oppgitte motstandsverdien, det er ofte noen prosentvise forskeller. For å gjøre utregningene så presise som mulig, bruker man et multimeter til å måle resistansen i motstanden. 

Ved at de er i sereie, gjør at strømmen som går igjennom motstandene er den samme. 
Det gir formel @strøm
$ I_"tot" = I_"thermistor" = I_1 $<strøm>
Ved bruk av Ohms lov, formel @ohmslaw
$ U = R dot I $ <ohmslaw>

Kan man regne formel @strøm med hensyn på motstand og spenning. 

$ U_"thermistor" / R_"thermistor" = U_1 / R_1 $ 

Så skal vi regne omformulere formelen med hensyn på motstanden i thermistoren.  

  $ R_"thermistor" = U_"thermistor"/U_2 dot R_2 $ <regner0>


== Framgangsmåte ish. pr nå. 
Kan bruke sammenhengen 
u_1/r_1 = u_2/r_2 = I_tot
pg vi måler spenningne over begge u. Hvis vi ikke hadde gjort det så hadde det bare vaert basert på u_tot som ikke er helt presis pg 

Bruker Steinhart–Hart equation
https://en.wikipedia.org/wiki/Steinhart%E2%80%93Hart_equation
For å regne ut temperaturen. 
Fant de ulike delene ved å lete i databladet til thermistoren. 
Dette ble så bygget opp i labview. 

Steinarthartsformula: 
T_0 = 25+273
R = den vi måler 
B = 3950
R-0 = 10k som alle målinger er i 25 grader



== Steinhart-Hart formelen
Steinhart–Hart formelen er en formel som modellerer den elektriske motstanden i en semikondoktur i dens varierende temperatur. 
Ved bruk av denne formelen @steinhart kan vi regne hva temperaturen er rundt en thermistor ved å måle spenningen over den. 

#align(center)[
  $ 1/T = 1/(T_0) + 1/B dot (ln R/R_0) $ <steinhart>
]
Der T er temperaturen rund thermistoren. 
$T_0$ er temperaturen alle målingene er tatt i, som ifølge datablad er 25$degree$
(((((KAksje at man fant ting i formelarket i )))))
Dette gjør at man kan lese av databladet til at B er 3950. 

$R_0$ er motstanden i temperaturen 25$degree$ som er oppgitt i databladet som 10k$ohm$ 

R er den faktiske motstanden som blir målt. Ved bruk av formelen @regner0 kan vi få ut motstanden målt. 