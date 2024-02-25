
#set math.equation(numbering: "[1]")
#set heading(numbering: "1.")
#set text(lang: "no")

= Teori

Når man lager en temperatursensor er det mange ting man må tenke på. Hvilken sensor, hvordan skal man måle, hva fysiske prinsipper er noe av det. Denne delen forklarer noe av teorien ved å lage denne temperaturmåleren.

== Thermistor <thermistor>
En Thermistor er en komponent som endrer seg med temperaturen i omgivelsene rundt. Det er en halvleder der elektrontettheten øker ved høyere temperatur. Thermistoren er billig komponent som er enkel å implementere i en krets. 

Når temperaturen i thermstoren øker, øker resistansen. Av databladet får man grafen av denne sammenhengen. Figur @thermistor-graph. Som vi kan se er denne ikke proposjonal. 
Siden thermistoren er en uliniaer komponent må man bruke Steinarthart-Hart formelen, @Steinhart-tittel.

#figure(
  image("../Images/thermistor-graph.png", width: 50%),
  caption: "Temperatur i thermistor vs Resistansen i thermistoren"
) <thermistor-graph> 


== Spenningsdeling
For å regne ut temperaturen, trenger man å vite resistansen til thermistoren, $R_"thermistor"$. 

For å finne ut beste måte å regne ut dette på, må man tenke på de ulike feilkildene som kan oppstå.
I prosjektet er det brukt en spenningskilde fra MyDAQ. Kaittel @MyDAQ. 
Det er ikke sikkert MyDAQ-en gir ut en fast spenning på 5V. Det er mulig at den gir ut en spenning på 4.8V. 

Siden MyDAQ-en har muligheten til å måle flere spenningskilder, så kan man sette thermistoren $R_"thermistor"$ og motstanden $R_1$ i serie. Ved å så måle spenningen over hver enkelt komponent, kan man bruke den til å regne en nøyaktig $R_"thermistor"$. 

$R_1$ er ofte ikke helt nøyaktig den oppgitte motstandsverdien. Ofte er det noen prosentvise forskeller. For å gjøre utregningene så presise som mulig, bruker man et multimeter til å måle resistansen i motstanden. 

Ved at komponentene er i serie, betyr det at strømmen som går igjennom motstandene er er den samme. Dette gir formel @strøm.
$ I_"tot" = I_"thermistor" = I_1 $<strøm>
Ved bruk av Ohms lov -- Formel @ohmslaw -- er det mulig å få et utrykk med motstander og spenninger. Formel @motstand-og-spenning.
$ U = R dot I $ <ohmslaw>

$ U_"thermistor" / R_"thermistor" = U_1 / R_1 $ <motstand-og-spenning>

Så skal vi regne omformulere formelen med hensyn på motstanden i thermistoren.  
Siden vi har lyst til å finne ut $R_"thermistor"$ omformulerer formel @motstand-og-spenning med hensyn på $R_"thermistor"$.
Det gir oss formel @regner0. 

  $ R_"thermistor" = U_"thermistor"/U_2 dot R_2 $ <regner0>



== Steinhart-Hart formelen <Steinhart-tittel>
Steinhart–Hart formelen er en formel som modellerer den elektriske motstanden i en semikondoktur i dens varierende temperatur. ((((Referanse))))
Ved bruk av formel @steinhart kan vi regne hva temperaturen er rundt en thermistor ved å måle spenningen over den. 
  $ 1/T = 1/(T_0) + 1/B dot (ln R/R_0) $ <steinhart>

T er temperaturen i thermistoren.
R er resistansen i thermistoren ved den temperaturen vi vil regne ut. 

$T_0$, $B$ og $R_0$ er essensielle konstanter i formelen. $B$ og $R_0$ er målinger gjort ved temperaturen $T_0$. Ved å lese i databladet kan man finne ut hva de forskjellige konstantene er. 
$B$ og $R_0$ er, ifølge databladet, målt når temeraturen --$T_0$-- er $25degree$. Siden $B$ er i Kelvin, må temperaturen også vaere det. Dermed er $T_0 = 25degree + 273.5degree = 298.5kelvin$.

Ved å lese på thermistoren, kan vi finne ut at $R_0$ er en $10k ohm$ ved $T_0 = 298.5kelvin$. 

I databladet kan man finne at $B$ er $3950kelvin$ ved $T_0 = 298.5$ og $R_0 = 10k ohm$
