#import "template.typ": *
#let title = "Tarea 1"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6551"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "October 8, 2025"
#set enum(numbering: "a)")
#set math.equation(numbering: "(1)", supplement: "la ecuación")
#show: assignment_class.with(title, author, course_id, instructor, semester,
  due_time)

#let contradiction = text($refmark$, size: 1.75em)
#let sub = $subset.eq$
#let topo = $cal(T)$
#let disc = $topo_"disc"$
#let cof = $topo_"cof"$
#let eucl = $topo_(epsilon^1)$
#let eucl2 = $topo_(epsilon^2)$
#let euclsp = $(RR, topo_(epsilon^1))$
#let eucl2sp = $(RR^2, topo_(epsilon^2))$
#let base = $cal(B)$
#let case = $cal(C)$
#let arbfama = ${U_alpha}_(alpha in Lambda)$
#let finfamn = ${U_i}_(i = 1)^n$
#let arbuna = $limits(union.big)_(alpha in Lambda)$
#let arbung = $limits(union.big)_(gamma in Lambda')$
#let arbungG = $limits(union.big)_(gamma in Gamma)$
#let tilgam = $tilde(gamma)$
#let tilGam = $tilde(Gamma)$
#let tilj = $tilde(j)$
#let tilSig = $tilde(Sigma)$
#let arbungtilG = $limits(union.big)_(tilgam in tilGam)$
#let arbina = $limits(inter.big)_(alpha in Lambda)$
#let arbing = $limits(inter.big)_(gamma in Lambda')$
#let arbingG = $limits(inter.big)_(gamma in Gamma)$
#let arbingtilG = $limits(inter.big)_(tilgam in tilGam)$
#let arbcovera = ${C_alpha}_(alpha in Lambda)$
#let sp = $,space space$
#let binsp = $bold(accent(2, \u{23DC}))$
#let Hom = $text("Hom")$
#let obj = $text("obj")$

#prob[
  _If $X$ is a topological space homeomorphic to $D^n$, then every continuous
  $f:X->X$ has a fixed point._

  == Demo:


  *MEP*
]

#prob[
  _Let $f in Hom(A, B)$ be a morphism in a category $case$. If $f$ has an
  inverse $g$ and a right inverse $h$, then $g = h$._

  == Demo:


  *MEP*
]

#prob[
  _Let $G$ be a group and let $case$ be the one-object category it defines:
  $obj case = {*}, Hom(*, *) = G$, and composition is a group operation. If $H$
  is a normal subgroup of $G$, define $x ~ y$ to mean $x y^(-1) in H$.
  Show that $~$ is a congruence on $case$ and that $[*, *] = G"/"H$ in the
  corresponding quotient category._

  == Demo:


  *MEP*
]

#prob[
  _Let $x_0, x_1 in X$ and let $f_i:X->X$ for $i in {0, 1}$ denote the constant
  map at $x_i$. Prove that $f_0 tilde.eq f_1$ if and only if there is a
  continuous $F:I->X$ with $F(0)=x_0$ and $F(1)=x_1$._

  == Demo:


  *MEP*
]

#prob[
  _(i) Give an example of a continuous image of a contractible space that is
  not contractible._

  _(ii) Show that a retract of a contractible space is contractible._

  == Demo:


  *MEP*
]
