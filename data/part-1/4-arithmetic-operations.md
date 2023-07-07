---
path: "/part-1/4-arithmetic-operations"
title: "Rekenkundige bewerkingen"
hidden: false
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie:

- Ben je in staat variabelen te gebruiken in verschillende rekenkundige bewerkingen.
- Weet je hoe je kunt omgaan met getallen in invoer van de gebruiker.
- Weet je hoe je waarden kunt omzetten naar andere fundamentele gegevenstypen.

</text-box>

In de vorige secties heb je voorbeelden gezien van basisrekenkunde. In de volgende tabel zie je de meest voorkomende rekenkundige operatoren in Python, met voorbeelden:

| Operator      | Doel       | Voorbeeld      | Resultaat |
|:-------------:|---------------|--------------|-------|
| `+`           | Optellen      | `2 + 4`      |`6`    |
| `-`           | Aftrekken   | `10 - 2.5`   |`7.5`  |
| `*`           | Vermenigvuldigen | `-2 * 123`  |`-246` |
| `/`           | Delen (resultaat met kommagetal) | `9 / 2`     | `4.5` |
| `//`          | Delen (resultaat als geheel getal)              | `9 // 2`    | `4`   |
| `%`           | Modulo        | `9 % 2`      |`1`    |
| `**`          | Exponentiëren | `2 ** 3`    |`8`    |

De volgorde van bewerkingen is vergelijkbaar met wiskunde: eerst worden de machtsverheffingen berekend, daarna vermenigvuldiging en deling, en tot slot optellen en aftrekken. De volgorde kan worden gewijzigd met behulp van haakjes./zw

Bijvoorbeeld deze code:

```python
print(2 + 3 * 3)
print((2 + 3) * 3)
```

drukt het volgende af:

<sample-output>

11
15

</sample-output>

## Operanden, operatoren en gegevenstypen

Een berekening bestaat meestal uit *operanden* en *operatoren*:

<img src="1_4_1.png">

Het gegevenstype van een operand bepaalt meestal het gegevenstype van het resultaat: als twee gehele getallen bij elkaar worden opgeteld, is het resultaat ook een geheel getal. Als een floating point nummer wordt afgetrokken van een ander floating point nummer, is het resultaat een floating point nummer. Sterker nog, als één van de operanden in een expressie een floating point nummer is, is het resultaat altijd een floating point nummer, ongeacht de andere operanden.

De deling `/` is een uitzondering op deze regel. Het resultaat is altijd een floating point nummer, zelfs als de operanden gehele getallen zijn. Bijvoorbeeld `1 / 5` levert het floating point nummer `0.2` op.

Voorbeeld:

```python
lengte = 172,5
gewicht = 68,55

# de body mass index, of BMI, wordt berekend door
# het lichaamsgewicht te delen door het kwadraat van de lengte,
# de lengte wordt in meters omgezet in de formule
bmi = gewicht / (lengte / 100) ** 2

print(f"De BMI is {bmi}")
```

Dit programma drukt het volgende af:

<sample-output>

De BMI is 23,037177063642087

</sample-output>

Merk op dat Python ook een operator voor gehele deling `//` heeft. Als de operanden gehele getallen zijn, produceert deze operator een geheel getal. Het resultaat wordt afgerond naar het dichtstbijzijnde gehele getal naar beneden. Bijvoorbeeld dit programma:

```python
x = 3
y = 2

print(f"/ operator {x/y}")
print(f"// operator {x//y}")
```

geeft als resultaat:

<sample-output>

/ operator 1,5
// operator 1

</sample-output>

## Getallen als invoer

We hebben al het `input`-commando gebruikt om strings van de gebruiker in te lezen. Dezelfde functie kan ook worden gebruikt om getallen in te lezen, maar de door de functie geproduceerde string moet dan worden omgezet naar een numeriek gegevenstype in de programmacode. In de vorige sectie hebben we gehele getallen als strings omgezet met de functie `str`. Hetzelfde basisprincipe is hier van toepassing, maar de naam van de conversiefunctie zal anders zijn.

Een string kan worden omgezet in een geheel getal met de functie `int`. Het volgende programma vraagt de gebruiker naar zijn geboortejaar en slaat het op in de variabele `input_str`. Het programma maakt vervolgens een andere variabele `jaar` aan, die het jaar omzet in een geheel getal. Daarna is de berekening `2021 - jaar` mogelijk met de waarde die de gebruiker heeft opgegeven.

```python
input_str = input("In welk jaar ben je geboren? ")
jaar = int(input_str)
print(f"Je leeftijd aan het einde van het jaar 2021: {2021 - jaar}" )
```
<sample-output>

In welk jaar ben je geboren? **1995**
Je leeftijd aan het einde van het jaar 2021: 26

</sample-output>

Normaal gesproken hoef je geen twee aparte variabelen te maken (zoals `input_str` en `jaar` hierboven) om een getalwaarde van de gebruiker te lezen. In plaats daarvan kan het lezen van de invoer met de functie `input` en het converteren ervan met de functie `int` in één keer worden gedaan:

