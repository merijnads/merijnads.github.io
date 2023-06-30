---
path: "/error_messages"
title: "Veelvoorkomende foutmeldingen"
hidden: false
information_page: true
sidebar_priority: 2000
separator_after: "Programmeren 1"
---

Deze pagina bevat informatie over de meest voorkomende foutmeldingen die je kunt tegenkomen bij het maken van de programmeeroefeningen in deze cursus.

### Mijn afdruk ziet er identiek uit als het voorbeeld in de instructies, maar mijn inzending faalt nog steeds

Zorg ervoor dat je programma geen extra spaties afdrukt, zoals spatie karakters. Merk op dat het standaardgedrag van de `print` functie is om een spatie toe te voegen tussen eventuele strings die met een komma zijn gescheiden.

```python
    print("Hallo","Wereld!")    # Dit print uit: Hallo Wereld!
```

### SyntaxError: bad input on line [line number]

Deze foutmelding verschijnt meestal wanneer er een tikfout in je code zit die de Python-interpreter moeilijk specifieker kan classificeren. Bijvoorbeeld, er kan een dubbele punt karakter ontbreken aan het einde van een `if` statement, of een keyword, zoals `while`, kan verkeerd gespeld zijn. De enige manier om dit probleem op te lossen is door de regel aangegeven in de foutmelding te inspecteren.

```python
    getal1 = 1
    getal2 = 2
    if getal1 < getal2    # ':' ontbreekt
        print('getal2 is groter')
```

Als de regel aangegeven in de foutmelding correct lijkt, kan de fout vaak één regel boven of onder de aangegeven regel zijn, dus controleer ook rond het probleem.

**NB: De programmeeroefeningen in de vroege delen van deze cursus gebruiken een framework genaamd Skulpt om Python-code in de browser uit te voeren.** Skulpt is vrij beperkt in vergelijking met een normale Python-interpreter, en daardoor zijn de foutmeldingen die worden afgedrukt vaak minder informatief. Bijvoorbeeld, de `slechte invoer op regel` foutmelding kan verwijzen naar veel verschillende programmeerfouten, en het is moeilijk om de ware oorzaak van de fout alleen op basis van deze boodschap te achterhalen.

### SyntaxError: unindent does not match any outer indentation level on line [line number]

Je code is op de aangegeven regel in de foutmelding onjuist ingesprongen. Bijvoorbeeld, alle regels binnen een `if` blok moeten op dezelfde manier ingesprongen zijn. Om deze fout te herstellen, moeten alle regels binnen een blok van de code met exact dezelfde hoeveelheid witruimte worden ingesprongen.
De volgende code zou deze fout veroorzaken:

```python
    if True:
        print('Correct ingesprongen')
       print('Onjuist ingesprongen!')
```

### NameError: name [variable name] is not defined on line [line number]

Je probeert te verwijzen naar een variabele of object dat op dat specifieke punt in je programma niet bestaat. Het kan zijn dat de variabele nog geen waarde heeft gekregen, of er zit een tikfout in de variabele naam. Het kan ook zijn dat je een variabele binnen een functie hebt gedefinieerd, en je probeert naar diezelfde variabele buiten de functie te verwijzen.

```python
    persoon = input('Typ je naam in: ')
    input('Typ je leeftijd in: ')

    print("Hi", pearson)                # fout: persoon werd pearson getypt
    print("Je bent", leeftijd, "jaar oud")  # fout: de variabele leeftijd is niet gedefinieerd
```

### TypeError: unsupported operand type(s) for Add: 'int' and 'str' on line [line number]

Je probeert misschien een geheel getal en een string samen te voegen, zonder eerst de string om te zetten in een geheel getal. Strings kunnen worden omgezet in gehele getallen met de `int()` functie. Een soortgelijke foutmelding kan verschijnen als je probeert andere rekenkundige bewerkingen uit te voeren, zoals deling of aftrekking, op strings.

Het kan ook zijn dat je probeert een nieuwe string te maken door een string en een geheel getal te combineren. Je moet eerst het geheel getal omzetten in een string met de `str()` functie.

```python
    mijn_leeftijd = input("Typ je leeftijd in: ")
    mijn_naam = input("Typ je naam in: ")

    print(mijn_leeftijd//2)   # fout: de variabele mijn_leeftijd is niet omgezet naar een integer
```

### TypeError: cannot concatenate 'str' and 'int' objects on line [line number]

Zie hierboven.
