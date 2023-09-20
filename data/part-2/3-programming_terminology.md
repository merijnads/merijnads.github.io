---
path: '/part-2/2-programming-terminology'
title: 'De taal van de programmeur'
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie:

- Ben je bekend met enkele essentiële terminologieën in programmeren.
- Ken je het verschil tussen een statement en een expressie.
- Kun je het gegevenstype van een geëvalueerde expressie achterhalen.
- Heb je geleerd hoe je fouten in je code kunt opsporen met behulp van debugmethoden.

</text-box>

In het eerste deel van deze cursus hebben we niet veel aandacht besteed aan terminologie, dus laten we eens kijken naar enkele centrale concepten in het programmeren.

## Statement

Een _statement_ is een deel van het programma dat iets uitvoert. Het verwijst vaak, maar niet altijd, naar een enkel commando.

Bijvoorbeeld, `print("Hallo!")` is een statement dat een regel tekst afdrukt. Evenzo is `number = 2` een statement dat een waarde toekent aan een variabele.

Een statement kan ook complexer zijn. Het kan bijvoorbeeld andere statements bevatten. Het volgende statement beslaat drie regels:

```python
if name == "Anna":
    print("Hallo!")
    number = 2
```

In het bovenstaande geval zijn er twee statements (een print-statement en een toekenningsstatement) binnen een conditioneel statement.

## Block

Een _block_ is een groep opeenvolgende statements die op hetzelfde niveau in de structuur van het programma staan. Bijvoorbeeld, het block van een conditioneel statement bevat de statements die alleen worden uitgevoerd als de voorwaarde waar is.

```python
if age > 17:
    # begin van het conditionele block
    print("Je bent volwassen!")
    age = age + 1
    print("Je bent nu één jaar ouder...")
    # einde van het conditionele block

print("Dit hoort bij een ander block")
```

In Python worden blocks aangegeven door alle code in het block dezelfde inspringing te geven.

NB: het hoofdblock van een Python-programma moet altijd aan de linkerzijde van het bestand staan, zonder inspringing:

```python
# dit programma werkt niet omdat het niet aan de linkerzijde van het bestand is geschreven
  print("hallo wereld")
  print("dit programma is niet erg goed...")
```

## Expressie

Een _expressie_ is een stuk code dat resulteert in een bepaald gegevenstype. Wanneer het programma wordt uitgevoerd, wordt de expressie geëvalueerd, zodat deze een waarde heeft die vervolgens in het programma kan worden gebruikt.

Hier zijn enkele voorbeelden van expressies:

| Expressie          | Waarde    | Type      | Python-gegevenstype |
|--------------------|-----------|-----------|---------------------|
| `2 + 4 + 3`        | `9`       | integer   | `int`               |
| `"abc" + "de"`     | `"abcde"` | string    | `str`               |
| `11 / 2`           | `5.5`     | kommagetal | `float`             |
| `2 * 5 > 9`        | `True`    | Booleaanse waarde | `bool`        |

Omdat alle expressies een type hebben, kunnen ze aan variabelen worden toegewezen:

```python
# de variabele x krijgt de waarde van de expressie 1 + 2
x = 1 + 2
```

Eenvoudige expressies kunnen worden samengevoegd tot complexere expressies, bijvoorbeeld met behulp van wiskundige operaties:

```python
# de variabele y krijgt de waarde van de expressie '3 keer x plus x in het kwadraat'
y = 3 * x + x**2
```

## Functie

Een _functie_ voert bepaalde functionaliteit uit. Functies kunnen ook één of meer _argumenten_ aannemen, wat gegevens zijn die aan de functie kunnen worden doorgegeven en verwerkt. Argumenten worden soms ook wel _parameters_ genoemd. Er is een technisch onderscheid tussen een argument en een parameter, maar de woorden worden vaak door elkaar gebruikt. Voor nu volstaat het om te onthouden dat beide termen verwijzen naar het idee van enkele gegevens die aan de functie worden doorgegeven.

Een functie wordt uitgevoerd wanneer deze wordt _aangeroepen_. Dat wil zeggen, wanneer de functie (en de argumenten, indien aanwezig) in de code worden genoemd. De volgende statement roept de functie `print` aan met het argument `"dit is een argument"`:

```python
print("dit is een argument")
```