```python
jaar = int(input("In welk jaar ben je geboren? "))
print(f"Je leeftijd aan het einde van het jaar 2021: {2021 - jaar}" )
```

Op dezelfde manier kan een string worden omgezet in een floating point nummer met de functie `float`. Dit programma vraagt de gebruiker naar zijn lengte en gewicht en gebruikt deze waarden om de BMI te berekenen:

```python
lengte = float(input("Wat is je lengte? "))
gewicht = float(input("Wat is je gewicht? "))

lengte = lengte / 100
bmi = gewicht / lengte ** 2

print(f"De BMI is {bmi}")
```

Een voorbeeld van de uitvoer van het programma:

<sample-output>

Wat is je lengte? **163**
Wat is je gewicht? **74,45**
De BMI is 28,02137829801649

</sample-output>

<in-browser-programming-exercise name="Vermenigvuldig met vijf" tmcname="part01-13_times_five">

Schrijf alsjeblieft een programma dat de gebruiker vraagt om een getal. Het programma drukt vervolgens het getal vermenigvuldigd met vijf af.

Het programma zou als volgt moeten werken:

<sample-output>

Typ alsjeblieft een getal: **3**
3 keer 5 is 15

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Naam en leeftijd" tmcname="part01-14_name_and_age">

Schrijf alsjeblieft een programma dat de gebruiker vraagt naar hun naam en geboortejaar. Het programma drukt vervolgens een bericht af zoals hieronder:

<sample-output>

What is your name? **Frances Fictitious**
Which year were you born? **1990**
Hi Frances Fictitious, you will be 31 years old at the end of the year 2021

</sample-output>

</in-browser-programming-exercise>

## Het gebruik van variabelen

Laten we eens kijken naar een programma dat de som berekent van drie getallen die door de gebruiker zijn opgegeven:

```python
getal1 = int(input("Eerste getal: "))
getal2 = int(input("Tweede getal: "))
getal3 = int(input("Derde getal: "))

som = getal1 + getal2 + getal3
print(f"De som van de getallen: {som}")
```

Een voorbeelduitvoering van het programma:

<sample-output>

Eerste getal: **5**
Tweede getal: **21**
Derde getal: **7**
De som van de getallen: 33

</sample-output>

Het programma gebruikt vier verschillende variabelen, maar in dit geval zouden twee variabelen voldoende zijn:

```python
som = 0

getal = int(input("Eerste getal: "))
som = som + getal

getal = int(input("Tweede getal: "))
som = som + getal

getal = int(input("Derde getal: "))
som = som + getal

print(f"De som van de getallen: {som}")
```

Nu worden alle invoeren van de gebruiker in dezelfde variabele `getal` gelezen. De waarde van de variabele `som` wordt _verhoogd_ met de waarde van de variabele `getal` telkens wanneer de gebruiker een nieuw getal invoert.

Laten we eens nader kijken naar dit commando:

```python
som = som + getal
```

Hier worden de waarde van de variabele `som` en de waarde van de variabele `getal` bij elkaar opgeteld, en het resultaat wordt weer opgeslagen in de variabele `som`. Als bijvoorbeeld de waarde van `som` vóór het commando 3 is en de waarde van `getal` 2 is, is de waarde van `som` na het uitvoeren van het commando 5.

Het verhogen van de waarde van een variabele is een zeer veelvoorkomende bewerking. Daarom is er een veelgebruikte verkorte notatie die hetzelfde resultaat oplevert als de expliciete optelling hierboven:

```python
som += getal
```

Hiermee kunnen we het bovenstaande programma wat beknopter schrijven:

```python
som = 0

getal = int(input("Eer

ste getal: "))
som += getal

getal = int(input("Tweede getal: "))
som += getal

getal = int(input("Derde getal: "))
som += getal

print(f"De som van de getallen: {som}")
```

In feite hebben we niet per se de variabele `getal` nodig. De invoer van de gebruiker kan ook op deze manier worden verwerkt:

```python
som = 0

som += int(input("Eerste getal: "))
som += int(input("Tweede getal: "))
som += int(input("Derde getal: "))

print(f"De som van de getallen: {som}")
```

Natuurlijk hangt het af van de context hoeveel variabelen er nodig zijn. Als het nodig is om elke waarde die de gebruiker invoert te onthouden, is het niet mogelijk om dezelfde variabele te "hergebruiken" om verschillende waarden van de gebruiker in te lezen. Kijk eens naar het volgende voorbeeld:

```python
getal1 = int(input("Eerste getal: "))
getal2 = int(input("Tweede getal: "))

print(f"{getal1} + {getal2} = {getal1+getal2}")
```

<sample-output>

Eerste getal: **2**
Tweede getal: **3**
2 + 3 = 5

</sample-output>

Aan de andere kant heeft het bovenstaande programma geen aparte variabele om de som van de twee waarden op te slaan.

