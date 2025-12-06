#import "../conf.typ": definition, theorem

#definition()[
  Множество --- вполне определенная совокупность различных объектов.
]

#definition(breakline: true)[
  $A = B$, если $forall x " " x in A <=> x in B$.

  $A subset.eq B$, если $forall x " " x in A => x in B$.

  $A subset B$, если $A subset.eq B " " amp " " A != B$.
]

#definition()[
  Универсальное множество --- такое, что все остальные множества являются его подмножествами. Обозначим его как $Omega$. $Omega != emptyset$.
]

#definition()[
  $cal(P)(A)$ --- множество всех подмножеств множества $A$.
]

#definition()[
  Пусть $A, B in cal(P)(Omega)$. Определим операции над множествами:
  + $overline(A) = {x in Omega | x in.not A}$.
  + $A inter B = {x in Omega | (x in A) amp (x in B)}$.
  + $A union B = {x in Omega | (x in A) or (x in B)}$.
  + $A \\ B = {x in Omega | (x in A) amp (x in.not B)} = A inter overline(B)$.
  + $A Delta B = (A \\ B) union (B \\ A)$.
]

#definition()[
  $A in cal(P)(Omega), " " abs(Omega) = n, " " Omega = {x_1, ..., x_2}$, где зафиксируем порядок элементов.

  $overline(Chi)_A = (overline(Chi)_1^A, overline(Chi)_2^A, ..., overline(Chi)_n^A )$, где

  $
    overline(Chi)_i^A = cases(
      0\, " " x_i in.not A,
      1\, " " x_i in A.
    )
  $
]

#theorem(name: "Теорема (о характеристических векторах множеств)")[
  Пусть $Omega$ --- универсальное множество. $A, B in cal(P)(Omega)$. Тогда:

  + $A = B <==> overline(Chi)_A = overline(Chi)_B$.
  + $overline(Chi)_(overline(A)) = (overline(Chi)_A)'$.
  + $overline(Chi)_(A inter B) = overline(Chi)_A dot overline(Chi)_B$.
  + $overline(Chi)_(A union B) = overline(Chi)_A + overline(Chi)_B$.
  + $overline(Chi)_Omega = (1, 1, ..., 1)$.
  + $overline(Chi)_(emptyset) = (0, 0, ..., 0)$.
][]

#theorem(name: "Теорема (о числе подмножеств n-элементного множества)")[
  Число подмножеств $n$-элементного множества равно $2^n$.
][]