Een andere functie die je al vaak hebt gebruikt, is de `input`-functie, die de gebruiker om invoer vraagt. Het argument van deze functie is het bericht dat aan de gebruiker wordt getoond:

```python
name = input("Typ je naam: ")
```

In dit geval _retourneert_ de functie ook een waarde. Nadat de functie is uitgevoerd, wordt het gedeelte van de code waarin deze is aangeroepen vervangen door de waarde die deze retourneert; het is een andere expressie die nu is geëvalueerd. De functie `input` retourneert een stringwaarde met daarin wat de gebruiker heeft ingevoerd bij de prompt. De waarde die een functie retourneert, wordt vaak opgeslagen in een variabele zodat deze later in het programma kan worden gebruikt.

## Gegevenstype

_Het gegevenstype_ verwijst naar de eigenschappen van een waarde die aanwezig is in het programma. In de volgende code heeft de variabele `name` het gegevenstype string of `str`, en heeft de variabele `result` het gegevenstype integer of `int`:

```python
name = "Anna"
result = 100
```

Je kunt de functie `type` gebruiken om het gegevenstype van een expressie te achterhalen. Een voorbeeld van het gebruik ervan:

```python
print(type("Anna"))
print(type(100))
```

<sample-output>

<class 'str'>
<class 'int'>

</sample-output>

## Syntax

Net als bij natuurlijke talen bepaalt de _syntax_ van een programmeertaal hoe de code van een programma moet worden geschreven. Elke programmeertaal heeft zijn eigen specifieke syntax.

De

 syntax van Python specificeert onder andere dat de eerste regel van een `if`-statement moet eindigen met een dubbele punt, en het block van het statement moet worden ingesprongen:

```python
if name == "Anna":
    print("Hallo!")
```

Als de syntactische regels van de programmeertaal niet worden gevolgd, treedt er een fout op:

```python
if name == "Anna"
    print("Hallo!")
```

<sample-output>

<pre>
  File "test.py", line 1
    if name == "Anna"
                    ^
SyntaxError: invalid syntax
</pre>


</sample-output>

## Debuggen

Als de syntax van het programma correct is maar het programma nog steeds niet werkt zoals bedoeld, is er een _bug_ in het programma.

Bugs manifesteren zich op verschillende manieren. Sommige bugs veroorzaken een fout tijdens de uitvoering. Bijvoorbeeld, het volgende programma

```python
x = 10
y = 0
result = x / y

print(f"{x} gedeeld door {y} is {result}")
```

veroorzaakt deze fout:

<sample-output>

<pre>
ZeroDivisionError: integer division or modulo by zero on line 3
</pre>

</sample-output>

Het probleem hier is van wiskundige aard: deling door nul is niet toegestaan, en dit stopt de uitvoering van het programma.

Fouten tijdens de uitvoering zijn meestal vrij eenvoudig te verhelpen, omdat de foutmelding aangeeft op welke regel van de code de fout optreedt. Natuurlijk kan de werkelijke oorzaak van de bug ergens anders liggen dan de regel code die de fout veroorzaakt.

Soms wordt een bug in het programma zichtbaar omdat het resultaat dat de code oplevert onjuist is. Het ontdekken en lokaliseren van dit type bug kan uitdagend zijn. In de programmeeroefeningen van deze cursus zijn de tests meestal bedoeld om bugs van dit type aan het licht te brengen. Voordat een bug kan worden opgelost, moet eerst de oorzaak worden achterhaald.

In programmeertaal wordt het ontdekken van de oorzaken van bugs _debuggen_ genoemd. Het is een zeer belangrijke vaardigheid in de gereedschapskist van elke programmeur. Professionele programmeurs besteden vaak meer tijd aan debuggen dan aan het schrijven van nieuwe code.

Een eenvoudige maar effectieve manier om een programma te debuggen, is het toevoegen van debugging-printopdrachten aan je code. Door de resultaten van je code te verifiëren met `print`-opdrachten krijg je snel bevestiging dat de code doet wat je wilt dat deze doet.

Dit is een poging om een van de oefeningen uit het [vorige gedeelte](/part-1/5-conditional-statements) op te lossen:

```python
uurloon = float(input("Uurloon: "))
uren = int(input("Gewerkte uren: "))
dag = input("Dag van de week: ")

dagloon = uurloon * uren
if dag == "zondag":
    dagloon * 2

print(f"Dagloon: {dagloon} euro")
```

Het programma werkt niet helemaal goed. Bij het uitvoeren van de tests wordt het volgende afgedrukt:

<sample-output>

<pre>
FAIL: PythonEditorTest: test_sunday_1

Met input 20.0,6,zondag wordt de juiste beloning van 240.0 niet gevonden in de uitvoer Dagloon: 120.0 euro
</pre>

</sample-output>

Bij het debuggen van de oefeningen in deze cursus is de eerste stap vaak controleren hoe het programma zich gedraagt met de input die is gespecificeerd in de test die is mislukt. Inderdaad, het resultaat is niet wat werd verwacht:

<sample-output>

Dagloon: 120.0 euro

</sample-output>

Debuggen betekent vaak dat het programma meerdere keren wordt uitgevoerd. Het kan handig zijn om de problematische input tijdelijk "hardcoded" in te stellen in plaats van de gebruiker telkens om input te vragen. In dit geval kan hardcoding er als volgt uitzien:

```python
# uurloon = float(input("Uurloon: "))
# uren = int(input("Gewerkte uren: "))
# dag = input("Dag van de week: ")
uurloon = 20.0
uren = 6
dag = "zondag"

dagloon = uurloon * uren
if dag == "zondag":
    dagloon * 2

print(f"Dagloon: {dagloon} euro")
```

De volgende stap kan zijn om _debugging-printopdrachten_ toe te voegen. Het problematische deel van de code bevindt zich in het gedeelte dat zich bezighoudt met zondagen, dus laten we `print`-opdrachten toevoegen voor en na de regel die het dagloon zou moeten verdubbelen:

```python
# ...

dagloon = uurloon * uren
if dag == "zondag":
    print("loon voor:", dagloon)
    dagloon * 2
    print("loon na verdubbeling:", dagloon)

print(f"Dagloon: {dagloon} euro")
```

Het opnieuw uitvoeren van de code laat niets zien - de debugging-printopdrachten worden helemaal niet afgedrukt. Het lijkt erop dat de inhoud van het `if`-block nooit wordt uitgevoerd, dus er moet een probleem zijn met de conditionele statement. Laten we de waarde van de booleaanse expressie afdrukken:

```python
# ...

dagloon = uurloon * uren
print("conditie:", dag == "zondag")
if dag == "zondag":
    print("loon voor:", dagloon)
    dagloon * 2
    print("loon na verdubbeling:", dagloon)

print(f"Dagloon: {dagloon} euro")
```

Inderdaad, de waarde is `False`, dus de inhoud van het `if`-block wordt nooit uitgevoerd:

<sample-output>

conditie: False
Dagloon: 120.0 euro

</sample-output>

Het probleem moet dan liggen in de voorwaarde van de `if`-verklaring. Zoals in zoveel situaties in het programmeren, doet de hoofdlettergebruik ertoe bij vergelijkingen. Let op hoe "zondag" in

 de booleaanse expressie niet is gecapitaliseerd, maar in de invoer wel. Laten we dit corrigeren (zowel in de `print`-opdracht als in de `if`-verklaring):

```python
# ...

dagloon = uurloon * uren
print("conditie:", dag == "Zondag")
if dag == "Zondag":
    print("loon voor:", dagloon)
    dagloon * 2
    print("loon na verdubbeling:", dagloon)

print(f"Dagloon: {dagloon} euro")
```

Het opnieuw uitvoeren van de code resulteert in het volgende:

<sample-output>

conditie: True
loon voor: 120
loon na verdubbeling: 120
Dagloon: 120.0 euro

</sample-output>

Het lijkt erop dat de waarde die is opgeslagen in `dagloon` in eerste instantie correct is: `uurloon = 20.0` en `uren = 6`, en 20.0 * 6 = 120.0. De opdracht die de figuur moet verdubbelen, doet dat echter niet, dus er moet een probleem zijn met de opdracht. En inderdaad, de opdracht

```python
dagloon * 2
```

verdubbelt de waarde, maar slaat de nieuwe waarde niet ergens op. Laten we dit veranderen, zodat het ook de nieuwe waarde opslaat:

