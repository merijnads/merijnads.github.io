---
path: '/part-3/4-definite-iteration'
title: 'For loops'
hidden: false
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie:

- Weet je hoe een Python `for`-lus werkt.
- Kun je een `for`-lus gebruiken om door lijsten en strings te itereren.

</text-box>

Je kunt een lijstindex gebruiken om elk element in een lijst te benaderen.

```python
my_list = [3, 2, 4, 5, 2]

print(my_list[0])
print(my_list[1])
print(my_list[2])
```

<sample-output>

3
2
4
5
2

</sample-output>

Dit werkt uiteraard, maar het werkt niet als we de lengte van de lijst niet weten en het ziet er niet erg mooi uit. Gelukkig biedt Python een intuïtievere manier om door lijsten, strings en andere vergelijkbare structuren te gaan.

## De for-lus

Als je door een verzameling items wilt gaan, kan de Python `for`-lus dit voor je doen. Bijvoorbeeld, de lus kan alle items in een lijst van het eerste tot het laatste item doorlopen.

In een latere les zullen we een ander soort lus zien: de `while`-lus. Een `while`-lus is een meer algemene versie van de `for`-lus die we hier zullen zien. Een `for`-lus werkt alleen met lijstachtige gegevenstypen, zoals lijsten en strings. Een `while`-lus werkt ook met lijstachtige gegevenstypen, maar ook met veel meer.

Het idee is dat de `for`-lus de items in de verzameling één voor één neemt en dezelfde acties op elk item uitvoert. De programmeur hoeft zich geen zorgen te maken over welk item er wordt verwerkt. De syntaxis van de for-lus is als volgt:

```python
for <variabele> in <verzameling>:
    <blok>
```

De `for`-lus neemt een item uit de verzameling, kent het toe aan de variabele, voert het blok code uit en gaat verder met het volgende item. Wanneer alle items in de verzameling zijn verwerkt, gaat de uitvoering van het programma verder vanaf de regel na de lus.

<img src="4_4_1.png" alt="Itereren door een lijst">

Het volgende programma drukt alle items in een lijst af met behulp van een `for`-lus:

```python
my_list = [3, 2, 4, 5, 2]

for item in my_list:
    print(item)
```

<sample-output>

3
2
4
5
2

</sample-output>

In vergelijking met het voorbeeld aan het begin van deze sectie is de structuur veel gemakkelijker te begrijpen. Een `for`-lus maakt rechtlijnige doorloop van een verzameling items zeer eenvoudig.

## Lijsten en for-lussen

Lijsten kunnen effectief worden verwerkt met behulp van `for`-lussen. Hier is een voorbeeld dat de som van alle items in een lijst berekent:

```python
getallen = [5, 2, 6, 1, 3]
som = 0
for nummer in getallen:
    som += nummer

print("De som van de getallen is", som)
```

<sample-output>

De som van de getallen is 17

</sample-output>

De variabele `nummer` neemt de waarde aan van elk item in de lijst, één voor één. De som wordt bijgewerkt door elk nummer toe te voegen aan de huidige som.

Je kunt ook de `range`-functie gebruiken in combinatie met de `len`-functie om de indexen van een lijst te gebruiken:

```python
getallen = [5, 2, 6, 1, 3]
for i in range(len(getallen)):
    getallen[i] = getallen[i] * 2

print(getallen)
```

<sample-output>

[10, 4, 12, 2, 6]

</sample-output>

De `range(len(getallen))`-expressie genereert een reeks van indexen die overeenkomen met de positie van elk item in de lijst. Vervolgens wordt elk item vermenigvuldigd met 2 en bijgewerkt in de oorspronkelijke lijst.

Hetzelfde principe geldt voor karakters in een string:

```python
name = input("Typ je naam: ")

for character in name:
    print(character)
```

<sample-output>

Typ je naam: **Grace**
G
r
a
c
e

</sample-output>

<programming-exercise name='Sterrenregen' tmcname='part04-20_star_studded'>

Schrijf een programma dat de gebruiker vraagt om een string in te typen. Het programma drukt vervolgens elk ingevoerd karakter op een aparte regel af. Na elk karakter moet er een ster (*) op een eigen regel worden afgedrukt.

Zo zou het moeten werken:

<sample-output>

Typ een string: **Python**
P
*
y
*
t
*
h
*
o
*
n
*

</sample-output>

**NB:** In deze oefening wordt niet gevraagd om functies te schrijven, dus je moet __geen__ code binnen een `if __name__ == "__main__"`-blok plaatsen.

