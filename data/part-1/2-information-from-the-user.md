---
path: '/part-1/2-information-from-the-user'
title: 'Informatie van de gebruiker'
hidden: false
---

<text-box variant='learningObjectives' name='Leerdoelen'>

Na deze sectie:

- Weet je hoe je een programma schrijft dat gebruikmaakt van invoer van de gebruiker.
- Weet je hoe je variabelen kunt gebruiken om invoer op te slaan en weer af te drukken.
- Kun je strings combineren.

</text-box>

_Input_ verwijst naar alle informatie die een gebruiker aan het programma geeft. Specifiek leest het Python-commando `input` een regel met invoer die door de gebruiker is getypt. Het kan ook worden gebruikt om een bericht aan de gebruiker weer te geven en specifieke invoer op te vragen.

Het volgende programma leest de naam van de gebruiker in met behulp van het `input`-commando en drukt het vervolgens af met het `print`-commando:

```python
name = input("Wat is je naam? ")
print("Hallo, " + name)
```

De uitvoering van dit programma kan er als volgt uitzien (invoer van de gebruiker in het rood):

<sample-output>

Wat is je naam? **Paul Python**
Hallo, Paul Python

</sample-output>

<sample-output>

Wat is je naam? **Paula Programmeur**
Hallo, Paula Programmeur

</sample-output>

Het woord 'name' in dit programma is een _variabele_. In de context van programmeren is een variabele een locatie om een bepaalde _waarde_ op te slaan, zoals een string of een getal. Deze waarde kan later worden gebruikt en kan ook worden gewijzigd.

<text-box variant="hint" name="Variabelen benoemen">

In principe kunnen variabelen vrij worden benoemd, binnen bepaalde limieten die zijn gespecificeerd in de Python-taal.

Het is gebruikelijk om variabelen in het Engels te benoemen. De naam van de variabele heeft geen directe invloed op de inhoud ervan, dus de naam doet er in die zin niet toe. Het kan echter vaak handig zijn om te begrijpen hoe code werkt als variabelen logisch en in het Engels worden benoemd.

</text-box>

<in-browser-programming-exercise name="Tweemaal de naam" tmcname="part01-06_name_twice">

Schrijf een programma dat de naam van de gebruiker vraagt en deze vervolgens tweemaal, op twee opeenvolgende regels, afdrukt.

Een voorbeeld van hoe het programma zou moeten werken:

<sample-output>

Wat is je naam? **Paul**
Paul
Paul

</sample-output>

</in-browser-programming-exercise>

## Verwijzen naar een variabele

Een enkele variabele kan meerdere keren in een programma worden gebruikt:

```python
name = input("Wat is je naam? ")

print("Hallo, " + name + "!")
print(name + " is een leuke naam.")
```

Als de gebruiker de naam `Paul Python` invoert, drukt dit programma het volgende af:

<sample-output>

Wat is je naam? **Paul Python**
Hallo, Paul Python!
Paul Python is een leuke naam.

</sample-output>

Laten we eens kijken naar de manier waarop het `print`-commando hierboven wordt gebruikt. Tussen de haakjes van het commando bevinden zich zowel tekst tussen aanhalingstekens als variabelen die verwijzen naar de invoer van de gebruiker. Deze zijn gecombineerd met een `+`-operator, die twee strings samenvoegt tot één string.

Strings en variabelen kunnen naar wens worden gecombineerd:

```python
name = input("Wat is je naam? ")

print("Hallo " + name + "! Laat me even controleren: je naam is " + name + "?")
```

Als de gebruiker de naam `Ellen Example` invoert, wordt het volgende afgedrukt:

<sample-output>

Wat is je naam? **Ellen Example**
Hallo Ellen Example! Laat me even controleren: je naam is Ellen Example?

</sample-output>

<in-browser-programming-exercise name="Naam en uitroeptekens" tmcname="part01-07_name_and_exclamation_marks">

Schrijf een programma dat de naam van de gebruiker vraagt en deze twee keer op één regel afdrukt, waarbij een uitroepteken aan het begin van de regel staat, een ander tussen de twee namen en een derde aan het einde van de regel.

