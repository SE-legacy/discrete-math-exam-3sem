#import "../conf.typ" : definition, theorem, consequence

#definition()[
  $A = (S, X, Y, delta, lambda)$, $t in S$ достижимо из $s in S$, если $exists p in X^*$, которое переводит автомат из состояния s в состояние t, т.е. $exists p in X^* t = delta(s,p).$
]

#definition(name:"Бинарное отношение достижимости на множестве S")[
  $tau = {(s,t) in S crossmark S | exists p in X^* t = delta(s,p)}$
]

#definition()[
  Состояния называются взаимнодостижимыми, если они достижимы друг из друга.
]

#definition()[
 $k = {(s,t) in S crossmark S | (exists p in X^* t = delta(s,p)) and (exists q in X^* s = delta(t,q))}$ 
]

#definition()[
  Если отношения взаимнодостижимы универсально на множестве S, то автомат называется сильносвязанным.
]

#definition()[
  Классы эквивалентности отношений взаимной достижимости называются слоями автомата.
]

#theorem()[
  Пусть $A = (S, X, Y, delta_A, lambda_A)$, $B = (T, X, Y, delta_B, lambda_B)$ --- сравнимые сильно связанные автоматы. Если в автомате A найдется состояние неразличимое с некоторым состоянием автомата B, то A и B неразличимы.

  $exists s in S exists t in T s equiv t arrow.r.double A equiv B$
][
  $S = {s_1, s_2, dots, s_k}$, $T = {t_1, t_2, dots, t_m}$

  Пусть $s_1 equiv t_1$ (если это так переобозначим состояния)

  $(forall s in S exists t in T s equiv t) and (forall t in T exists s in S s equiv t)$

  $s_i: exists p in X^* delta_A (s_1,p) = s_i$ (из--за сильно сзязанных соотношений)

  $t_i = delta_B (t_1,p)$

  $q in X*$, pq --- конкатенация

  $lambda_A (s_1,"pq") = lambda_A (s_1,p)lambda_A (delta_A(s_1,p),q)$, где $delta_A (s_1,p) = s_i$

  $lambda_B (t_1,"pq") = lambda_B (t_1,p)lambda_B (delta_B(t_1,p),q)$, где $delta_B (t_1,p) = t_i$

  $lambda_A (s_i,q) = lambda_B (t_i,q) forall q arrow.r.double s_i equiv t_i$
]

#consequence()[
  Пусть A и B --- сравнимые, сильно связанные и неэквивалентные автоматы. Тогда в автомате A нет состояний, неразличимых с состояниями автомата B.
][]

#consequence()[
  Всякий класс попарно неэквивалентных сильно связанных сравнимых автоматов является исключительным классом.
][]