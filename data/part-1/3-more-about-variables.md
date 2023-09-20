---
path: "/part-1/3-more-about-variables"
title: "Meer over variabelen"
hidden: false
---
<text-box variant='learningObjectives' name='Leerdoelen'>

Na deze sectie:

- Kun je variabelen gebruiken in verschillende contexten.
- Weet je welk soort gegevens in variabelen kunnen worden opgeslagen.
- Begrijp je het verschil tussen strings, integers en floating-point getallen.

</text-box>

Variabelen zijn nodig voor verschillende doeleinden in programmeren. Je kunt variabelen gebruiken om informatie op te slaan die later in het programma nodig zal zijn.

In Python worden variabelen als volgt gemaakt:

`variabele_naam = ...`

Hier staat `...` voor de waarde die wordt opgeslagen in de variabele.

Bijvoorbeeld, toen je het `input`-commando gebruikte om een string van de gebruiker te lezen, heb je de string opgeslagen in een variabele en later in je programma gebruikt:

```python
naam = input("Wat is je naam? ")
print("Hallo, " + naam)
```

<sample-output>

Wat is je naam? **Ghosty**
Hallo, Ghosty

</sample-output>

De waarde die in een variabele is opgeslagen, kan ook worden gedefinieerd met behulp van andere variabelen:

```python
voornaam = "Paul"
achternaam = "Python"

naam = voornaam + " " + achternaam

print(naam)
```

<sample-output>

Paul Python

</sample-output>

Hier worden de waarden in de drie variabelen niet verkregen uit invoer van de gebruiker. Ze blijven hetzelfde elke keer dat het programma wordt uitgevoerd. Dit wordt _hard-coding_ van gegevens in het programma genoemd.

## Het veranderen van de waarde van een variabele

Zoals de naam _variabele_ al impliceert, kan de waarde die in een variabele is opgeslagen veranderen. In de vorige sectie hebben we gemerkt dat de nieuwe waarde de oude vervangt.

Tijdens de uitvoering van het volgende programma zal de variabele `woord` drie verschillende waarden hebben:

```python
woord = input("Typ een woord: ")
print(woord)

woord = input("En nog een woord: ")
print(woord)

woord = "derde"
print(woord)
```

<sample-output>

Typ een woord: **eerste**
eerste
En nog een woord: **tweede**
tweede
derde

</sample-output>

De waarde die in de variabele is opgeslagen, verandert telkens wanneer de variabele een nieuwe waarde krijgt toegewezen.

De nieuwe waarde van een variabele kan worden afgeleid uit de oude waarde. In het volgende voorbeeld wordt de variabele `woord` eerst een waarde toegewezen op basis van gebruikersinvoer. Vervolgens wordt het een nieuwe waarde toegewezen, die de oude waarde is met drie uitroeptekens toegevoegd aan het einde.

```python
woord = input("Typ een woord: ")
print(woord)

woord = woord + "!!!"
print(woord)
```

<sample-output>

Typ een woord: **test**
test
test!!!

</sample-output>

<text-box variant="hint" name="Een goede naam kiezen voor een variabele">

* Het is vaak nuttig om variabelen een naam te geven op basis van waar ze voor worden gebruikt. Bijvoorbeeld, als de variabele een woord bevat, is de naam `woord` een betere keuze dan bijvoorbeeld `a`.

* Er is geen vaste limiet voor de lengte van een variabelenaam in Python, maar er zijn enkele andere beperkingen. Een variabelenaam moet beginnen met een letter en kan alleen letters, cijfers en underscores &#95; bevatten.

* Hoofdletters en kleine letters worden als verschillende tekens beschouwd. De variabelen `naam`, `Naam` en `NAAM` zijn allemaal verschillende variabelen. Hoewel deze regel enkele uitzonderingen heeft, zullen we die voor nu negeren.

* Het is een gebruikelijk in Python om alleen kleine letters te gebruiken in variabelenamen. Als de variabelenaam uit meerdere woorden bestaat, gebruik dan een underscore tussen de woorden. Dit noemen we `snake_case`.

</text-box>

## Integers

Tot nu toe hebben we alleen strings (tekst) opgeslagen in variabelen, maar er zijn ook veel andere soorten informatie die we willen opslaan en later willen gebruiken. Laten we eerst kijken naar integers. Integers zijn hele getallen, dus zonder decimale of fractionele delen. Voorbeelden van integers zijn `-15`, `0` en `1`.

Het volgende programma maakt de variabele `leeftijd` aan, die een integer-waarde bevat.

```python
leeftijd = 24
print(leeftijd)
```

Het programma drukt alleen dit af:

<sample-output>

24

</sample-output>

Let op het ontbreken van aanhalingstekens hier. Sterker nog, als we aanhalingstekens rond het getal zouden zetten, zou onze variabele niet langer een integer zijn, maar in plaats daarvan een string. Een string kan getallen bevatten, maar ze worden anders verwerkt.