```python
dagloon *= 2
```

Het opnieuw uitvoeren van het programma laat zien dat de uitvoer aan het einde nu ook correct is:

<sample-output>

conditie: True
loon voor: 120
loon na verdubbeling: 240
Dagloon: 240.0 euro

</sample-output>

Wanneer het programma is gerepareerd, vergeet dan niet alle debugging-printopdrachten en andere code die voor debugdoeleinden is toegevoegd, te verwijderen.

Dit voorbeeld was vrij eenvoudig, en in zo'n kort programma kun je waarschijnlijk de bugs vinden door de code zorgvuldig te lezen. Het gebruik van debugging-printopdrachten is echter vaak een snelle manier om een idee te krijgen waar het probleem zou kunnen liggen. Printopdrachten kunnen worden gebruikt om te achterhalen welke delen van het programma correct lijken te werken, zodat de inspanningen voor het opsporen van bugs kunnen worden geconcentreerd op de delen van de code die waarschijnlijk de schuldige zijn.

Debugging-printopdrachten zijn slechts één tool voor het debuggen van programma's. We zullen later in deze cursus terugkomen op dit onderwerp. Je moet nu de gewoonte ontwikkelen om debugging-printopdrachten te gebruiken om fouten in je code op te sporen. Professionele programmeurs kunnen niet zonder ze, dus het is ook een zeer nuttige tool voor beginners.

<in-browser-programming-exercise name="Fix the syntax" tmcname="part02-01_fix_syntax" height="400px">

Het volgende programma bevat verschillende _syntactische fouten_. Los de fouten op, zodat de syntax in orde is en het programma werkt zoals gespecificeerd in de onderstaande voorbeelden.

```python
  number = input("Please type in a number: ")
  if number>100
    print("The number was greater than one hundred")
    number - 100
    print("Now its value has decreased by one hundred)
     print("Its value is now"+ number)
 print(number + " must be my lucky number!")
 print("Have a nice day!)
```

<sample-output>

Please type in a number: **13**
13 must be my lucky number!
Have a nice day!

</sample-output>

<sample-output>

Please type in a number: **101**
The number was greater than one hundred
Now its value has decreased by one hundred
Its value is now 1
1 must be my lucky number!
Have a nice day!

</sample-output>

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Number of characters" tmcname="part02-02_number_of_characters">

De functie `len` kan worden gebruikt om de lengte van een string te achterhalen, onder andere. De functie geeft het aantal tekens in een string terug.

Some examples of how this works:

```python
word = "abcd"
print(len(word))

print(len("hi there"))

word2 = "howdydoody"
length = len(word2)
print(length)

empty_string = ""
length = len(empty_string)
print(length)
```

<sample-output>

4
8
10
0

</sample-output>

Schrijf een programma dat de gebruiker om een woord vraagt en vervolgens het aantal tekens afdrukt, als er meer dan één is ingevoerd.

Examples of expected behaviour:

<sample-output>

Please type in a word: **hey**
There are 3 letters in the word hey
Thank you!

</sample-output>

<sample-output>

Please type in a word: **banana**
There are 6 letters in the word banana
Thank you!

</sample-output>

<sample-output>

Please type in a word: **b**
Thank you!

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Typecasting" tmcname="part02-03_typecasting">

Bij het programmeren in Python moeten we vaak het gegevenstype van een waarde veranderen. Bijvoorbeeld, een kommagetal kan worden omgezet in een geheel getal met de functie `int`:

```python

temperature = float(input("Please type in a temperature: "))

print("The temperature is", temperature)

print("...and rounded down it is", int(temperature))

```

<sample-output>

Please type in a temperature: **5.15**
The temperature is 5.15
...and rounded down it is 5

</sample-output>

Notice the function always rounds down, and not according to the rounding rules in mathematics. This is an example of a _floor function_.

<sample-output>

Please type in a temperature: **8.99**
The temperature is 8.99
...and rounded down it is 8

</sample-output>

Please write a program which asks the user for a floating point number and then prints out the integer part and the decimal part separately. Use the Python `int` function.

You can assume the number given by the user is always greater than zero.

An example of expected behaviour:

<sample-output>

Please type in a number: **1.34**
Integer part: 1
Decimal part: 0.34

</sample-output>

</in-browser-programming-exercise>
