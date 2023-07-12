---
path: '/part-2/4-combining-conditions'
title: 'And, or en not'
hidden: false
---

<text-box variant='learningObjectives' name="Leerdoelen">

Na deze sectie:

- Weet je hoe je de operatoren `and`, `or` en `not` kunt gebruiken in voorwaarden.
- Kun je geneste voorwaardelijke statements schrijven.

</text-box>

## Logische operatoren

Je kunt voorwaarden combineren met de logische operatoren `and` en `or`. De operator `and` geeft aan dat alle opgegeven voorwaarden tegelijkertijd waar moeten zijn. De operator `or` geeft aan dat ten minste één van de opgegeven voorwaarden waar moet zijn.

Bijvoorbeeld, de voorwaarde `number >= 5 and number <= 8` bepaalt dat `number` tegelijkertijd minimaal 5 en maximaal 8 moet zijn. Dat wil zeggen, het moet tussen 5 en 8 liggen.

```python
number = int(input("Typ alsjeblieft een getal in: "))
if number >= 5 and number <= 8:
    print("Het getal ligt tussen 5 en 8")
```

Ondertussen bepaalt de voorwaarde `number < 5 or number > 8` dat `number` ofwel kleiner dan 5 ofwel groter dan 8 moet zijn. Dat wil zeggen, het mag niet binnen het bereik van 5 tot 8 vallen.

```python
number = int(input("Typ alsjeblieft een getal in: "))
if number < 5 or number > 8:
    print("Het getal valt niet binnen het bereik van 5 tot 8")
```

De volgende waarheidstabel bevat het gedrag van deze operatoren in verschillende situaties:

a     | b     | a and b | a or b |
:----:|:-----:|:-------:|:------:|
False | False | False   | False  |
True  | False | False   | True   |
False | True  | False   | True   |
True  | True  | True    | True   |

Soms is het nodig om te weten of iets _niet_ waar is. De operator `not` keert een voorwaarde om:

a     | not a
:----:|:----:
True  | False
False | True

Het bovenstaande voorbeeld met het bereik van 5 tot 8 _uitgesloten_ kan ook als volgt worden geprogrammeerd:

```python
number = int(input("Typ alsjeblieft een getal in: "))
if not (number >= 5 and number <= 8):
    print("Het getal valt niet binnen het bereik van 5 tot 8")
```

Met name in programmeren worden logische operatoren vaak _Boolean-operatoren_ genoemd.

<text-box variant='hint' name="Vereenvoudigde gecombineerde voorwaarden">

De voorwaarde `x >= a and x <= b` is een zeer gebruikelijke manier om te controleren of het getal `x` binnen het bereik van `a` tot `b` valt. Een expressie met deze structuur werkt op dezelfde manier in de meeste programmeertalen.

Python staat ook een vereenvoudigde notatie toe voor het combineren van voorwaarden: `a <= x <= b` bereikt hetzelfde resultaat als de langere versie met behulp van `and`. Deze kortere notatie is misschien bekender uit de wiskunde, maar wordt niet veel gebruikt in Python-programmering, mogelijk omdat maar weinig andere programmeertalen een vergelijkbare verkorte notatie hebben.

</text-box>

## Voorwaarden combineren en verbinden

Het volgende programma vraagt de gebruiker om vier getallen in te voeren. Vervolgens bepaalt het programma welk van de vier getallen het grootst is, met behulp van enkele voorwaarden:

```python
n1 = int(input("Getal 1: "))
n2 = int(input("Getal 2: "))
n3 = int(input("Getal 3: "))
n4 = int(input("Getal 4: "))

if n1 > n2 and n1 > n3 and n1 > n4:
    grootste = n1
elif n2 > n3 and n2 > n4:
    grootste = n2
elif n3 > n4:
    grootste = n3
else:
    grootste = n4

print(f" {grootste} is het grootste van de getallen.")
```

<sample-output>

Getal 1: **2**
Getal 2: **4**
Getal 3: **1**
Getal 4: **1**
4 is het grootste van de getallen.

</sample-output>

In het bovenstaande voorbeeld is de eerste voorwaarde `n1 > n2 and n1 > n3 and n1 > n4` waar alleen als alle drie de voorwaarden erin waar zijn.

