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

We hebben nu de conditionele structuren in detail behandeld. Een andere centrale techniek in programmeren is herhaling, of _iteratie_. Een eerste voorbeeld hiervan hebben we vorige week gezien met de for-loop. Samen vormen deze de fundamentele controlestructuren die elke programmeur onder de knie moet hebben. Ze worden controlestructuren genoemd omdat ze in essentie de controle geven over welke regels code worden uitgevoerd en wanneer. Terwijl conditionele structuren je in staat stellen om _te kiezen tussen_ secties code, stellen iteratiestructuren je in staat om secties code te _herhalen_. Ze worden vaak _loops_ genoemd omdat ze het programma in staat stellen om terug te "lopen" naar een regel die al eerder is uitgevoerd. Het proces van het uitvoeren van één herhaling van een lus wordt ook wel een iteratie van de lus genoemd.

In deze sectie introduceren we een eenvoudige `while`-lus. De structuur ervan lijkt op de `for`-lus die we in de vorige module hebben gezien. Het belangrijke verschil is dat een `for`-lus werkt over elk element in een lijst. De `for`-lus herhaalt dus maximaal `len(lijst)` keer, ofwel maximaal het aantal elementen in de lijst. De `while`-lus kun je zelf instellen hoe vaak hij herhaalt. Nul, een, twee of oneindig vaak.

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

Zoals je hierboven kunt zien, vraagt het programma om meerdere getallen dankzij de `while`-lus in het programma. Wanneer de gebruiker -1 invoert, wordt het `break`-commando uitgevoerd, waarmee de lus wordt verlaten en de uitvoering doorgaat vanaf de eerste regel na het `while`-blok.

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

<in-browser-programming-exercise name="Zullen we doorgaan?" tmcname="part02-15_shall_we_continue">

Laten we een programma maken dat lijkt op het bovenstaande voorbeeld. Dit programma moet de boodschap "hi" afdrukken en vervolgens vragen "Shall we continue?" totdat de gebruiker "no" invoert. Dan moet het programma "okay then" afdrukken en stoppen. Kijk naar het onderstaande voorbeeld.

<sample-output>

hi
Shall we continue? **yes**
hi
Shall we continue? **oui**
hi
Shall we continue? **jawohl**
hi
Shall we continue? **no**
okay then

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Invoervalidatie" tmcname="part02-16_input_validation">

Schrijf een programma dat de gebruiker vraagt om gehele getallen.

- Als het getal kleiner is dan nul, moet het programma de boodschap "Invalid number" afdrukken.
- Als het getal groter is dan nul, moet het programma de wortel van het getal afdrukken met behulp van de Python-functie `sqrt`.
- In beide gevallen moet het programma vervolgens vragen om een ander getal.
- Als de gebruiker het getal nul invoert, moet het programma stoppen met het vragen om getallen en de lus verlaten.

Hieronder vind je een herinnering van hoe de `sqrt`-functie wordt gebruikt. Vergeet niet om deze in het begin van het programma te `importeren`.

```python
# sqrt-functie werkt niet zonder deze regel aan het begin van het programma
from math import sqrt

print(sqrt(9))
```

<sample-output>

3.0

</sample-output>

Een voorbeeld van het verwachte gedrag van je programma:

<sample-output>

Please type in a number: **16**
4.0
Please type in a number: **4**
2.0
Please type in a number: **-3**
Invalid number
Please type in a number: **1**
1.0
Please type in a number: **0**
Exiting...


</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Herstel de code: Aftellen" tmcname="part02-17_countdown>

Dit programma moet een aftelling afdrukken. De code is als volgt:

```python
number = 5
print("Countdown!")
while True:
  print(number)
  number = number - 1
  if number > 0:
    break

print("Now!")
```


Dit zou moeten afdrukken

<sample-output>

Countdown!
5
4
3
2
1
Now!

</sample-output>

Het programma werkt echter niet helemaal correct. Herstel het alsjeblieft.

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Herhaal wachtwoord" tmcname="part02-18_repeat_password">

Schrijf een programma dat de gebruiker om een wachtwoord vraagt. Het programma moet vervolgens de gebruiker vragen om het wachtwoord opnieuw in te voeren. Als de gebruiker iets anders invoert dan het eerste wachtwoord, moet het programma blijven vragen totdat de gebruiker het eerste wachtwoord correct opnieuw invoert.

Kijk naar het verwachte gedrag hieronder:

<sample-output>

Password: **sekred**
Repeat password: **secret**
They do not match!
Repeat password: **cantremember**
They do not match!
Repeat password: **sekred**
User account created!


</sample-output>

</in-browser-programming-exercise>

## Lussen en hulpvariabelen

