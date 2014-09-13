
# Paradoks dnia urodzin w kontekście astrologicznym.

# Ile osób wylosować, by mieć ponad 50% szansę na 2 osoby ur. tego samego dnia?

qbirthday(p=0.5, class=365, coincident = 2) #       ---> ODPOWIEDŹ: 23 osoby

# Ile horoskopów przebadać, by mieć ponad 50% szansę na znalezienie 5 osób
# które mają Słońce i Księżyc w tym samym znaku?

qbirthday(p=0.5, class=144, coincident = 5) #       ---> ODPOWIEDŹ: 154

# Szansa na spotk. w grup. 200 os. 4 lub więcej osób ze Słońcem w tym samym stopniu:

pbirthday(n = 200, classes = 360, coincident = 4) # --->  ODPOWIEDŹ: 60.24%

# Ile horoskopów przebadać, by mieć ponad 50% szansę na znalezienie 3 Koziorożców:

qbirthday(p = 0.5, classes = 12, coincident = 3) #  --->  ODPOWIEDŹ: 11

# Prawdopodobieństwo, że 3 kolejnych partnerów ma Słońce w Rybach?

pbirthday(n = 3, classes = 12, coincident = 3) #    ---> ODPOWIEDŹ: 2.56%


