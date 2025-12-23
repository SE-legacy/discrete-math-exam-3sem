#import "../conf.typ": definition, theorem

#definition()[
  Пусть $A != emptyset$. Бинарное отношение на множестве $A$ называется отношением эквивалентности, если оно рефлексивно, симметрично и транзитивно.
]

#definition()[
  Пусть $A != emptyset$. Разбиением $Pi$ называют множество ${A_i}_(i in I)$, причем блоки разбиения $A_i subset.eq A$ удовлетворяют следующим условиям:

  + $limits(union.big)_(i in I) A_i = A$.
  + $forall i in I "  " forall j in I "  " A_i inter A_j = emptyset$.
]

#definition()[
  Пусть $A != emptyset, " " epsilon subset.eq A times A$. Множество $M subset.eq A$ называется классом (эквивалентности) $epsilon$ или $epsilon$-классом, если:

  + $forall a in M "  " forall b in M "  " (a, b) in epsilon$.
  + При добавлении в класс $M$ любого элемента из множества $A$ нарушается первое условие.
]

#definition()[
  Пусть $A != emptyset$, $epsilon$ --- отношение эквивалентности на множестве $A$. Фактор-множеством множества $A$ по эквивалентности $epsilon$ называют множество, элементами которого являются классы эквивалентности. Обозначается как $A slash epsilon$.
]

#theorem(name: "Теорема (основная теорема об эквивалентностях)")[
  Пусть $A != emptyset$. Тогда:

  + Каждой эквивалентности $epsilon subset.eq A times A$ можно сопоставить разбиение $Pi(epsilon)$ множества $A$.
  + Каждому разбиению $Pi = {Pi_i}$ соответствует эквивалентность:
    $ epsilon(Pi) = {(a, b) in A times A | a " и " b " лежат в одном блоке разбиения"}. $
  + $epsilon(Pi(epsilon)) = epsilon, " " Pi(epsilon(Pi)) = Pi$.
][]