Laten we het PIN-controle-voorbeeld iets realistischer maken. Deze versie geeft de gebruiker slechts drie pogingen om een PIN in te voeren.

Het programma maakt gebruik van twee hulpvariabelen. De variabele `attempts` houdt bij hoe vaak de gebruiker heeft geprobeerd een PIN in te voeren. De variabele `success` wordt ingesteld op `True` of `False` op basis van of de gebruiker succesvol is ingelogd.

Kun je de datatype van de variabele `attempts` en `success` benoemen?


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

Het toevoegen van lussen aan programma's voegt ook potentiële bronnen van fouten toe. Het is des te belangrijker om foutopsporingsberichten toe te voegen.

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

Laten we proberen de oorzaak te vinden door wat strategische foutopsporingsberichten binnen de lus toe te voegen:

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

De volgorde van `if`-statements, of van verschillende takken binnen een `if`-statements, is een veelvoorkomende oorzaak van fouten, vooral in lussen. Foutopsporingsberichten met afdrukken zijn vaak de eenvoudigste manier om hun oorzaak te vinden.

<in-browser-programming-exercise name="PIN en aantal pogingen" tmcname="part02-19_pin_and_number_of_attempts">

Schrijf een programma dat de gebruiker blijft vragen om een PIN-code totdat ze de juiste invoeren, die _4321_ is. Het programma moet vervolgens het aantal keren dat de gebruiker verschillende codes heeft geprobeerd, afdrukken.

<sample-output>

PIN: **3245**
Wrong
PIN: **1234**
Wrong
PIN: **0000**
Wrong
PIN: **4321**
Correct! It took you 4 attempts

</sample-output>

Als de gebruiker het de eerste keer goed heeft, moet het programma iets anders afdrukken:

<sample-output>

PIN: **4321**
Correct! It only took you one single attempt!

</sample-output>

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Het volgende schrikkeljaar" tmcname="part02-20_next_leap_year">

Schrijf een programma dat de gebruiker om een jaar vraagt en het volgende schrikkeljaar afdrukt.

<sample-output>

Year: **2023**
The next leap year after 2023 is 2024

</sample-output>

Als de gebruiker een jaar invoert dat een schrikkeljaar is (zoals 2024), moet het programma het volgende schrikkeljaar afdrukken:

<sample-output>

Year: **2024**
The next leap year after 2024 is 2028

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


<in-browser-programming-exercise name="Verhaal" tmcname="part02-21_story">

### Deel 1

Please write a program which keeps asking the user for words. If the user types in `end`, the program should print out the story the words formed, and finish.

<sample-output>

Please type in a word: **Once**
Please type in a word: **upon**
Please type in a word: **a**
Please type in a word: **time**
Please type in a word: **there**
Please type in a word: **was**
Please type in a word: **a**
Please type in a word: **girl**
Please type in a word: **end**
Once upon a time there was a girl

</sample-output>

### Deel 2

Change the program so that the loop ends also if the user types in the same word twice.

<sample-output>


Please type in a word: **It**
Please type in a word: **was**
Please type in a word: **a**
Please type in a word: **dark**
Please type in a word: **and**
Please type in a word: **stormy**
Please type in a word: **night**
Please type in a word: **night**
It was a dark and stormy night

</sample-output>

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Working with numbers" tmcname="part02-22_working_with_numbers">

### Pre-task

Please write a program which asks the user for integer numbers. The program should keep asking for numbers until the user types in zero.

<sample-output>

Please type in integer numbers. Type in 0 to finish.
Number: **5**
Number: **22**
Number: **9**
Number: **-2**
Number: **0**

</sample-output>

### Part 1: Count

After reading in the numbers the program should print out how many numbers were typed in. The zero at the end should not be included in the count.

You will need a new variable here to keep track of the numbers typed in.

<sample-output>

... the program asks for numbers
Numbers typed in 4

</sample-output>

### Part 2: Sum

The program should also print out the sum of all the numbers typed in. The zero at the end should not be included in the calculation.

The program should now print out the following:

<sample-output>

... the program asks for numbers
Numbers typed in 4
The sum of the numbers is 34

</sample-output>

### Part 3: Mean

The program should also print out the mean of the numbers. The zero at the end should not be included in the calculation. You may assume the user will always type in at least one valid non-zero number.

<sample-output>

... the program asks for numbers
Numbers typed in 4
The sum of the numbers is 34
The mean of the numbers is 8.5

</sample-output>

#### Part 4: Positives and negatives

The program should also print out statistics on how many of the numbers were positive and how many were negative. The zero at the end should not be included in the calculation.

<sample-output>

... the program asks for numbers
Numbers typed in 4
The sum of the numbers is 34
The mean of the numbers is 8.5
Positive numbers 3
Negative numbers 1

</sample-output>

</in-browser-programming-exercise>