Dus waarom is het belangrijk dat variabelen een type hebben, terwijl het volgende programma toch twee keer hetzelfde afdrukt?

```python
getal1 = 100
getal2 = "100"

print(getal1)
print(getal2)
```

<sample-output>

100
100

</sample-output>

Variabeletypes zijn belangrijk omdat verschillende bewerkingen verschillende typen variabelen op verschillende manieren beïnvloeden. Laten we eens kijken naar een paar voorbeelden:

**Twee integers**

```python
getal1 = 100
getal2 = 100

print(getal1 + getal1)
```

<sample-output>

200

</sample-output>

**Integer plus string**

```python
getal1 = 100
getal2 = "100"

print(getal1 + getal1)
```

<sample-output>

200

</sample-output>

**String plus string**
```python
getal1 = "100"
getal2 = "100"

print(getal1 + getal1)
```

<sample-output>

100100

</sample-output>

Voor integerwaarden betekent de `+`-operator optelling, maar voor stringwaarden betekent deze concatenatie, ofwel "samenvoegen".

Niet alle operatoren zijn beschikbaar voor alle soorten variabelen. Terwijl getallen kunnen worden gedeeld met behulp van de delingsoperator `/`, veroorzaakt een poging om een string door een getal te delen een fout:

```python
getal = "100"
print(getal / 2)
```

<sample-output>
TypeError: unsupported operand type(s) for /: 'str' and 'int'
</sample-output>


Begrijp jij wat deze foutmelding betekent?


## Waarden combineren bij het afdrukken

Op dezelfde manier werkt het volgende programma niet, omdat `"De uitkomst is "` en `resultaat` twee verschillende typen hebben:

```python
resultaat = 10 * 25
# de volgende regel veroorzaakt een fout
print("De uitkomst is " + resultaat)
```

Het programma drukt niets af, maar veroorzaakt in plaats daarvan een fout:

<sample-output>

TypeError: unsupported operand type(s) for +: 'str' and 'int'



</sample-output>



Hier vertelt Python ons dat het combineren van twee verschillende typen waarden niet zomaar werkt. In dit geval is `"De uitkomst is "` van het type string, terwijl de waarde opgeslagen in `resultaat` van het type integer is.

Als we inderdaad een string en een integer in één opdracht willen afdrukken, kan de integer worden omgezet in een string met behulp van de `str`-functie, en kunnen de twee strings vervolgens normaal worden gecombineerd. Bijvoorbeeld, dit zou werken:

```python
resultaat = 10 * 25
print("De uitkomst is " + str(resultaat))
```

<sample-output>

De uitkomst is 250

</sample-output>

Het `print`-commando heeft ook ingebouwde functionaliteiten die het combineren van verschillende soorten waarden ondersteunen. De eenvoudigste manier is om een komma tussen de waarden te plaatsen. Alle waarden worden afgedrukt, ongeacht hun type:

```python
resultaat = 10 * 25
print("De uitkomst is", resultaat)
```

<sample-output>

De uitkomst is 250

</sample-output>

Let op dat er automatisch een spatiekarakter wordt toegevoegd tussen de waarden die door een komma worden gescheiden.

## Afdrukken met f-strings

Wat als we meer flexibiliteit en controle willen over wat we afdrukken? Zogenaamde _f-strings_ zijn een andere manier om tekst op te maken in Python. De syntax kan in het begin wat verwarrend lijken, maar uiteindelijk zijn f-strings vaak de eenvoudigste manier om tekst op te maken.

Met f-strings zou het vorige voorbeeld er als volgt uitzien:

```python
resultaat = 10 * 25
print(f"De uitkomst is {resultaat}")
```

Laten we dit uit elkaar halen. Aan het begin van de string die we willen afdrukken staat het karakter _f_. Dit vertelt Python dat wat volgt een f-string is. Binnen de string, omringd door accolades, staat de variabelenaam `resultaat`. De waarde die het bevat, wordt een deel van de afgedrukte string. De uitvoer is precies hetzelfde als in de vorige voorbeelden:

<sample-output>

De uitkomst is 250

</sample-output>

Eén enkele f-string kan meerdere variabelen bevatten. Bijvoorbeeld, deze code

```python
naam = "Mark"
leeftijd = 37
woonplaats = "Palo Alto"
print(f"Hallo {naam}, je bent {leeftijd} jaar oud. Je woont in {woonplaats}.")
```

drukt het volgende af:

<sample-output>

Hallo Mark, je bent 37 jaar oud. Je woont in Palo Alto.

</sample-output>

Het is moeilijk om een afdruk precies zoals deze te maken met de komma-notatie in het `print`-commando. Bijvoorbeeld, dit programma

```python
naam = "Mark"
leeftijd = 37
woonplaats = "Palo Alto"
print("Hallo", naam, ", je bent", leeftijd, "jaar oud. Je woont in", woonplaats, ".")
```

drukt het volgende af:

<sample-output>

Hallo Mark , je bent 37 jaar oud. Je woont in Palo Alto .

</sample-output>

