#import "../conf.typ" : definition, theorem

#definition(name:"Фактор-автомат")[
  Пусть $A = (S, X, Y, delta, lambda)$, $epsilon$ --- отношение неразличимых состояний. Фактором автомата A по отношению $epsilon$--неразличимости называется автомат, который обозначается $A/epsilon = (S/epsilon, X, Y, delta', lambda')$

  $forall s in S forall x in X delta'(epsilon(s), x) = epsilon(delta(s,x))$

  $lambda'(epsilon(s),x) = lambda(s,x)$
]

#theorem(name:"Теорема о фактор-автомате")[
  Каждый автомат эквивалентен своему фактор автомату.
][
  Нужно доказать: $(forall s in S exists t in s/epsilon s equiv t) and (forall t in s/epsilon exists s in S t equiv s)$

  $forall s in S forall p in X^*$
  
  $delta'(epsilon(s), p) = epsilon(delta(s,p))$
  
  $lambda'(epsilon(s),p)= lambda(s,p)$

  1) |p| = 0  p = e (в данном случае пустое слово обозначается e)

  |p| = 1

  База индукции выполняется.

  2) |p| $lt.eq$ k
  
  3) Пусть для |p| = k условие выполняется, $x in X$ px --- произвольное слово длины k+1, |px| = k+1

  $delta'(epsilon(s),"px") = delta'(delta'(epsilon(s),p),x) = delta'(epsilon(delta(s,p)),x) = epsilon(delta(delta(s,p),x)) = epsilon(delta(s,"px"))$
  
  $lambda'(epsilon(s),"px") = lambda'(epsilon(s),p)lambda'(delta'(epsilon(s),p),x) = lambda(s,p)lambda(delta(s,p),x) = lambda(s,"px")$

]