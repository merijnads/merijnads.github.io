---
path: '/part-2/3-else-elif'
title: 'Meer keuzestructuren (else-elif)'
hidden: false
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie:

- Weet je hoe je meerdere takken kunt maken binnen conditionele instructies.
- Begrijp je het doel van `if`, `elif` en `else` instructies binnen een conditionele instructie.
- Kun je de modulo-operatie `%` gebruiken in booleaanse expressies.

</text-box>

Laten we eens kijken naar een programma dat de gebruiker vraagt om een getal in te voeren en vervolgens verschillende berichten afdrukt op basis van of het getal negatief, positief of gelijk aan nul is:

```python
number = int(input("Typ alstublieft een getal in: "))

if number < 0:
    print("Het getal is negatief")

if number >= 0:
    print("Het getal is positief of nul")
```

Dit ziet er een beetje onhandig en repetitief uit. We willen altijd maar één van de `if`-blokken uitvoeren, omdat de invoer altijd negatief zal zijn, of nul of groter. Dat wil zeggen, ofwel `number < 0` of `number >= 0` is waar, maar nooit beide tegelijk. Dus de eerste conditionele instructie bevat eigenlijk alles wat we hier nodig hebben. Als het waar is, is het getal negatief. Als het onwaar is, is het getal gelijk aan nul of positief.

In plaats van een hele nieuwe conditionele instructie te maken, zoals in het bovenstaande voorbeeld, is het mogelijk om een andere tak van dezelfde conditionele instructie te maken om alle gevallen _waar de voorwaarde onwaar was_ te behandelen. Dit wordt de `else`-instructie genoemd.

Het vorige voorbeeld herschreven:

```python
number = int(input("Typ alstublieft een getal in: "))

if number < 0:
    print("Het getal is negatief")
else:
    print("Het getal is positief of nul")
```

Bij het gebruik van een if-else constructie zal één en precies één van de takken altijd worden uitgevoerd. De volgende afbeelding illustreert de structuur:

<img src="2_2_1.png">

NB: er kan nooit een else-tak zijn zonder een if-tak ervoor. De if-else-constructie als geheel vormt een enkele _conditionele instructie_.

Het volgende voorbeeld controleert of een getal dat door de gebruiker wordt gegeven even is of niet. De pariteit kan worden gecontroleerd met de modulo-operator `%`, die het restant van een gehele deling geeft. Als het bij deling door twee een restant van nul oplevert, is het getal even. Anders is het getal oneven.

```python
number = int(input("Typ alstublieft een getal in: "))

if number % 2 == 0:
    print("Het getal is even")
else:
    print("Het getal is oneven")
```

<sample-output>

Typ alstublieft een getal in: **5**
Het getal is oneven

</sample-output>

Een ander voorbeeld met een stringvergelijking:

```python
correct = "katje"
password = input("Typ alstublieft het wachtwoord in: ")

if password == correct:
    print("Welkom")
else:
    print("Geen toegang")
```

Met twee verschillende invoeringen zou dit het volgende moeten afdrukken:

<sample-output>

Typ alstublieft het wachtwoord in: **katje**
Welkom

</sample-output>

<sample-output>

Typ alstublieft het wachtwoord in: **aap**
Geen toegang

</sample-output>


<in-browser-programming-exercise name="Meerderjarigheid" tmcname="part02-04_age_of_maturity" height="400px">

Schrijf alsjeblieft een programma dat de gebruiker vraagt naar zijn leeftijd. Het programma moet vervolgens een bericht afdrukken op basis van of de gebruiker meerderjarig is of niet, waarbij 18 als de leeftijd van meerderjarigheid wordt gebruikt.

Enkele voorbeelden van verwachte uitvoer:

<sample-output>

How old are you? **12**
You are not of age!

</sample-output>


<sample-output>

How old are you? **32**
You are of age!

</sample-output>

</in-browser-programming-exercise>

## Alternatieve takken met behulp van de elif-instructie

Vaak zijn er meer dan twee opties waar het programma rekening mee moet houden. Bijvoorbeeld, de uitslag van een voetbalwedstrijd kan drie kanten op gaan: de thuisploeg wint, de uitspelende ploeg wint, of er is een gelijkspel.

Een conditionele instructie kan worden uitgebreid met een `elif`-tak. Dit is een verkorte vorm van de woorden "anders als", wat betekent dat de tak een alternatief bevat voor de oorspronkelijke voorwaarde. Belangrijk is dat een `elif`-instructie alleen wordt uitgevoerd als geen van de voorgaande takken is uitgevoerd.

<img src="2_2_2.png">

Laten we eens kijken naar een programma dat de winnaar van een wedstrijd bepaalt:

```python
doelpunten_thuis = int(input("Aantal doelpunten thuisploeg: "))
doelpunten_uit = int(input("Aantal doelpunten uitspelende ploeg: "))

if doelpunten_thuis > doelpunten_uit:
    print("De thuisploeg heeft gewonnen!")
elif doelpunten_uit > doelpunten_thuis:
    print("De uitspelende ploeg heeft gewonnen!")
else:
    print("Het is een gelijkspel!")
```