In zijn eenvoud kan de komma-notatie van het `print`-commando vaak handig zijn, maar het kan soms meer problemen veroorzaken dan het waard is. F-strings zijn meestal een betrouwbaardere optie. In deel 4 leer je meer over de handige functies van f-strings als het gaat om het opmaken van afdrukken.


<text-box variant="hint" name="Kwaliteit">

Het voorbeeld met F-strings is korter dan het werken met komma-notatie. Vaak is kortere code een teken van betere code. Maar dit mag niet ten koste gaan van de leesbaarheid.

</text-box>

<in-browser-programming-exercise name="Extra spatie" tmcname="part01-10b_extra_space" height=400px>

Je vriend werkt aan een app voor werkzoekenden. Ze stuurt je dit stukje code:

```python
name = "Tim Tester"
age = 20
skill1 = "python"
level1 = "beginner"
skill2 = "java"
level2 = "veteran"
skill3 = "programming"
level3 = "semiprofessional"
lower = 2000
upper = 3000

print("my name is ", name, " , I am ", age, "years old")
print("my skills are")
print("- ", skill1, " (", level1, ")")
print("- ", skill2, " (", level2, ")")
print("- ", skill3, " (", level3, " )")
print("I am looking for a job with a salary of", lower, "-", upper, "euros per month")
```

Het programma zou _precies_ het volgende moeten afdrukken:

<sample-output>

<pre>
my name is Tim Tester, I am 20 years old

my skills are
 - python (beginner)
 - java (veteran)
 - programming (semiprofessional)

I am looking for a job with a salary of 2000-3000 euros per month
</pre>

</sample-output>

Het codefragment werkt bijna correct, maar net niet helemaal. Deze oefening heeft zeer strenge tests, die de uitvoer controleren op elk stukje witruimte.

Pas de code aan zodat de uitvoer er correct uitziet. Let vooral op hoe de komma-notatie in het `print`-commando automatisch een spatie invoegt rond de verschillende door komma's gescheiden delen.

**De gemakkelijkste manier om de code te transformeren zodat deze aan de vereisten voldoet, is het gebruik van f-strings.**

Dus in plaats van

`print("Hallo", naam)`

gebruiken we

`print(f"Hallo {naam}")`

Hint: je kunt een lege regel afdrukken door een leeg `print`-commando toe te voegen, of door het newline-teken `\n` in je string op te nemen.

</in-browser-programming-exercise>

## Floating-point getallen

`Floating-point getal` of _float_ is een term die je vaak tegen zult komen in programmeren. Het verwijst naar getallen met een decimaalpunt. Ze kunnen op dezelfde manier worden gebruikt als integerwaarden.

Dit programma berekent het gemiddelde van drie floating-point getallen:

```python
getal1 = 2.5
getal2 = -1.25
getal3 = 3.62

gemiddelde = (getal1 + getal2 + getal3) / 3
print(f"Gemiddelde: {gemiddelde}")
```

<sample-output>

Gemiddelde: 1.6233333333333333

</sample-output>

<in-browser-programming-exercise name="Rekenkunde" tmcname="part01-11_arithmetics">

Dit programma bevat al twee integervariabelen, `x` en `y`:

```python
x = 27
y = 15
```

Maak het programma af zodat het ook het volgende afdrukt:

<sample-output>

<pre>
27 + 15 = 42
27 - 15 = 12
27 * 15 = 405
27 / 15 = 1.8
</pre>

</sample-output>

Het programma moet correct werken, zelfs als de waarden van de variabelen worden gewijzigd. Dat wil zeggen, als de eerste twee regels worden vervangen door dit

```python
x = 4
y = 9
```

dan zou het programma het volgende moeten afdrukken:

<sample-output>

<pre>
4 + 9 = 13
4 - 9 = -5
4 * 9 = 36
4 / 9 = 0.4444444444444444
</pre>

</sample-output>

Hint: Je kunt berekening eerst opslaan in een andere variabele, bijvoorbeeld `z`. Of je kunt direct een berekening doen in een F-string: `print(f"{x/y}")`

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Herstel de code: Druk een enkele regel af" tmcname="part01-12_print_a_single_line">

Elke `print`-opdracht drukt meestal een eigen regel af, compleet met een regelovergang aan het einde. Als aan de `print`-opdracht echter een extra argument `end = ""` wordt gegeven, wordt er geen regelovergang afgedrukt.

Bijvoorbeeld:

```python
print("Hallo ", end="")
print("daar!")
```

<sample-output>

Hallo daar!

</sample-output>

Herstel dit programma zodat de volledige berekening, inclusief het resultaat, op één regel wordt afgedrukt. Verander het aantal gebruikte `print`-opdrachten niet.

Hint: Voordat je de code aanpast, druk op *RUN* zo dat je weet wat de beginsituatie is.

```python

print(5)
print(" + ")
print(8)
print(" - ")
print(4)
print(" = ")
print(5 + 8 - 4)
```

</in-browser-programming-exercise>