"Hergebruik" van een variabele heeft alleen zin wanneer er behoefte is om tijdelijk dingen van een vergelijkbaar type en doel op te slaan, bijvoorbeeld bij het optellen van getallen.

In het volgende voorbeeld wordt de variabele `data` gebruikt om eerst de naam van de gebruiker op te slaan en vervolgens hun leeftijd. Dit is niet erg zinvol.

```python
data = input("Wat is je naam? ")
print("Hallo " + data + "!")

data = int(input("Wat is je leeftijd? "))
# programma gaat verder...
```

Een beter idee is om aparte variabelen met _beschrijvende_ namen te gebruiken:

```python
naam = input("Wat is je naam? ")
print("Hallo " + naam + "!")

leeftijd = int(input("Wat is je leeftijd? "))
# programma gaat verder...
```

<in-browser-programming-exercise name="Seconden in een dag" tmcname="part01-15_seconds_in_a_day">

Schrijf alsjeblieft een programma dat de gebruiker vraagt om een aantal dagen. Het programma drukt vervolgens het aantal seconden af in de opgegeven aantal dagen.

Het programma zou als volgt moeten werken:

<sample-output>

How many days? **1**
Seconds in that many days: 86400

</sample-output>

Een ander voorbeeld:

<sample-output>

How many days? **7**
Seconds in that many days: 604800

</sample-output>

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Herstel de code: Product" tmcname="part01-16_product">

Dit programma vraagt de gebruiker om drie getallen. Het programma drukt vervolgens hun product af, dat wil zeggen, de getallen vermenigvuldigd met elkaar. Er is echter iets mis met het programma - het werkt niet helemaal goed, zoals je kunt zien als je het uitvoert. Los het alsjeblieft op.

Een voorbeeld van de verwachte uitvoering van het programma:

<sample-output>

Please type in the first number: **2**
Please type in the second number: **3**
Please type in the third number: **5**
The product is 30

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Som en product" tmcname="part01-17_sum_and_product">

Schrijf alsjeblieft een programma dat de gebruiker vraagt om twee getallen. Het programma drukt vervolgens de som en het product van de twee getallen af.

Het programma zou als volgt moeten werken:

<sample-output>

Number 1: **3**
Number 2: **7**
The sum of the numbers: 10
The product of the numbers: 21


</sample-output>

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Som en gemiddelde" tmcname="part01-18_sum_and_mean">

Schrijf alsjeblieft een programma dat de gebruiker vraagt om vier getallen. Het programma drukt vervolgens de som en het gemiddelde van de getallen af.

Het programma zou als volgt moeten werken:

<sample-output>

Number 1: **2**
Number 2: **1**
Number 3: **6**
Number 4: **7**
The sum of the numbers is 16 and the mean is 4.0

</sample-output>

</in-browser-programming-exercise>



<in-browser-programming-exercise name="Uitgaven aan voedsel" tmcname="part01-19_food_expenditure">

Schrijf alsjeblieft een programma dat de gebruiker een schatting vraagt van hun typische uitgaven aan voedsel.

Het programma vraagt de gebruiker hoe vaak ze per week in de studentenkantine eten. Vervolgens vraagt het naar de prijs van een typische studentenlunch en het geld dat ze gedurende de week aan boodschappen uitgeven.

Op basis van deze informatie berekent het programma de typische uitgaven aan voedsel van de gebruiker, zowel wekelijks als dagelijks.

Het programma zou als volgt moeten werken:

<sample-output>

How many times a week do you eat at the student cafeteria? **4**
The price of a typical student lunch? **2.5**
How much money do you spend on groceries in a week? **28.5**

Average food expenditure:
Daily: 5.5 euros
Weekly: 38.5 euros

</sample-output>

</in-browser-programming-exercise>


<!--


<in-browser-programming-exercise name="Studenten in groepen" tmcname="part01-20_students_in_groups">

Schrijf alsjeblieft een programma dat vraagt naar het aantal studenten op een cursus en de gewenste groepsgrootte. Het programma drukt vervolgens het aantal gevormde groepen af op basis van de studenten op de cursus. Als de verdeling niet gelijk is, kan één van de groepen minder leden hebben dan opgegeven.

Als het niet lukt om je code zoals verwacht te laten werken, is het absoluut prima om verder te gaan en later terug te komen bij deze oefening. Het onderwerp van de volgende sectie is [voorwaardelijke instructies](/part-1/5-conditional-statements). Deze oefening kan ook worden opgelost met een voorwaardelijke constructie.

<sample-output>

Hoeveel studenten op de cursus? **8**
Gewenste groepsgrootte? **4**
Aantal gevormde groepen: 2

</sample-output>

<sample-output>

Hoeveel studenten op de cursus? **11**
Gewenste groepsgrootte? **3**
Aantal gevormde groepen: 4

</sample-output>

Hint: de operator voor gehele deling `//` kan hier handig zijn.

</in-browser-programming-exercise>

-->
