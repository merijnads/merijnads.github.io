---
path: '/part-4/1-simple-loops'
title: 'Simple loops'
hidden: false
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie:

- Weet je wat een loop betekent in programmeren.
- Kun je een `while True`-lus gebruiken in je programma's.
- Weet je hoe je het `break`-commando kunt gebruiken om uit een lus te breken.

</text-box>

We hebben nu de conditionele structuren in detail behandeld. Een andere centrale techniek in programmeren is herhaling, of _iteratie_. Samen vormen deze de fundamentele controlestructuren die elke programmeur onder de knie moet hebben. Ze worden controlestructuren genoemd omdat ze in essentie de controle geven over welke regels code worden uitgevoerd en wanneer. Terwijl conditionele structuren je in staat stellen om _te kiezen tussen_ secties code, stellen iteratiestructuren je in staat om secties code te _herhalen_. Ze worden vaak _loops_ genoemd omdat ze het programma in staat stellen om terug te "lopen" naar een regel die al eerder is uitgevoerd. Het proces van het uitvoeren van één herhaling van een lus wordt ook wel een iteratie van de lus genoemd.

In deze sectie introduceren we een eenvoudige `while`-lus. De structuur ervan lijkt op de conditionele instructies die we al hebben behandeld. In het volgende deel gaan we in op meer geavanceerde voorbeelden.

Laten we eens kijken naar een programma dat de gebruiker vraagt om een getal in te voeren en vervolgens het kwadraat van dat getal afdrukt. Dit gaat door totdat de gebruiker -1 invoert.

```python
while True:
    number = int(input("Typ een getal in, -1 om te stoppen: "))

    if number == -1:
        break

    print(number ** 2)

print("Bedankt en tot ziens!")
```

De uitvoering van het programma kan er als volgt uitzien:

<sample-output>

Typ een getal in, -1 om te stoppen: **2**
4
Typ een getal in, -1 om te stoppen: **4**
16
Typ een getal in, -1 om te stoppen: **10**
100
Typ een getal in, -1 om te stoppen: **-1**
Bedankt en tot ziens!

</sample-output>

Zoals je hierboven kunt zien, vraagt het programma om meerdere getallen dankzij de `while`-verklaring in het programma. Wanneer de gebruiker -1 invoert, wordt het `break`-commando uitgevoerd, waarmee de lus wordt verlaten en de uitvoering doorgaat vanaf de eerste regel na het `while`-blok.

Bij lussen is het cruciaal dat er altijd een manier is om de lus op een bepaald moment in de code te verlaten, anders kan de herhaling oneindig doorgaan. Om dit te illustreren, veranderen we het bovenstaande voorbeeld een beetje:

```python
number = int(input("Typ een getal in, -1 om te stoppen: "))
while True:
    if number == -1:
        break

    print(number ** 2)

print("Bedankt en tot ziens!")
```

In deze versie vraagt het programma de gebruiker om een getal _buiten de lus_. Als de gebruiker een ander getal dan -1 invoert, wordt de lus nooit verlaten. Dit vormt een _oneindige lus_, wat betekent dat het blok code binnen de lus eindeloos wordt herhaald:

<sample-output>

Typ een getal in, -1 om te stoppen: **2**
4
4
4
4
4
4
4
4
(oneindig vervolg...)

</sample-output>

Het volgende programma heeft een vergelijkbare structuur als het voorbeeld voor de oneindige lus, maar de gebruikerservaring is heel anders. Dit programma staat de gebruiker alleen toe om door te gaan als ze de juiste PIN _1234_ invoeren:

```python
while True:
    code = input("Typ je PIN in: ")
    if code == "1234":
        break
    print("Onjuist...probeer het opnieuw")

print("Juiste PIN ingevoerd!")
```

<sample-output>

Typ je PIN in: **0000**
Onjuist...probeer het opnieuw
Typ je PIN in: **9999**
Onjuist...probeer het opnieuw
Typ je PIN in: **1234**
Juiste PIN ingevoerd!

</sample-output>

<in-browser-programming-exercise name="Zullen we doorgaan?" tmcname="part02-15_zullen_we_doorgaan">

Laten we een programma maken dat lijkt op het bovenstaande voorbeeld. Dit programma moet de boodschap "hi" afdrukken en vervolgens vragen "Zullen we doorgaan?" totdat de gebruiker "nee" invoert. Dan moet het programma "okee dan" afdrukken en stoppen. Kijk naar het onderstaande voorbeeld.

