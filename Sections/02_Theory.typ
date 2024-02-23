
#set math.equation(numbering: "1.")
#set heading(numbering: "1.")
#set text(lang: "no")

= Teori

Forklaring av de fysiske prinsippene av metoden. teori

For å lage en temperatursensor, må man h

== Thermistor
En Thermistor er en komponent som endrer seg med temperaturen i omgivelsene rundt. Det er en halvleder der elektrontettheten øker ved høyere temperatur. 
Det betyr at jo høyere temperatur øker resistansen. Thermistoren er derimot ikke liner. @thermistor-graph.
Thermistoren er billig komponent som er enkel å implementere i en krets. 


Siden thermistoren er en uliniaer komponent må man bruke Steinarthart-Hart formelen, @Steinhart-tittel. 
#figure(
  image("../Images/thermistor-graph.png", width: 50%),
  caption: "Temperatur i thermistor vs Resistansen i thermistoren"
) <thermistor-graph> 

== Spenningsdeling
For å regne ut temperaturen, trenger man å finne resistansen til thermistoren, $R_"thermistor"$. 
Det er mange ulike måter å regne ut dette på. Når man velger formel må man tenke på de ulike feilkildene som kan oppstå. Man vet ikke om MyDAQ-en gir ut en fast spenning på 5V, den kan gi ut en spenning på 4.8V.
Siden MyDAQ-en har mulighet til å måle flere spenningskilder enn bare en, så så kan man sette thermistoren $R_"thermistor"$ og motstanden $R_1$ i serie. Dette gjør at man kan måle presist spenningen over begge, og bruke det til å regne ut en nøyaktig $R_"thermistor"$. 

$R_1$ er ikke nødvendig vis presist den oppgitte motstandsverdien, det er ofte noen prosentvise forskeller. For å gjøre utregningene så presise som mulig, bruker man et multimeter til å måle resistansen i motstanden. 

Ved at de er i sereie, gjør at strømmen som går igjennom motstandene er den samme. 
Det gir @strøm
$ I_"tot" = I_"thermistor" = I_1 $<strøm>
Ved bruk av Ohms lov, formel @ohmslaw
$ U = R dot I $ <ohmslaw>

Kan man regne formel @strøm med hensyn på motstand og spenning. 

$ U_"thermistor" / R_"thermistor" = U_1 / R_1 $ 

Så skal vi regne omformulere formelen med hensyn på motstanden i thermistoren.  

  $ R_"thermistor" = U_"thermistor"/U_2 dot R_2 $ <regner0>



== Steinhart-Hart formelen <Steinhart-tittel>
Steinhart–Hart formelen er en formel som modellerer den elektriske motstanden i en semikondoktur i dens varierende temperatur. 
Ved bruk av denne formelen @steinhart kan vi regne hva temperaturen er rundt en thermistor ved å måle spenningen over den. 
  $ 1/T = 1/(T_0) + 1/B dot (ln R/R_0) $ <steinhart>

T er temperaturen i thermistoren.
R er resistansen i thermistoren ved den temperaturen vi vil regne ut. 
$T_0$, $B$ og $R_0$ er essensielle konstanter i formelen. $B$ og $R_0$ er målinger gjort ved temperaturen $T_0$. Ved å lese i databladet kan man finne ut hva de forskjellige konstantene er. $B$ og $R_0$ er, ifølge databladet, målt når temeraturen - $T_0$ - er $25degree$. Siden $B$ er i Kelvin, må temperaturen også vaere det. Dermed er $T_0 = 25degree + 273.5degree = 298.5kelvin$.
Ved å lese på thermistoren, kan vi finne ut at $R_0$ er en $10k ohm$ ved $T_0 = 298.5kelvin$. I databladet kan man finne at $B$ er $3950kelvin$ ved $T_0 = 298.5$ og $R_0 = 10k ohm$
