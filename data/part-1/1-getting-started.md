---
path: '/part-1/1-getting-started'
title: 'Hallo Python'
hidden: false
---

<text-box variant='learningObjectives' name='Leerdoelen'>

Na dit gedeelte:

- Je zult je eerste Python-programma hebben geschreven en uitgevoerd.
- Je weet hoe je het print-commando moet gebruiken.
- Je kunt rekenkundige bewerkingen programmeren.

</text-box>

Computerprogramma's bestaan uit _opdrachten_, waarbij elke opdracht de computer instrueert om een bepaalde actie te ondernemen. Een computer voert deze opdrachten één voor één uit. Onder andere kunnen opdrachten worden gebruikt om berekeningen uit te voeren, dingen in het geheugen van de computer te vergelijken, wijzigingen aan te brengen in de werking van het programma, berichten door te geven of informatie op te vragen van de gebruiker van het programma.

Laten we beginnen met programmeren door vertrouwd te raken met het `print`-commando, waarmee tekst wordt afgedrukt. In deze context betekent afdrukken in feite dat het programma wat tekst op het scherm laat zien.


Het volgende programma zal de zin "Hallo daar!" afdrukken:

```python
print("Hallo daar!")
```

Wanneer het programma wordt uitgevoerd, produceert het dit:

<sample-output>

Hallo daar!

</sample-output>

Het programma werkt niet tenzij de code precies wordt geschreven zoals hierboven. Bijvoorbeeld, proberen om het print-commando zonder aanhalingstekens uit te voeren, zoals dit:

```python
print(Hallo daar!)
```

zal de boodschap niet afdrukken, maar in plaats daarvan een fout veroorzaken:

<sample-output>

<pre>
File "<stdin>", line 1
  print(Hallo daar!)
                   ^
SyntaxError: invalid syntax
</pre>

</sample-output>

Samengevat, als je tekst wilt afdrukken, moet alle tekst tussen aanhalingstekens staan, anders zal Python het niet correct interpreteren.

<in-browser-programming-exercise name="Emoticon" tmcname="part01-01_emoticon" height="300px">

Schrijf een programma dat een emoticon afdrukt: :-)

</in-browser-programming-exercise>

## Een programma met meerdere opdrachten

Meerdere opdrachten die na elkaar worden geschreven, worden van eerste tot laatste uitgevoerd.
Bijvoorbeeld dit programma

```python
print("Welkom bij Programmeren 1!")
print("Eerst zullen we oefenen met het print-commando.")
print("Dit programma drukt drie regels tekst af op het scherm.")
```
drukt de volgende regels af op het scherm:

<sample-output>

Welkom bij Programmeren 1!
Eerst zullen we oefenen met het print-commando.
Dit programma drukt drie regels tekst af op het scherm.

</sample-output>

<in-browser-programming-exercise name="Fix the code: Seven Brothers" tmcname="part01-02_seven_brothers">


Dit programma moet de namen van de broers in alfabetische volgorde afdrukken, maar het werkt nog niet helemaal goed. Herstel het programma zodat de namen in de juiste volgorde worden afgedrukt.


```python
print("Simeoni")
print("Juhani")
print("Eero")
print("Lauri")
print("Aapo")
print("Tuomas")
print("Timo")
```

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Row, Row, Row Your Boat" tmcname="part01-03_row_your_boat">

Schrijf een programma dat de volgende regels exact afdrukt zoals ze hier geschreven zijn, inclusief leestekens:

<sample-output>

Row, row, row your boat,
Gently down the stream.
Merrily, merrily, merrily, merrily,
Life is but a dream.

</sample-output>

</in-browser-programming-exercise>


## Rekenkundige bewerkingen

Je kunt ook rekenkundige bewerkingen binnen een `print`-commando plaatsen. Wanneer het wordt uitgevoerd, wordt dan het resultaat van de bewerking afgedrukt. Bijvoorbeeld, het volgende programma

```python
print(2 + 5)
print(3 * 3)
print(2 + 2 * 10)
```
drukt deze regels af:

<sample-output>

7
9
22

</sample-output>

Let op het ontbreken van aanhalingstekens rond de rekenkundige bewerkingen hierboven. Aanhalingstekens worden gebruikt om _strings_ aan te geven. In de context van programmeren zijn _strings_ sequenties van tekens. Ze kunnen bestaan uit letters, cijfers en andere soorten tekens, zoals leestekens. Strings zijn niet alleen maar woorden zoals we ze doorgaans begrijpen, maar een enkele string kan net zo lang zijn als meerdere volledige zinnen.
Strings worden meestal afgedrukt precies zoals ze zijn geschreven. Daarom produceren de volgende twee opdrachten twee heel verschillende resultaten:

```python
print(2 + 2 * 10)
print("2 + 2 * 10")
```

Dit programma drukt af:

<sample-output>

22
2 + 2 * 10

</sample-output>

Met de tweede regel code berekent Python niet het resultaat van de bewerking, maar drukt in plaats daarvan de bewerking zelf af als een string.
Dus, strings worden afgedrukt precies zoals ze zijn geschreven, zonder enige verwijzing naar hun inhoud.

## Commenting

Elke regel die begint met het hekje `#`, ook wel bekend als een hekje of nummerteken, is een commentaar. Dit betekent dat de tekst op die regel na het symbool `#` op geen enkele manier invloed heeft op de werking van het programma. Python zal het eenvoudigweg negeren.

Commentaar wordt gebruikt om uit te leggen hoe een programma werkt, zowel aan de programmeur zelf als aan anderen die de programmacode lezen. In dit programma wordt een commentaar gebruikt om de berekening uit te leggen die in de code wordt uitgevoerd:

```python
print("Aantal uren in een jaar:")
# er zijn 365 dagen in een jaar en 24 uur in elke dag
print(365*24)
```

Wanneer het programma wordt uitgevoerd, is het commentaar niet zichtbaar voor de gebruiker:

<sample-output>

Aantal uren in een jaar:
8760

</sample-output>

Korte opmerkingen kunnen ook aan het einde van een regel worden toegevoegd:

```python
print("Aantal uren in een jaar:")
print(365*24) # 365 dagen, 24 uur per dag
```

<in-browser-programming-exercise name="Minutes in a year" tmcname="part01-04_minutes_in_a_year">

Schrijf een programma dat het aantal minuten in een jaar afdrukt. Gebruik Python-code om de berekening uit te voeren, zoals in het vorige voorbeeld.

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Print some code" tmcname="part01-05_print_code">

Tot nu toe heb je waarschijnlijk dubbele aanhalingstekens `"` gebruikt om strings af te drukken. Naast de dubbele aanhalingstekens accepteert Python ook enkele aanhalingstekens `'`.

Dit is handig als je de daadwerkelijke aanhalingstekens zelf wilt afdrukken:

```python

print('"Kom direct terug!", riep de politieagent.')

```

<sample-output>

"Kom direct terug!", riep de politieagent.

</sample-output>

Schrijf een programma dat het volgende afdrukt:

<sample-output>

print("Hello there!")

</sample-output>



</in-browser-programming-exercise>


<!--

A quiz to review the contents of this section:

<quiz id="f1d6d205-dfd6-5c6f-b148-b332dfd64289"></quiz>

-->
