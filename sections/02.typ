#import "@preview/fletcher:0.5.8": diagram, edge, node
#import "../conf.typ": definition, theorem

#let graph = [
  #diagram(spacing: (4mm, 8mm), {
    for (i, value) in ("1", "2", "i", "n").enumerate() {
      let my_node = (level, base) => {
        node(
          (i, level),
          align(bottom + center)[
            #eval(base + "_" + value, mode: "math")
          ],
          stroke: 0.5pt,
          name: base + "_" + value,
          radius: 3mm,
        )
      }
      my_node(0, "a")
      my_node(1, "b")
    }

    edge(label("a_i"), label("b_i"), "-|>")
  })
]

#definition()[
  Пусть $A$ и $B$ --- произвольные непустые множества. Их декартово произведение (обозначим как $A times B$) является множеством, состоящим из всевозможных пар вида $(a, b), " " a in A, " " b in B$.
]

#definition()[
  Бинарным отношением между множествами $A$ и $B$ называется любое подмножество $A times B$.
]

#definition()[
  Пусть $A, B != emptyset, " " rho subset.eq A times B, " " sigma subset.eq A times B$. Определим операции над бинарными отношениями:

  + Операции дополнения, пересечения и объединения определяются аналогично операциям над множествами.

  + $rho^(-1) = {(b, a) in B times A | (a, b) in rho}$.
  + $rho compose sigma = {(a, c) in A times C | exists b in B " " lr(((a, b) in rho), size: #125%) amp lr(((b, c) in sigma), size: #125%) }$.
]

Пусть конечные множества $A, B != emptyset, " " A = {a_1, a_2, ..., a_n}, " " B = {b_1, b_2, ..., b_n}$. $rho in cal(P)(A times B)$. Рассмотрим способы задания конечных бинарных отношений:

+ С помощью ориентированного графа $arrow(G) = (A union B, rho):$
  #figure()[
    #grid(
      columns: (auto, auto),
      column-gutter: 2em,
      align: horizon,
    )[#graph][$(a_i, b_i) in rho$]
  ]
  где $A union B$ --- множество вершин, $rho$ --- множество дуг графа.


+ #[
    Булевой матрицей $M(rho)$, где её $i j$-ый элемент

    $
      (M(rho))_(i j) = cases(
        0\, (a_i, b_j) in.not rho,
        1\, (a_i, b_j) in rho.
      )
    $
  ]

#theorem(name: "Теорема (о матрицах бинарных отношений)")[
  Пусть конечные множества $A, B, C != emptyset.$ $rho, sigma subset.eq A times B.$ $tau subset.eq B times C$. Тогда:

  + $rho = sigma <==> M(rho) = M(sigma)$.
  + $M(rho union sigma) = M(rho) + M(sigma)$.
  + $M(rho inter sigma) = M(rho) and M(sigma)$.
  + $M(overline(rho)) = (M(rho))'$.
  + $M(rho compose tau) = M(rho) dot M(tau)$.
  + $M(emptyset) = bold(0) = mat(
      0, ..., 0;
      dots.v, dots.down, dots.v;
      0, ..., 0
    )$.
  + $M(A times B) = bold(1) = mat(
      1, ..., 1;
      dots.v, dots.down, dots.v;
      1, ..., 1
    )$.
  + $M(rho^(-1)) = M(rho)^T$.
  + $M(Delta_A) = E = mat(
      1, 0, ..., 0;
      0, 1, ..., 0;
      dots.v, dots.v, dots.down, dots.v;
      0, 0, ..., 1
    )$.
][]
