---
path: '/part-3/3-lists'
title: 'Lijsten'
hidden: false
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie

- Weet je wat lijsten zijn in Python
- Kun je een specifiek item in een lijst benaderen
- Weet je hoe je items aan een lijst kunt toevoegen en verwijderen
- Ben je bekend met ingebouwde lijstfuncties en -methoden

</text-box>

Tot nu toe hebben we gegevens in onze programma's opgeslagen met behulp van variabelen, waarbij elk stukje gegevens meestal zijn eigen benoemde variabele heeft. Dit heeft uiteraard enkele beperkingen, aangezien het lastig kan worden om aparte variabelen te definiëren voor alles wanneer er veel gegevens moeten worden verwerkt.

Een Python _lijst_ is een verzameling waarden die wordt benaderd via één variabelenaam. De inhoud van de lijst wordt tussen vierkante haken geschreven. De waarden in de lijst worden _items_ genoemd, of soms _elementen_.

De volgende opdracht maakt een nieuwe, lege lijst:

```python
mijn_lijst = []
```

terwijl deze opdracht een lijst maakt met vijf items:

```python
mijn_lijst = [7, 2, 2, 5, 2]
```

## Toegang tot items in een lijst

De items in een lijst worden geïndexeerd op dezelfde manier als karakters in een string. De indexering begint bij nul, en de laatste index is de lengte van de lijst min één:

<img src="4_3_1.png" alt="Lijsten beginnen bij index 0">

Een enkel item in de lijst kan net als een enkel karakter in een string worden benaderd met behulp van vierkante haken:

```python
mijn_lijst = [7, 2, 2, 5, 2]

print(mijn_lijst[0])
print(mijn_lijst[1])
print(mijn_lijst[3])

print("De som van de eerste twee items:", mijn_lijst[0] + mijn_lijst[1])
```

<sample-output>

7
2
5
De som van de eerste twee items: 9

</sample-output>

De volledige inhoud van de lijst kan ook worden afgedrukt:

```python
mijn_lijst = [7, 2, 2, 5, 2]
print(mijn_lijst)
```

<sample-output>

[7, 2, 2, 5, 2]

</sample-output>

In tegenstelling tot strings zijn lijsten _veranderbaar_ (mutable), wat betekent dat hun inhoud kan worden gewijzigd. Je kunt een nieuwe waarde toekennen aan een item in een lijst, net zoals je een nieuwe waarde kunt toekennen aan een variabele:

```python
mijn_lijst = [7, 2, 2, 5, 2]
print(mijn_lijst)
mijn_lijst[1] = 3
print(mijn_lijst)
```

<sample-output>

[7, 2, 2, 5, 2]
[7, 3, 2, 5, 2]

</sample-output>

De functie `len` geeft je het aantal items in een lijst:

```python
mijn_lijst = [7, 2, 2, 5, 2]
print(len(mijn_lijst))
```

<sample-output>

5

</sample-output>


<programming-exercise name='De waarde van een item wijzigen' tmcname='part04-12_change_value_of_item'>

Schrijf een programma dat eerst een lijst initialiseert met de waarden `[1, 2, 3, 4, 5]`. Vervolgens vraagt het programma de gebruiker om een index en een nieuwe waarde, vervangt de waarde op de opgegeven index en drukt de lijst opnieuw af.

Een voorbeelduitvoering van het programma:

<sample-output>

Index: **0**
Nieuwe waarde: **10**
[10, 2, 3, 4, 5]

</sample-output>
<sample-output>

Index: **2**
Nieuwe waarde: **250**
[10, 2, 250, 4, 5]

</sample-output>
<sample-output>

Index: **4**
Nieuwe waarde: **-45**
[10, 2, 250, 4, -45]

</sample-output>


</programming-exercise>

## Items toevoegen aan een lijst

De methode `append` voegt items toe aan het einde van een lijst. Het werkt als volgt:

```python
nummers = []
nummers.append(5)
nummers.append(10)
nummers.append(3)
print(nummers)
```

<sample-output>