<sample-output>

hi
Zullen we doorgaan? **ja**
hi
Zullen we doorgaan? **oui**
hi
Zullen we doorgaan? **jawohl**
hi
Zullen we doorgaan? **nee**
okee dan

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Invoervalidatie" tmcname="part02-16_invoervalidatie">

Schrijf een programma dat de gebruiker vraagt om gehele getallen.

- Als het getal kleiner is dan nul, moet het programma de boodschap "Ongeldig getal" afdrukken.
- Als het getal groter is dan nul, moet het programma de wortel van het getal afdrukken met behulp van de Python-functie `sqrt`.
- In beide gevallen moet het programma vervolgens vragen om een ander getal.
- Als de gebruiker het getal nul invoert, moet het programma stoppen met het vragen om getallen en de lus verlaten.

Hieronder vind je een herinnering van hoe de `sqrt`-functie wordt gebruikt. Vergeet niet om deze in het begin van het programma te `importeren`.

```python
# sqrt-functie wer

kt niet zonder deze regel aan het begin van het programma
from math import sqrt

print(sqrt(9))
```

<sample-output>

3.0

</sample-output>

Een voorbeeld van het verwachte gedrag van je programma:

<sample-output>

Typ een getal in: **16**
4.0
Typ een getal in: **4**
2.0
Typ een getal in: **-3**
Ongeldig getal
Typ een getal in: **1**
1.0
Typ een getal in: **0**
Einde...

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Herstel de code: Aftellen" tmcname="part02-17_aftellen">

Dit programma moet een aftelling afdrukken. De code is als volgt:

```python
number = 5
print("Aftellen!")
while True:
  print(number)
  number = number - 1
  if number > 0:
    break

print("Nu!")
```

Dit zou moeten afdrukken

<sample-output>

Aftellen!
5
4
3
2
1
Nu!

</sample-output>

Het programma werkt echter niet helemaal correct. Herstel het alsjeblieft.

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Herhaal wachtwoord" tmcname="part02-18_herhaal_wachtwoord">

Schrijf een programma dat de gebruiker om een wachtwoord vraagt. Het programma moet vervolgens de gebruiker vragen om het wachtwoord opnieuw in te voeren. Als de gebruiker iets anders invoert dan het eerste wachtwoord, moet het programma blijven vragen totdat de gebruiker het eerste wachtwoord correct opnieuw invoert.

Kijk naar het verwachte gedrag hieronder:

<sample-output>

Wachtwoord: **geheim**
Herhaal het wachtwoord: **geheim**
Account aangemaakt!

</sample-output>

</in-browser-programming-exercise>

## Lussen en hulpvariabelen

Laten we het PIN-controle-voorbeeld iets realistischer maken. Deze versie geeft de gebruiker slechts drie pogingen om een PIN in te voeren.

Het programma maakt gebruik van twee hulpvariabelen. De variabele `attempts` houdt bij hoe vaak de gebruiker heeft geprobeerd een PIN in te voeren. De variabele `success` wordt ingesteld op `True` of `False` op basis van of de gebruiker succesvol is ingelogd.

```python
attempts = 0

while True:
    code = input("Typ je PIN in: ")
    attempts += 1

    if code == "1234":
        success = True
        break

    if attempts == 3:
        success = False
        break

    # dit wordt afgedrukt als de code onjuist was EN er nog geen drie pogingen zijn geweest
    print("Onjuist...probeer het opnieuw")

if success:
    print("Juiste PIN ingevoerd!")
else:
    print("Te veel pogingen...")
```

<sample-output>

Typ je PIN in: **0000**
Onjuist...probeer het opnieuw
Typ je PIN in: **1234**
Juiste PIN ingevoerd!

</sample-output>

<sample-output>

Typ je PIN in: **0000**
Onjuist...probeer het opnieuw
Typ je PIN in: **9999**
Onjuist...probeer het opnieuw
Typ je PIN in: **4321**
Te veel pogingen...

</sample-output>

De lus wordt _ofwel_ beëindigd wanneer de gebruiker de juiste PIN invoert _ofwel_ als er te veel pogingen zijn gedaan. De `if`-verklaring na de lus controleert de waarde van de variabele `success` en geeft een bericht weer op basis daarvan.

## Foutopsporingsberichten afdrukken in lussen