Het programma zou als volgt moeten werken:

<sample-output>

Wat is je naam? **Paul**
!Paul!Paul!

</sample-output>

</in-browser-programming-exercise>

## Meer dan één invoer

Een programma kan om meer dan één invoer vragen. Let op hoe elk `input`-commando de ontvangen waarde opslaat in een andere variabele.

```python
name = input("Wat is je naam? ")
email = input("Wat is je e-mailadres? ")
nickname = input("Wat is je bijnaam? ")

print("Laten we zeker weten dat we het goed hebben")
print("Je naam: " + name)
print("Je e-mailadres: " + email)
print("Je bijnaam: " + nickname)
```

Het programma kan bijvoorbeeld het volgende afdrukken:

<sample-output>

Wat is je naam? **Raghad Fictitious**
Wat is je e-mailadres? **raghad99@example.com**
Wat is je bijnaam? **Raggy**
Laten we zeker weten dat we het goed hebben
Je naam: Raghad Fictitious
Je e-mailadres: raghad99@example.com
Je bijnaam: Raggy

</sample-output>

Als dezelfde variabele wordt gebruikt om meerdere invoeren op te slaan, wordt elke nieuwe waarde de vorige waarde vervangen. Bijvoorbeeld:

```python
adres = input("Wat is je adres? ")
print("Dus je woont op adres " + adres)

adres = input("Typ alstublieft een nieuw adres in: ")
print("Je adres is nu " + adres)
```

Een voorbeelduitvoering van het programma:

<sample-output>

Wat is je adres? **Pythonpad 101, Flat 3D**
Dus je woont op adres Pythonpad 101, Flat 3D
Typ alstublieft een nieuw adres in: **Nieuwe Weg 999**
Je adres is nu Nieuwe Weg 999

</sample-output>

Dit betekent dat als dezelfde variabele wordt gebruikt om twee opeenvolgende invoeren op te slaan, er geen manier is om de eerste invoerwaarde te benaderen nadat deze is vervangen door de tweede:

```python
adres = input("Wat is je adres? ")
adres = input("Typ alstublieft een nieuw adres in: ")

print("Je adres is nu " + adres)
```

Een voorbeeld van hoe de uitvoer van het programma eruit zou kunnen zien:

<sample-output>

Wat is je adres? **Pythonpad 10**
Typ alstublieft een nieuw adres in: **Programmeurslaan 23**
Je adres is nu Programmeurslaan 23

</sample-output>

<in-browser-programming-exercise name="Naam en adres" tmcname="part01-08_name_and_address">

Schrijf een programma dat de naam en het adres van de gebruiker vraagt. Het programma moet ook de gegeven informatie afdrukken, als volgt:

<sample-output>

Voornaam: **Aisha**
Achternaam: **Aydın**
Straatadres: **Hommelstraat 7b**
Stad en postcode: **Rotterdam 3061VA**
Aisha Aydın
Hommelstraat 7b
Londen EC05 6AW

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Corrigeer de code: Uitspraken" tmcname="part01-09_utterances">

Hier is een programma dat om drie uitspraken moet vragen en deze moet afdrukken, zoals hieronder:

<sample-output>

Het 1e deel: **hickory**
Het 2e deel: **dickory**
Het 3e deel: **dock**
hickory-dickory-dock!

</sample-output>

Er is echter iets mis met de onderstaande code. Corrigeer het alstublieft.

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Verhaal" tmcname="part01-10_story">

Schrijf een programma dat het volgende verhaal afdrukt. De gebruiker geeft een naam en een jaar, die in de tekst moeten worden ingevoegd.

<sample-output>

Typ een naam in: **Mary**
Typ een jaar in: **1572**

Mary is valiant knight, born in the year 1572. One morning Mary woke up to an awful racket: a dragon was approaching the village. Only Mary could save the village's residents.

</sample-output>


Het verhaal moet veranderen op basis van de invoer die door de gebruiker wordt gegeven.

</in-browser-programming-exercise>

<!--

A quiz to review the contents of this section:

<quiz id="10cb3510-d8a6-5e9b-b372-c85c4c7eb957"></quiz>

-->