[5, 10, 3]

</sample-output>

Het volgende voorbeeld maakt gebruik van twee afzonderlijke lijsten:

```python
nummers = []
schoenmaten = []

nummers.append(5)
nummers.append(10)
nummers.append(3)

schoenmaten.append(37)
schoenmaten.append(44)
schoenmaten.append(40)
schoenmaten.append(28)

print("Nummers:")
print(nummers)

print("Schoenmaten:")
print(schoenmaten)
```

Het item wordt toegevoegd aan de lijst waarop de methode wordt aangeroepen:

<sample-output>

Nummers:
[5, 10, 3]
Schoenmaten:
[37, 44, 40, 28]

</sample-output>

<programming-exercise name='Items toevoegen aan een lijst' tmcname='part04-13_add_items_to_list'>

Schrijf een programma dat vijf nieuwe waarden toevoegd aan een lijst. Het programma vraagt de waarden, één voor één, en voegt ze toe aan een lijst. Ten slotte wordt de lijst afgedrukt.

Een voorbeeld van de verwachte werking:

<sample-output>


Item 1: **10**
Item 2: **250**
Item 3: **34**
Item 4: **17**
Item 5: **94**
[10, 250, 34, 17, 94]

</sample-output>


</programming-exercise>

## Toevoegen op een specifieke locatie

Als je een locatie in de lijst wilt specificeren waar een item moet worden toegevoegd, kun je de methode `insert` gebruiken. De methode voegt een item toe op de opgegeven index. Alle items die al in de lijst staan met een index gelijk aan of hoger dan de opgegeven index, worden één index verder "naar rechts" verplaatst:

<img src="4_3_2.png" alt = "Een item invoegen in een lijst">

Dus bijvoorbeeld dit programma

```python
nummers = [1, 2, 3, 4, 5, 6]
nummers.insert(0, 10)
print(nummers)
nummers.insert(2, 20)
print(nummers)
```

geeft de volgende uitvoer:

<sample-output>

[10, 1, 2, 3, 4, 5, 6]
[10, 1, 20, 2, 3, 4, 5, 6]

</sample-output>

## Items verwijderen uit een lijst

Er zijn twee verschillende manieren om een item uit een lijst te verwijderen:

* Als de _index_ van het item bekend is, kun je de methode `pop` gebruiken.
* Als de _inhoud_ van het item bekend is, kun je de methode `remove` gebruiken.

De methode `pop` neemt de index van het item dat je wilt verwijderen als argument. Het volgende programma verwijdert items op de indexen 2 en 3 uit de lijst. Let op hoe de indexen van de overgebleven items veranderen wanneer er één wordt verwijderd.

```python
mijn_lijst = [1, 2, 3, 4, 5, 6]

mijn_lijst.pop(2)
print(mijn_lijst)
mijn_lijst.pop(3)
print(mijn_lijst)
```

<sample-output>

[1, 2, 4, 5, 6]
[1, 2, 4, 6]

</sample-output>

Het is handig om te onthouden dat de methode `pop` ook het verwijderde item _teruggeeft_:

```python
mijn_lijst = [4, 2, 7, 2, 5]

nummer = mijn_lijst.pop(2)
print(nummer)
print(mijn_lijst)
```

<sample-output>

7
[4, 2, 2, 5]

</sample-output>

De methode `remove` daarentegen neemt de waarde van het item dat moet worden verwijderd als argument. Bijvoorbeeld dit programma

```python
mijn_lijst = [1, 2, 3, 4, 5, 6]

mijn_lijst.remove(2)
print(mijn_lijst)
mijn_lijst.remove(5)
print(mijn_lijst)
```

geeft de volgende uitvoer:

<sample-output>

[1, 3, 4, 5, 6]
[1, 3, 4, 6]

</sample-output>

De methode verwijdert de _eerste_ voorkomst van de waarde in de lijst, net zoals de string-functie `find` de eerste voorkomst van een substring retourneert:

```python
mijn_lijst = [1, 2, 1, 2]

mijn_lijst.remove(1)
print(mijn_lijst)
mijn_lijst.remove(1)
print(mijn_lijst)
```

<sample-output>

[2, 1, 2]
[2, 2]

</sample-output>


## Sorteren van lijsten

De items in een lijst kunnen worden _gesorteerd_ van klein naar groot met de methode `sort`.

```python
mijn_lijst = [2,5,1,2,4]
mijn_lijst.sort()
print(mijn_lijst)
```

<sample-output>

[1, 2, 2, 4, 5]

</sample-output>

Merk op hoe de methode de lijst zelf wijzigt. Soms willen we de oorspronkelijke lijst niet veranderen, dus gebruiken we in plaats daarvan de functie `sorted`. Deze functie _retourneert_ een gesorteerde lijst:

```python
mijn_lijst = [2,5,1,2,4]
print(sorted(mijn_lijst)))
```

<sample-output>

[1, 2, 2, 4, 5]

</sample-output>

Onthoud het verschil tussen beide: `sort` verandert de volgorde van de oorspronkelijke lijst, terwijl `sorted` een nieuwe, geordende kopie van de lijst maakt. Met `sorted` kunnen we de oorspronkelijke volgorde van de lijst behouden:

```python
origineel = [2, 5, 1, 2, 4]
geordend = sorted(origineel)
print(origineel)
print(geordend)
```

<sample-output>

[2, 5, 1, 2, 4]
[1, 2, 2, 4, 5]

</sample-output>


## Maximum, minimum en som

De functies `max` en `min` retourneren respectievelijk het grootste en het kleinste item in een lijst. De functie `sum` retourneert de som van alle items in een lijst.

```python
mijn_lijst = [5, 2, 3, 1, 4]

grootste = max(mijn_lijst)
kleinste = min(mijn_lijst)
som_lijst = sum(mijn_lijst)

print("Kleinste:", kleinste)
print("Grootste:", grootste)
print("Som:", som_lijst)
```

<sample-output>

Kleinste: 1
Grootste: 5
Som: 15

</sample-output>

## Methoden versus functies

Er zijn twee verschillende manieren om lijsten te verwerken in Python, wat verwarrend kan zijn. In de meeste gevallen zul je lijst-_methoden_ gebruiken, zoals `append` en `sort`. Ze worden gebruikt met de punt `.` operator op de lijstvariabele:

```python
mijn_lijst = []

# aanroepen van methoden
mijn_lijst.append(3)
mijn_lijst.append(1)
mijn_lijst.append(7)
mijn_lijst.append(2)

# nog een methodeaanroep
mijn_lijst.sort()
```

Sommige _functies_ nemen graag een lijst als argument. Hierboven zagen we dat de functies `max`, `min`, `len` en `sorted` dat doen:

```python
mijn_lijst = [3, 2, 7, 1]

# functieaanroepen nemen de lijst als argument
grootste = max(mijn_lijst))
kleinste = min(mijn_lijst))
lengte = len(mijn_lijst))

print("Kleinste:", kleinste)
print("Grootste:", grootste)
print("Lengte van de lijst:", lengte)

# nog een functieaanroep
# de lijst zelf is een argument, de functie retourneert een gesorteerde kopie
geordend = sorted(mijn_lijst))
print(geordend)
```

<sample-output>

Kleinste: 1
Grootste: 7
Lengte van de lijst: 4
[1, 2, 3, 7]

</sample-output>


## Zoeken in een lijst



## Samenvatting

Lijsten zijn een krachtige manier om meerdere waarden op te slaan en te verwerken in Python. Ze stellen ons in staat om gegevens efficiënt te ordenen, te wijzigen en te doorzoeken. In dit deel hebben we geleerd hoe we items kunnen toevoegen aan een lijst, items kunnen verwijderen, de maximale en minimale waarde kunnen vinden, en lijsten kunnen sorteren. We hebben ook gezien hoe we lijsten kunnen verwerken met behulp van lussen en hoe we lijsten kunnen gebruiken als argumenten en retourwaarden voor functies.