Het toevoegen van lussen aan programma's voegt ook potentiële bronnen van fouten toe. Het is des te belangrijker om de vaardigheid van het gebruik van foutopsporingsberichten met afdrukken te beheersen, zoals geïntroduceerd in het [eerste deel van dit onderdeel](/part-2/1-programming-terminology).

Laten we eens kijken naar een programma dat bijna identiek is aan het vorige voorbeeld, maar met één cruciaal verschil:

```python
attempts = 0

while True:
    code = input("Typ je PIN in: ")
    attempts += 1

    if attempts == 3:
        success = False
        break

    if code == "1234":
        success = True
        break

    print("Onjuist...probeer het opnieuw")
```

Deze versie gedraagt zich vreemd wanneer de gebruiker de juiste code invoert bij de derde poging:

<sample-output>

Typ je PIN in: **0000**
Onjuist...probeer het opnieuw
Typ je PIN in: **9999**
Onjuist...probeer het opnieuw
Typ je PIN in: **1234**
Te veel pogingen...

</sample-output>

Laten we proberen de oorzaak te vinden door wat strategische foutopsporingsberichten binnen de l

us toe te voegen:

```python
while True:
    print("begin van het while-blok:")
    code = input("Typ je PIN in: ")
    attempts += 1

    print("pogingen:", attempts)
    print("voorwaarde1:", attempts == 3)
    if attempts == 3:
        success = False
        break

    print("code:", code)
    print("voorwaarde2:", code == "1234")
    if code == "1234":
        success = True
        break

    print("Onjuist...probeer het opnieuw")
```

<sample-output>

begin van het while-blok:
Typ je PIN in: **2233**
pogingen: 1
voorwaarde1: False
code: 2233
voorwaarde2: False
Onjuist...probeer het opnieuw
begin van het while-blok:
Typ je PIN in: **4545**
pogingen: 2
voorwaarde1: False
code: 4545
voorwaarde2: False
Onjuist...probeer het opnieuw
begin van het while-blok:
Typ je PIN in: **1234**
pogingen: 3
voorwaarde1: True
Te veel pogingen...

</sample-output>

Uit de bovenstaande uitvoer kunnen we zien dat tijdens de derde iteratie van de lus de voorwaarde van de eerste `if`-verklaring `True` is en de lus wordt beëindigd. Deze iteratie bereikt de tweede `if`-verklaring niet, die controleert of de code correct is ingevoerd:

```python
  while True:
    # ....

    # dit blok wordt te vroeg uitgevoerd
    if attempts == 3:
        success = False
        break

    # de derde iteratie komt hier nooit aan
    if code == "1234":
        success = True
        break
```

De volgorde van conditionele verklaringen, of van verschillende takken binnen een conditionele verklaring, is een veelvoorkomende oorzaak van fouten, vooral in lussen. Foutopsporingsberichten met afdrukken zijn vaak de eenvoudigste manier om hun oorzaak te vinden.

<in-browser-programming-exercise name="PIN en aantal pogingen" tmcname="part02-19_pin_en_aantal_pogingen">

Schrijf een programma dat de gebruiker blijft vragen om een PIN-code totdat ze de juiste invoeren, die _4321_ is. Het programma moet vervolgens het aantal keren dat de gebruiker verschillende codes heeft geprobeerd, afdrukken.

<sample-output>

PIN: **3245**
Fout
PIN: **1234**
Fout
PIN: **0000**
Fout
PIN: **4321**
Correct! Je hebt er 4 pogingen voor nodig gehad

</sample-output>

Als de gebruiker het de eerste keer goed heeft, moet het programma iets anders afdrukken:

<sample-output>

PIN: **4321**
Correct! Je had er slechts één poging voor nodig!

</sample-output>

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Het volgende schrikkeljaar" tmcname="part02-20_het_volgende_schrikkeljaar">

Schrijf een programma dat de gebruiker om een jaar vraagt en het volgende schrikkeljaar afdrukt.

<sample-output>

Jaar: **2023**
Het volgende schrikkeljaar na 2023 is 2024

</sample-output>

Als de gebruiker een jaar invoert dat een schrikkeljaar is (zoals 2024), moet het programma het volgende schrikkeljaar afdrukken:

<sample-output>

Jaar: **2024**
Het volgende schrikkeljaar na 2024 is 2028

</sample-output>

