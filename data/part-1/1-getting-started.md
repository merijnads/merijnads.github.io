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

## A program of multiple commands

Multiple commands written in succession will be executed in order from first to last.
For example this program

```python
print("Welcome to Introduction to Programming!")
print("First we will practice using the print command.")
print("This program prints three lines of text on the screen.")
```
prints the following lines on the screen:

<sample-output>

Welcome to Introduction to Programming!
First we will practice using the print command.
This program prints three lines of text on the screen.

</sample-output>

<in-browser-programming-exercise name="Fix the code: Seven Brothers" tmcname="part01-02_seven_brothers">

"Seitsemän veljestä" is one of the first novels ever written in Finnish. It is the story of seven orphaned brothers learning to make their way in the world ([read more on Wikipedia](https://en.wikipedia.org/wiki/Seitsem%C3%A4n_veljest%C3%A4)).

This program is supposed to print out the names of the brothers in alphabetical order, but it's not working quite right yet. Please fix the program so that the names are printed in the correct order.


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

Please write a program which prints out the following lines exactly as they are written here, punctuation and all:

<sample-output>

Row, row, row your boat,
Gently down the stream.
Merrily, merrily, merrily, merrily,
Life is but a dream.

</sample-output>

</in-browser-programming-exercise>


## Arithmetic operations

You can also put arithmetic operations inside a `print` command. Running it will then print out the result of the operation. For example, the following program

```python
print(2 + 5)
print(3 * 3)
print(2 + 2 * 10)
```
prints out these lines:

<sample-output>

7
9
22

</sample-output>

Notice the lack of quotation marks around the arithmetic operations above. Quotation marks are used to signify _strings_. In the context of programming, strings are sequences of characters. They can consist of letters, numbers and any other types of characters, such as punctuation. Strings aren't just words as we commonly understand them, but instead a single string can be as long as multiple complete sentences.
Strings are usually printed out exactly as they are written. Thus, the following two commands produce two quite different results:

```python
print(2 + 2 * 10)
print("2 + 2 * 10")
```

This program prints out:

<sample-output>

22
2 + 2 * 10

</sample-output>

With the second line of code, Python does not calculate the result of the operation, but instead prints out the operation itself, as a string.
So, strings are printed out just as they are written, without any reference to their contents.

## Commenting

Any line beginning with the pound sign `#`, also known as a hash or a number sign, is a comment. This means that any text on that line following the `#` symbol will not in any way affect how the program functions. Python will simply ignore it.

Comments are used for explaining how a program works, to both the programmer themselves, and others reading the program code. In this program a comment explains the calculation performed in the code:

```python
print("Hours in a year:")
# there are 365 days in a year and 24 hours in each day
print(365*24)
```

When the program is run, the comment will not be visible to the user:

<sample-output>

Hours in a year:
8760

</sample-output>

Short comments can also be added to the end of a line:

```python
print("Hours in a year:")
print(365*24) # 365 days, 24 hours in each day
```

<in-browser-programming-exercise name="Minutes in a year" tmcname="part01-04_minutes_in_a_year">

Please write a program which prints out the number of minutes in a year. Use Python code to perform the calculation, as in the previous code example.

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Print some code" tmcname="part01-05_print_code">

Thus far, you have probably used double quotation marks `"` to print out strings. In addition to the double quotation marks, Python also accepts single quotation marks `'`.

This comes in handy if you ever want to print out the actual quotation marks themselves:

```python

print('"Come right back!", shouted the police officer.')

```

<sample-output>

"Come right back!", shouted the police officer.

</sample-output>

Please write a program which prints out the following:

<sample-output>

print("Hello there!")

</sample-output>



</in-browser-programming-exercise>


<!--

A quiz to review the contents of this section:

<quiz id="f1d6d205-dfd6-5c6f-b148-b332dfd64289"></quiz>

-->
