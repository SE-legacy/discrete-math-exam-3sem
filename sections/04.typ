#import "../conf.typ": definition

#definition()[
  Пусть $rho subset.eq A times A$. $rho$ называется:

  + Рефлексивным, если
    $ forall a in A "  " (a, a) in rho. $
  + Антирефлексивным, если
    $ forall a in A "  " (a, a) in.not rho. $
  + Симметричным, если
    $ forall a in A "  " forall b in A "  " (rho(a) = b) => (rho(b) = a). $
  + Антисимметричным, если
    $ forall a in A "  " forall b in A "  " lr(((a, b) in rho " " amp " " (b, a) in rho), size: #125%) => (a = b). $
  + Транзитивным, если
    $
      forall a in A "  " forall b in A "  " forall c in A "  " lr(((a, b) in rho " " amp " " (b, c) in rho), size: #125%) => (a, c) in rho .
    $
  + Полным, если
    $ forall a in A "  " forall b in B "  " lr(((a, b) in rho), size: #125%) or lr(((b, a) in rho), size: #125%). $
]