<in-browser-programming-exercise name="Leeftijdscontrole" tmcname="part02-08_age_check">

Schrijf alsjeblieft een programma dat de leeftijd van de gebruiker vraagt. Als de leeftijd niet plausibel is, dat wil zeggen, als deze onder de 5 ligt of iets is dat geen werkelijke leeftijd kan zijn, moet het programma een opmerking afdrukken.

Bekijk de voorbeelden van verwacht gedrag hieronder om te bepalen welke opmerking in elk geval van toepassing is.

<sample-output>

What is your age? **13**
Ok, you're 13 years old

</sample-output>

<sample-output>

What is your age? **2**
I suspect you can't write quite yet...

</sample-output>

<sample-output>

What is your age? **-4**
That must be a mistake

</sample-output>


</in-browser-programming-exercise>

<in-browser-programming-exercise name="Neefjes" tmcname="part02-09_nephews">

Schrijf alsjeblieft een programma dat de naam van de gebruiker vraagt. Als de naam Huey, Dewey of Louie is, moet het programma de gebruiker herkennen als een van de neefjes van Donald Duck.

Op een vergelijkbare manier, als de naam Morty of Ferdie is, moet het programma de gebruiker herkennen als een van de neefjes van Mickey Mouse.

Enkele voorbeelden:

<sample-output>

Please type in your name: **Morty**
I think you might be one of Mickey Mouse's nephews.

</sample-output>

<sample-output>

Please type in your name: **Huey**
I think you might be one of Donald Duck's nephews.

</sample-output>

<sample-output>

Please type in your name: **Ken**
You're not a nephew of any character I know of.

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Cijfers en punten" tmcname="part02-10_grades_and_points">

De onderstaande tabel geeft de cijfergrenzen weer voor een bepaalde universitaire cursus. Schrijf alsjeblieft een programma dat de ontvangen punten vraagt en vervolgens het behaalde cijfer volgens de tabel afdrukt.

points   | grade
:--:|:----:
< 0 |  impossible!
0-49 | fail
50-59 | 1
60-69 | 2
70-79 | 3
80-89| 4
90-100 | 5
\> 100 |  impossible!

Some examples:

<sample-output>

How many points [0-100]: **37**
Grade: fail

</sample-output>

<sample-output>

How many points [0-100]: **76**
Grade: 3

</sample-output>

<sample-output>

How many points [0-100]: **-3**
Grade: impossible!

</sample-output>



</in-browser-programming-exercise>

<in-browser-programming-exercise name="FizzBuzz" tmcname="part02-11_fizzbuzz">

Schrijf alsjeblieft een programma dat de gebruiker om een geheel getal vraagt. Als het getal deelbaar is door drie, moet het programma Fizz afdrukken. Als het getal deelbaar is door vijf, moet het programma Buzz afdrukken. Als het getal zowel deelbaar is door drie als door vijf, moet het programma FizzBuzz afdrukken.

Enkele voorbeelden van verwacht gedrag:

<sample-output>

Number: **9**
Fizz

</sample-output>

<sample-output>

Number: **7**

</sample-output>

<sample-output>

Number: **20**
Buzz

</sample-output>

<sample-output>

Number: **45**
FizzBuzz

</sample-output>

</in-browser-programming-exercise>

## Geneste voorwaardelijke statements

Voorwaardelijke statements kunnen ook genest zijn in andere voorwaardelijke statements. Bijvoorbeeld, het volgende programma controleert of een getal groter is dan nul, en vervolgens of het even of oneven is:

```python
number = int(input("Typ alsjeblieft een getal in: "))

if number > 0:
    if number % 2 == 0:
        print("Het getal is even")
    else:
        print("Het getal is oneven")
else:
    print("Het getal is negatief of nul")
```

Enkele voorbeelden van hoe dit programma zich gedraagt:

<sample-output>

Typ alsjeblieft een getal in: **3**
Het getal is oneven

Typ alsjeblieft een getal in: **18**
Het getal is even

Typ alsjeblieft een getal in: **-4**
Het getal is negatief of nul

</sample-output>