Dit programma kan drie verschillende verklaringen afdrukken op basis van verschillende invoeringen:

<sample-output>

Aantal doelpunten thuisploeg: **4**
Aantal doelpunten uitspelende ploeg: **2**
De thuisploeg heeft gewonnen!

</sample-output>

<sample-output>

Aantal doelpunten thuisploeg: **0**
Aantal doelpunten uitspelende ploeg: **6**
De uitspelende ploeg heeft gewonnen!

</sample-output>

<sample-output>

Aantal doelpunten thuisploeg: **3**
Aantal doelpun

ten uitspelende ploeg: **3**
Het is een gelijkspel!

</sample-output>

In het bovenstaande voorbeeld zijn er drie alternatieve takken, waarvan er precies één altijd zal worden uitgevoerd. Er is echter geen limiet aan het aantal `elif`-takken dat een conditionele instructie kan bevatten, en de `else`-tak is niet verplicht.

Dit is ook een geldige conditionele instructie:

```python
print("Vakantiekalender")
datum = input("Wat is de datum vandaag? ")

if datum == "26 dec":
    print("Het is Tweede Kerstdag")
elif datum == "31 dec":
    print("Het is Oudejaarsavond")
elif datum == "1 jan":
    print("Het is Nieuwjaarsdag")

print("Bedankt en tot ziens.")
```

<sample-output>

Vakantiekalender
Wat is de datum vandaag? **31 dec**
Het is Oudejaarsavond
Bedankt en tot ziens.

</sample-output>

Let op dat het vorige voorbeeld geen `else`-tak heeft. Als de gebruiker een datum invoert die niet wordt genoemd in een van de `if`- of `elif`-takken, of een datum invoert in een andere indeling, wordt geen van de drie takken van de conditionele instructie uitgevoerd.

<sample-output>

Vakantiekalender
Wat is de datum vandaag? **25 dec**
Bedankt en tot ziens.

</sample-output>

<in-browser-programming-exercise name="Groter dan of gelijk aan" tmcname="part02-05_greater_or_equal"  height="400px">

Schrijf alsjeblieft een programma dat vraagt om twee gehele getallen. Het programma moet vervolgens het grootste van de twee afdrukken. Als de getallen gelijk zijn, moet het programma een ander bericht afdrukken.

Enkele voorbeelden van verwachte uitvoer:

<sample-output>

Please type in the first number: **5**
Please type in another number: **3**
The greater number was: 5

</sample-output>

<sample-output>

Please type in the first number:: **5**
Please type in another number: **8**
The greater number was: 8

</sample-output>

<sample-output>

Please type in the first number: **5**
Please type in another number: **5**
The numbers are equal!

</sample-output>


</in-browser-programming-exercise>


<in-browser-programming-exercise name="De oudste" tmcname="part02-06_elder" height="550px">

Schrijf alsjeblieft een programma dat vraagt naar de namen en leeftijden van twee personen. Het programma moet vervolgens de naam van de oudste persoon afdrukken.

Enkele voorbeelden van verwachte uitvoer:

<sample-output>

Person 1:
Name: **Alan**
Age: **26**
Person 2:
Name: **Ada**
Age: **27**
The elder is Ada

</sample-output>

<sample-output>

Person 1:
Name: **Bill**
Age: **1**
Person 2:
Name: **Jean**
Age: **1**
Bill and Jean are the same age

</sample-output>


</in-browser-programming-exercise>

<in-browser-programming-exercise name="Alfabetisch laatste" tmcname="part02-07_alphabetically_last"  height="500px">

Vergelijkingsoperatoren in Python kunnen ook worden gebruikt op strings. String `a` is kleiner dan string `b` als deze alfabetisch voor `b` komt. Let echter op dat de vergelijking alleen betrouwbaar is als
- de vergeleken tekens van dezelfde case zijn, dus beide HOOFDLETTERS of beide kleine letters
- alleen het standaard Engelse alfabet van a tot z, of A tot Z, wordt gebruikt.

Schrijf alsjeblieft een programma dat de gebruiker vraagt om twee woorden. Het programma moet vervolgens het woord dat alfabetisch als laatste komt afdrukken.

Je kunt ervan uitgaan dat alle woorden volledig in kleine letters worden ingevoerd.

Enkele voorbeelden van verwachte uitvoer:

<sample-output>

Please type in the 1st word: **car**
Please type in the 2nd word: **scooter**
scooter comes alphabetically last.

</sample-output>

<sample-output>

Please type in the 1st word: **zorro**
Please type in the 2nd word: **batman**
zorro comes alphabetically last.

</sample-output>

<sample-output>

Please type in the 1st word: **python**
Please type in the 2nd word: **python**
You gave the same word twice.

</sample-output>

</in-browser-programming-exercise>

<!--

Een quiz om de inhoud van deze sectie te herhalen:

<quiz id="82f644fe-5d89-5153-842a-11d5d11bc059"></quiz>

-->
