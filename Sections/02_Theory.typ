= Teori

Bruker steinhart-hart formel. 
spenningsdeling 

Stein


For å måle motstanden til thermistoren, så brukte vi matte for å regne den ut. Det vi vet er at strømmen igennom den ene motstanden er den samme som igjennom thermistoren. Det gjør at vi kan bruke sammenhengen 
#align(center )[
$ I_1 = I_2 = I_"tot" $
$U_1 / R_1 = U_2 / R_2 = I_"tot" $
]

Ved å regne ut med hensyn på r_1 så vil vi få formelen

#align(center)[
  $R_1 = U_1/U_2 dot R_2 $
]

Ved å måle spenningen over begge motstandene så vil vi få en mer presis måling fordi vi vet ikke om mydaq en sender en spenning på 5v eller om 4.8v etc. Så får å få en mer nøyaktig måling måles det over begge. 
Med hjelp av mydaq så får man mulighet til å måle motstanden i R_2 det gjør det mer presist og man kan få en mer presis målign og beregning av R_1



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

