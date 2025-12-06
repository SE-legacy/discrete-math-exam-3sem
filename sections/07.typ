#import "../conf.typ" : *

#definition(breakline: true)[
A --- конечный детерминированный автомат.

  $A = (S, X, Y, delta, lambda)$, где:
  - S --- множество состояний,
  - X --- входной алфавит,
  - Y --- выходной алфавит,
  - $delta$ --- функция(отображение) переходов $(delta: S crossmark X arrow.r S)$,
  - $lambda$ --- функция(отображение) выходов $(lambda: S crossmark X arrow.r Y)$,
  - S, X, Y --- конечные непустые множества.
]

Будем считать, что в каждый момент t = 1, 2, 3, $dots$ на вход автомату подается некоторый сигнал из множества A, а на выходе появляется соответствующий сигнал из множества B.

*Способы задания:*
- с помощью таблицы.
#table(
  columns:3,
  [*A*],[*$x_1, dots, x_j, dots, x_m$*],[*$x_1, dots, x_j, dots, x_m$*],
  [$s_1$], [], [],
  [$s_2$], [], [],
  [$dots$], [],[],
  [$s_i$], [$dots delta(s_i,x_j) dots$],[$dots lambda(s_i,x_j) dots$],
  [],[],[],
  [$s_n$],[],[]

)

- с помощью графа. Ориентированный граф, у которого вершины помечены состояниями автомата, и из $s_i$ в $s_j$ проводится дуга с пометкой x/y, если $delta(s_i,x) = s_j$ и $lambda(s_i, x) = y$

#definition()[
  $X^*$ --- множество всех слов над алфавитом X, включая пустое слово ($epsilon$).
  
  $p in X^*$ --- входное слово
]

#definition()[
  $delta(S,X)$ --- переход.  $lambda(S,X)$ --- выход
]

#definition()[
  $forall s in S forall p in X^* forall x in X$

  $delta(S, epsilon) = S$

  $delta(S, p x) = delta(delta(s, p), x)$
]

#definition()[
  $forall s in S forall p in X^* forall x in X$

  $lambda(S, epsilon) = epsilon$

  $lambda(S, p x) = lambda(s,p)lambda(delta(s, p), x)$
]

#definition()[
  Словарное отображение --- преобразует слово из входного алфавита в слово из выходного алфавита.
]

#definition()[
  Автоматы называются сравнимыми, если у них одинаковые входные и одинаковые выходные алфавиты.
]

#definition()[
Пусть $A_1 = (S_1, X_1, Y_1, delta_1, lambda_1)$ и $A_2 = (S_2, X_2, Y_2, delta_2, lambda_2)$.

$A_1$ изоморфен ($tilde.equiv$) $A_2$, если $exists$ 3 биекции (взаимно однозначных соответствий)
  $phi: S_1 arrow.r S_2$,
  $psi: X_1 arrow.r X_2$,
  $chi: Y_1 arrow.r Y_2$
  таких, что выполняются выполняются 2 условия:
  - $forall s in S_1, forall x in X_1 phi(delta_1(s,x))) = delta_2(phi(s),psi(x))$
  - $chi(lambda_1(s,x)) = lambda_2(phi(s),psi(x))$
]

#definition()[
  Пусть $A_1 = (S_1, X, Y, delta_1, lambda_1)$ и $A_2 = (S_2, X, Y, delta_2, lambda_2)$.

  $A_1 и A_2$ сравнимые автоматы. $A_1 tilde.equiv A_2$, если найдется биекция

  $forall s in S_1 forall x in X$ 

  #show  math.cases:set text(size:14pt)
  $cases(
    phi(delta_1(s,x)) = delta_2(phi(s),x),
    lambda_1(s,x) = lambda_2(phi(s),x),
  )$  
]

#definition(name: "Утверждение о биекции")[
  Справедливо следующее:
  + $Delta_A$ --- биекция на A $eq.not nothing$
  + A, B $eq.not nothing$ $rho subset.eq A crossmark B$ --- биекция $arrow.r.double rho^(-1) subset.eq B crossmark A$ --- биекция
  + A, B, C $eq.not nothing$  $rho subset.eq A crossmark B $ --- биекция и $sigma subset.eq B crossmark C $ --- биекция $arrow.r.double rho crossmark sigma subset.eq A crossmark C $ --- биекция
]