</programming-exercise>

## De functie `range`

Vaak weet je hoe vaak je een bepaald stuk code wilt herhalen. Bijvoorbeeld, je wilt mogelijk alle getallen tussen 1 en 100 doorlopen. De functie `range` in combinatie met een `for`-lus kan dit voor je doen.

Er zijn een paar verschillende manieren om de `range`-functie aan te roepen. De eenvoudigste manier is om de functie slechts één argument te geven, wat het eindpunt van het bereik aangeeft. Het eindpunt zelf is uitgesloten, net zoals bij string-slices. Met andere woorden, de functieaanroep `range(n)` geeft een lus met een bereik van 0 tot `n-1`:

```python
for i in range(5):
    print(i)
```

<sample-output>

0
1
2
3
4

</sample-output>

Met twee argumenten geeft de functie een bereik tussen de twee getallen. De functie `range(a, b)` geeft een bereik dat begint bij `a` en eindigt bij `b-1`:

```python
for i in range(3, 7):
    print(i)
```

<sample-output>

3
4
5
6

</sample-output>

Ten slotte kun je met een derde argument ook de grootte van de _stap_ specificeren die het bereik neemt bij elke waarde. De functieaanroep `range(a, b, c)` geeft een bereik dat begint bij `a`, eindigt bij `b-1` en bij elke stap met `c` verandert:

```python
for i in range(1, 9, 2):
    print(i)
```

<sample-output>

1
3
5
7

</sample-output>

Een stap kan ook negatief zijn. Dan zal het bereik in omgekeerde volgorde zijn. Let op dat hierbij de eerste twee argumenten ook worden omgedraaid:

```python
for i in range(6, 2, -1):
    print(i)
```

<sample-output>

6
5
4
3

</sample-output>

<programming-exercise name='Van negatief naar positief' tmcname='part04-21_negative_to_positive'>

Schrijf een programma dat de gebruiker vraagt om een positief geheel getal N. Het programma drukt vervolgens alle getallen af tussen -N en N (inclusief), maar _laat het getal

0 buiten beschouwing_. Elk getal moet op een aparte regel worden afgedrukt.

Een voorbeeld van het verwachte gedrag:

<sample-output>

Typ een positief geheel getal: **4**
-4
-3
-2
-1
1
2
3
4

</sample-output>


</programming-exercise>

## Van een bereik naar een lijst

De functie `range` retourneert een bereikobject dat zich op veel manieren gedraagt als een lijst, maar dat eigenlijk geen lijst is. Als je de waarde die de functie retourneert probeert af te drukken, zie je alleen een beschrijving van een bereikobject:

```python
numbers = range(2, 7)
print(numbers)
```

<sample-output>

range(2, 7)

</sample-output>

Met de functie `list` kun je een bereik omzetten in een lijst. De lijst bevat alle waarden die zich in het bereik bevinden. De cursus Gevorderd Programmeren, die volgt op deze cursus, zal meer inzicht geven in dit onderwerp.

```python
numbers = list(range(2, 7))
print(numbers)
```

<sample-output>

[2, 3, 4, 5, 6]

</sample-output>

## Rekenen met lijsten

Met `for`-lussen kun je ook berekeningen uitvoeren op een lijst. Bijvoorbeeld het berekenen van de som van de lijst:

```python
getallen = [5, 2, 6, 1, 3]
som = 0
for nummer in getallen:
    som += nummer

print("De som van de getallen is", som)
```

<sample-output>

De som van de getallen is 17

</sample-output>

De variabele `nummer` neemt de waarde aan van elk item in de lijst, één voor één. De som wordt bijgewerkt door elk nummer toe te voegen aan de huidige som.

Je kunt ook de `range`-functie gebruiken in combinatie met de `len`-functie om de indexen van een lijst te gebruiken:

```python
getallen = [5, 2, 6, 1, 3]
for i in range(len(getallen)):
    getallen[i] = getallen[i] * 2

print(getallen)
```

<sample-output>

[10, 4, 12, 2, 6]

</sample-output>

De `range(len(getallen))`-expressie genereert een reeks van indexen die overeenkomen met de positie van elk item in de lijst. Vervolgens wordt elk item vermenigvuldigd met 2 en bijgewerkt in de oorspronkelijke lijst.

<programming-exercise name='Lijst van sterren' tmcname='part04-22_list_of_stars'>

Schrijf een programma die een lijst van nummers, bijvoorbeeld `sterren = [3, 7, 1, 2]` omzet in sterretjes. Dus per nummer wordt er een regel sterretjes afgedrukt met de juiste hoeveelheid. Bijvoorbeeld voor de hiervoor gegeven lijst:

<sample-output>

<pre>
***
*******
*
**
</pre>

</sample-output>


</programming-exercise>

<programming-exercise name='Anagrammen' tmcname='part04-23_anagrams'>

Schrijf een programma, die op basis van twee strings `True` print als de strings anagrammen van elkaar zijn anders `False`. Twee woorden zijn anagrammen als ze precies dezelfde karakters bevatten.

Enkele voorbeelden van hoe het programma zou moeten werken:

```python
string1 = "tame"
string2 = "meta"
<HET PROGRAMMA>
# True
```

```python
string1 = "tame"
string2 = "team"
<HET PROGRAMMA>
# True
```

```python
string1 = "tabby"
string2 = "batty"
<HET PROGRAMMA>
# False
```

Hint: de functie `sorted` kan ook worden gebruikt op strings.

</programming-exercise>

<programming-exercise name='Palindromen' tmcname='part04-24_palindromes'>

Schrijf een programma die een string vraagt aan de gebruiker en checkt of het een palindroom is. Palindromen zijn woorden die precies hetzelfde worden gespeld als ze achterstevoren worden gelezen. Bijvoorbeeld:

<sample-output>

Typ een palindroom: **python**
dat was geen palindroom
Typ een palindroom: **java**
dat was geen palindroom
Typ een palindroom: **oddoreven**
dat was geen palindroom
Typ een palindroom: **neveroddoreven**
neveroddoreven is een palindroom!

</sample-output>


</programming-exercise>

<programming-exercise name='De som van positieve getallen' tmcname='part04-25_sum_of_positives'>

Schrijf een programma die op basis van een lijst van gehele getallen de som van de positieve waarden in de lijst berekent.

```python
mijn_lijst = [1, -2, 3, -4, 5]
<Jouw programma>
print("Het resultaat is", resultaat)
```

<sample-output>

Het resultaat is 9

</sample-output>

</programming-exercise>


<programming-exercise name='Unieke namen' tmcname='part04-28_distinct_numbers'>

Schrijf een programma die een lijst van voornamen kan ontdubbelen.

```python
voornamen = ["max", "marie", "mark", "max", "linda", "marie"]
<Jouw programma>
```

<sample-output>

De ontdubbelde lijst met namen is ["max", "marie", "mark", "linda"]

</sample-output>

</programming-exercise>

## Het beste of het slechtste item in een lijst vinden

Een zeer veelvoorkomende programmeertaak is het vinden van het beste of slechtste item in een lijst, volgens bepaalde criteria. Een eenvoudige oplossing is het gebruik van een hulpvariabele om te "onthouden" welk van de tot nu toe verwerkte items het meest geschikt was. Deze tijdelijke beste keuze wordt vervolgens vergeleken met elk item op zijn beurt, en aan het einde van de iteratie bevat de variabele het beste van de groep.

Een ruwe schets die nog niet helemaal werkt:

```python
beste = initiële_waarde # De initiële waarde hangt af van de situatie
for item in mijn_lijst:
    als item beter is dan beste:
        beste = item

# We hebben nu de beste gevonden!
```

De details van de uiteindelijke programmacode hangen af van het type items in de lijst, en ook van de criteria voor het kiezen van het beste (of slechtste) item. Soms heb je meer dan één hulpvariabele nodig.

Laten we deze methode een beetje oefenen.

<programming-exercise name='De lengte van het langste in de lijst' tmcname='part04-29_length_of_longest'>

Schrijf een programma die op basis van een lijst van strings de langste string print.

```python
mijn_lijst = ["eerste", "tweede", "vierde", "elfde"]
```
<sample-output>

De langste string is "eerste"

</sample-output>

```python
mijn_lijst = ["adele", "mark", "dorothy", "tim", "hedy", "richard"]
```
<sample-output>

De langste string is "dorothy"

</sample-output>
</programming-exercise>


## Samenvatting

Je hebt nu geleerd hoe je door een lijst kunt itereren met behulp van een `for`-lus. Je kunt de elementen van de lijst benaderen door een lijstindex te gebruiken of direct door de elementen zelf te noemen. De `range`-functie kan worden gebruikt om herhaalde lussen te maken.

Daarnaast heb je geleerd hoe je het beste of slechtste item in een lijst kunt vinden, evenals het berekenen van de som van de getallen in een lijst.

In de volgende sectie zullen we het hebben over het aanroepen van functies, zodat je code kunt schrijven die hergebruik van code bevordert.