Bij geneste voorwaardelijke statements is het belangrijk om de inspringingen correct te krijgen. Inspringingen bepalen welke takken aan elkaar gekoppeld zijn. Bijvoorbeeld, een `if`-tak en een `else`-tak met dezelfde hoeveelheid witruimte worden beschouwd als takken van hetzelfde voorwaardelijke statement.

Hetzelfde resultaat kan vaak worden bereikt met geneste voorwaardelijke statements of voorwaarden gecombineerd met logische operatoren. Het onderstaande voorbeeld is functioneel niet anders dan het bovenstaande voorbeeld, in die zin dat het precies dezelfde dingen afdrukt met dezelfde invoer:

```python
number = int(input("Typ alsjeblieft een getal in: "))

if number > 0 and number % 2 == 0:
    print("Het getal is even")
elif number > 0 and number % 2 != 0:
    print("Het getal is oneven")
else:
    print("Het getal is negatief of nul")
```

Geen van beide benaderingen is intrinsiek beter dan de andere, maar in verschillende situaties kan de ene of de andere logischer lijken. In dit specifieke voorbeeld vinden de meeste mensen de eerste versie met geneste voorwaarden intuïtiever.
<in-browser-programming-exercise name="Leap year" tmcname="part02-12_leap_year">

Generally, any year that is divisible by four is a leap year. However, if the year is additionally divisible by 100, it is a leap year only if it also divisible by 400.

Please write a program which asks the user for a year, and then prints out whether that year is a leap year or not.

Some examples:

<sample-output>

Please type in a year: **2011**
That year is not a leap year.

</sample-output>

<sample-output>

Please type in a year: **2020**
That year is a leap year.

</sample-output>

<sample-output>

Please type in a year: **1800**
That year is not a leap year.

</sample-output>

</in-browser-programming-exercise>

<in-browser-programming-exercise name="Alphabetically in the middle" tmcname="part02-13_alphabetically_in_the_middle">

Please write a program which asks the user for three letters. The program should then print out whichever of the three letters would be in the middle if the letters were in alphabetical order.

You may assume the letters will be either all uppercase, or all lowercase.

Some examples of expected behaviour:

<sample-output>

1st letter: x
2nd letter: c
3rd letter: p
The letter in the middle is p

</sample-output>

<sample-output>

1st letter: C
2nd letter: B
3rd letter: A
The letter in the middle is B

</sample-output>

</in-browser-programming-exercise>


<in-browser-programming-exercise name="Gift tax calculator" tmcname="part02-14_gift_tax_calculator"  height="500px">

Some say paying taxes makes Finns happy, so let's see if the secret of happiness lies in one of the taxes set out in Finnish tax code.

[According to the Finnish Tax Administration](https://www.vero.fi/en/individuals/property/gifts/), a gift is a transfer of property to another person against no compensation or payment. If the total value of the gifts you receive from the same donor in the course of 3 years is €5,000 or more, you must pay gift tax.

When the gift is received from a close relative or a family member, the amount of tax to be paid is determined by the following table, which is also available on [this website](https://www.vero.fi/en/individuals/property/gifts/gift-tax-calculator/):

Value of gift | Tax at the lower limit | Tax rate for the exceeding part (%)
:------------:|:----------------------:|:-----------------------------------:
5 000 — 25 000 |        100     |       8
25 000 — 55 000	|       1 700   |	10
55 000 — 200 000 |      4 700	|       12
200 000 — 1 000 000 |   22 100  |	15
1 000 000 —	|       142 100 |	17

So, for a gift of 6 000 euros the recipient pays a tax of 180 euros (100 + (6 000 - 5 000) * 0.08). Similarly, for a gift of 75 000 euros the recipient pays a tax of 7 100 euros (4 700 + (75 000 - 55 000) * 0.12).

Please write a program which calculates the correct amount of tax for a gift from a close relative. Have a look at the examples below to see what is expected. Notice the lack of thousands separators in the input values - you may assume there will be no spaces or other thousands separators in the numbers in the input, as we haven't yet covered dealing with these.

<sample-output>

Value of gift: **3500**
No tax!

</sample-output>

<sample-output>

Value of gift: **5000**
Amount of tax: 100.0 euros

</sample-output>

<sample-output>

Value of gift: **27500**
Amount of tax: 1950.0 euros

</sample-output>

</in-browser-programming-exercise>