#definition()[
  $rho subset.eq A crossmark B $
  
  $ sigma subset.eq B crossmark C$ --- отображения.

  $(rho dot sigma)(a) = sigma(rho(a))$, где $rho(a) = b$
]

#theorem(name: "Теорема (об изоморфизме автоматов)")[
Отношение изоморфизма на множестве конечных детерминированных автоматов есть отношение эквивалентности на этом множестве.
][
  Пусть $A_1 = (S_1, X_1, Y_1, delta_1, lambda_1) tilde.equiv A_2 = (S_2, X_2, Y_2, delta_2, lambda_2)$.

  Докажем рефлексивность.

  $Delta_S = phi$,  $Delta_X = psi$,  $Delta_Y = chi$

  $Delta_S(delta(s,x)) = delta(Delta_S(s),Delta_X(x))$ , где $Delta_S(delta(s,x)) = delta(s,x)$, $Delta_S(s) = s$, $Delta_X(x) = x$

  $Delta_Y(lambda(s,x)) = lambda(Delta_S(s),Delta_X(x))$

  Каждый автомат изоморфен сам себе.

  Докажем симметричность.

  $A_1 tilde.equiv A_2 arrow.r.double A_2 tilde.equiv A_1$

  $phi^(-1): S_2 arrow.r S_1$, $psi^(-1): X_2 arrow.r X_1$, $chi^(-1): Y_2 arrow.r Y_1$

  $S' = phi(S)$, $S = phi^(-1)(S')$

  $X' = psi(X)$, $X = psi^(-1)(X')$

  $Y' = chi(Y)$, $Y = chi^(-1)(Y')$

  $forall s' subset.eq S_2 forall x' subset.eq X_2$

  $phi^(-1)(delta_2(s',x')) = delta_1(phi^(-1)(s'), psi^(-1)(x')) arrow.r.double delta_1(s,x) = phi^(-1)(delta_2(phi(s),psi(x)))$

  $chi^(-1)(lambda_2(s',x')) = lambda_1(phi^(-1)(s'),psi^(-1)(x')) arrow.r.double lambda_1(s,x) = chi^(-1)(lambda_2(phi(s),psi(x)))$


  Докажем транзитивность.

  $forall A_1, A_2, A_3 A_1 tilde.equiv A_2 and A_2 tilde.equiv A_3 arrow.r.double A_1 tilde.equiv A_3 $

  $phi: S_1 arrow.r S_2$,
  $psi: X_1 arrow.r X_2$,
  $chi: Y_1 arrow.r Y_2$

  $rho: S_2 arrow.r S_3$,
  $sigma: X_2 arrow.r X_3$,
  $tau: Y_2 arrow.r Y_3$

  $forall s in S_1 forall x in X_1$

  (1) $phi(delta_1(s,x)) = delta_2(phi(s),psi(x))$
  
  (2) $chi(lambda_1(s,x)) = lambda_2(phi(s),psi(x))$

  $forall s' in S_2 forall x' in X_2$

  (3) $rho(delta_2(s',x')) = delta_3(rho(s'),sigma(x'))$

  (4) $tau(lambda_2(s',x')) = lambda_3(rho(s'),sigma(x'))$


  Нашлась тройка биекций. 

  Докажем $phi dot rho : S_1 arrow.r S_2,  psi dot sigma: X_1 arrow.r X_3, chi dot tau: Y_1 arrow.r Y_3$

  (5) $forall s in S_1 forall x in X_1  (phi dot rho)(delta_1(s,x)) = delta_3((phi dot rho)(s),(psi dot sigma)(x))$

  (6) $(chi dot tau)(lambda_1(s,x)) = lambda_3((phi dot rho)(s),(psi dot sigma)(x))$

  Из (5) и (6) должно следовать $A_1 tilde.equiv A_3$

  Докажем 5:

  $(phi dot rho)(delta_1(s,x)) = rho(phi(delta_1,(s,x))) = rho(delta_2(phi(s),psi(x))) = delta_3(rho(phi(s)),sigma(psi(x))) = delta_3((phi dot rho)(s),(psi dot sigma)(x))$

  Докажем 6:

  $(chi dot tau)(lambda_1(s,x)) = tau(chi(lambda_1(s,x))) = tau(lambda_2(phi(s), psi(x))) = lambda_3(rho(psi(s), sigma(psi(x))) = lambda_3((phi dot rho)(s),(psi dot sigma)(x))$
]