</in-browser-programming-exercise>

## Samenvoegen van strings met de + operator

Het bovenstaande voorbeeld met PIN-controle gebruikte een hulpvariabele `attempts` om bij te houden hoe vaak de gebruiker heeft geprobeerd een code in te voeren:

```python
attempts = 0

while True:
    code = input("Typ je PIN in: ")
    attempts += 1
    # ...
```

De variabele wordt buiten de lus ingesteld op nul en elke iteratie wordt de waarde ervan met één verhoogd.

Een vergelijkbaar idee van incrementatie werkt ook met stringvariabelen. Het programma kan bijvoorbeeld bijhouden welke PIN-codes de gebruiker heeft ingevoerd:

```python

codes = ""
attempts = 0

while True:
    code = input("Typ je PIN in: ")
    attempts += 1
    codes += code + ", "
    # ...
```

De hulpvariabele wordt geïnitialiseerd als _een lege string_, dat wil zeggen een string zonder tekens erin:

```python
codes = ""
```

Bij elke iteratie wordt de string langer, omdat de ingevoerde code van de gebruiker wordt toegevoegd, samen met een komma:

```python
    code = input("Typ je PIN in: ")
    codes += code + ", "
```

Als de gebruiker de codes _1111 2222 1234_ invoert, is de waarde van `codes` aan het einde van de uitvoering van het programma:

<sample-output>

1111, 2222, 1234,

</sample-output>


<in-browser-programming-exercise name="Verhaal" tmcname="part02-21_verhaal">

### Deel 1

Schrijf een programma dat de gebruiker blijft vragen om woorden. Als de gebruiker `einde` typt, moet het programma het verhaal afdrukken dat de woorden vormen

.

<sample-output>

Typ een woord: **De**
Typ een woord: **mooie**
Typ een woord: **kat**
Typ een woord: **zat**
Typ een woord: **op**
Typ een woord: **de**
Typ een woord: **mat**
Typ een woord: **einde**

Het verhaal:
De mooie kat zat op de mat

</sample-output>

### Deel 2

Breid het programma uit zodat het de gebruiker vraagt om de naam van het verhaal in te voeren. Het programma moet het verhaal afdrukken met de ingevoerde naam ervoor.

<sample-output>

Typ een woord: **De**
Typ een woord: **mooie**
Typ een woord: **kat**
Typ een woord: **zat**
Typ een woord: **op**
Typ een woord: **de**
Typ een woord: **mat**
Typ een woord: **einde**
Typ de naam van het verhaal: **Kattenavontuur**

Het verhaal "Kattenavontuur":
De mooie kat zat op de mat

</sample-output>

### Deel 3

Breid het programma verder uit zodat het een meervoudig verhaal kan afdrukken. Het programma moet de gebruiker vragen om het aantal verhalen in te voeren en daarna het verhaal afdrukken voor het opgegeven aantal keren.

<sample-output>

Typ een woord: **De**
Typ een woord: **mooie**
Typ een woord: **kat**
Typ een woord: **zat**
Typ een woord: **op**
Typ een woord: **de**
Typ een woord: **mat**
Typ een woord: **einde**
Typ de naam van het verhaal: **Kattenavontuur**
Typ het aantal verhalen: **3**

Het verhaal "Kattenavontuur":
De mooie kat zat op de mat

Het verhaal "Kattenavontuur":
De mooie kat zat op de mat

Het verhaal "Kattenavontuur":
De mooie kat zat op de mat

</sample-output>

### Deel 4

Breid het programma verder uit zodat het de gebruiker vraagt om de leeftijd van het hoofdpersonage in te voeren. Het programma moet de leeftijd afdrukken samen met het verhaal.

<sample-output>

Typ een woord: **De**
Typ een woord: **mooie**
Typ een woord: **kat**
Typ een woord: **zat**
Typ een woord: **op**
Typ een woord: **de**
Typ een woord: **mat**
Typ een woord: **einde**
Typ de naam van het verhaal: **Kattenavontuur**
Typ het aantal verhalen: **2**
Typ de leeftijd van het hoofdpersonage: **3**

Het verhaal "Kattenavontuur":
De mooie kat zat op de mat
Hoofdpersonage is 3 jaar oud

Het verhaal "Kattenavontuur":
De mooie kat zat op de mat
Hoofdpersonage is 3 jaar oud

</sample-output>

</in-browser-programming-exercise>
