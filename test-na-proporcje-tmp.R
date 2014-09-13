library(IPSUR) 
library(HH)

# Eksperyment z astrologami wedyjskimi. Jest 40 horoskopów, z których 20 nalezy do dzieci upośledzonych
# umysłowo i 20 horoskopów do dzieci z wybitnymi osiągnięciami. Trzeba przydzielić horoskopy do każdej
# Z tych grup. Prawdopodobieństwo oczekiwane to 1/2.

# Najgorszy z astrologów osiągnął wynik 17 trafień na 40 horoskopów. 
p <- prop.test(x=17, n=40, p = 1/2, alternative = "greater", conf.level = 0.95, correct = FALSE)
plot(p)


# Najlepszy 24 dobre trafienia na 40 horoskopów.
p <- prop.test(x=24, n=40, p = 1/2, alternative = "greater", conf.level = 0.95, correct = FALSE)
plot(p)

# Można powiedzieć, że gdyby strzelił 26 na 40, to byłby na granicy poziomu istotności 0,05.
p <- prop.test(x=26, n=40, p = 1/2, alternative = "greater", conf.level = 0.95, correct = FALSE)
plot(p)
title("26 trafień na 40",line=3)

# Dokładne testy robi się z alfa = 0,01 procent, zo zmniejsza pole w jakie może wpaść wynik.

p5 <- prop.test(x=25, n=40, p = 1/2, alternative = "greater", conf.level = 0.99, correct = FALSE)
plot(p5, "Hypoth")

# W takim przypadku, żeby nikt nie miał wątpliwości trzeba dobrze trafić 28 na 40 horoskopów.

p6 <- prop.test(x=28, n=40, p = 1/2, alternative = "greater", conf.level = 0.99, correct = FALSE)
plot(p6, "Hypoth")

# UWAGI:

# 1) Tamten był testem na proporcję "grater" ten jest na proporcję obustronną "two.sided". 
# Są duże różnice, gdyż niebieski obszar musi wtedy wypełnić obia brzegi dzwonu.
# Twierdzenie, że się coś potrafi robić oznacza, ze się robi coś lepiej, dlatego w takich przypadkach
# Przeprowadzać test jedno stronny, a nie dwu, jak ten pod spodem.
p3 <- prop.test(x=24, n=40, p = 1/2, alternative = "two.sided", conf.level = 0.95, correct = FALSE)
plot(p3, "Hypoth")

# Na p-wartość wpływa wielkośc próbki, a nie sama proporcja.
# p7 pod względem proporcji to 1/4 podobnie, jak w p8, p jest zupełnie inne. 

p <- prop.test(x=6, n=10, p = 1/2, alternative = "greater", conf.level = 0.95, correct = FALSE)
plot(p)
p <- prop.test(x=600, n=1000, p = 1/2, alternative = "greater", conf.level = 0.95, correct = FALSE)
plot(p)

