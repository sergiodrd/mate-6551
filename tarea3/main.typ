#import "@preview/commute:0.3.0": node, arr, commutative-diagram
#import "template.typ": *
#let title = "Tarea 3"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6551"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "December 13, 2025"
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
#let co = $compose$

#prob[
  _Let $A sub X$ and $B sub Y$ be given. Assume that $f_0, f_1: X -> Y$ with
  $f_0|_A = f_1|_A$ and $f_i (A) sub B$ for $i in {0, 1}$; assume $g_0, g_1: Y
  -> Z$ with $g_0|_B = g_1|_B$. If $f_0 tilde.eq f_1 "rel" A$ and $g_0 tilde.eq
  g_1 "rel" B$, then \ $g_0 co f_0 tilde.eq g_1 co f_1 "rel" A$._

  == Proof:

  Let $H_1: X times I -> Y$ be a homotopy $f_0 tilde.eq f_1 "rel" A$ and
  $H_2: Y times I -> Z$ be a homotopy \ $g_0 tilde.eq g_1 "rel" B$. Now define
  $H: X times I -> Z$ by $H(x, t) = H_2 (H_1 (x, t), t)$. Note that this is
  a composition of continuous functions and thus continuous. Furthermore, note
  that $ H(x, 0) = H_2 (H_1 (x, 0), 0) = g_0 (f_0 (x)) = (g_0 co f_0)(x) $ and
  $ H(x, 1) = H_2 (H_1 (x, 1), 1) = g_1 (f_1 (x)) = (g_1 co f_1)(x) $
  This shows that $H$ is a homotopy, to show that it is relative to $A$,
  we use that $H_1$ is a homotopy $"rel" A$ and $H_2$ is a homotopy $"rel" B$.
  For $a in A$ and any $t in I$, we have \ $H(a, t) = H_2 (H_1 (a, t), t) =
  H_2 (f_0 (a), t)$, but $f_0(A) sub B$ yields: $ H(a, t) = g_0(f_0(a)) =
  (g_0 co f_0)(a) $ Similarly, we have: $ H(a, t) = H_2 (H_1 (a, t), t) =
  H_2 (f_1 (a), t) = g_1 (f_1 (a)) = (g_1 co f_1)(a) $

  $therefore H$ is a homotopy $g_0 co f_0 tilde.eq g_1 co f_1 "rel" A$.

  *MEP*
]

#prob[
  _Let $f_0 tilde.eq f_1 "rel" dot(I)$ and $g_0 tilde.eq g_1 "rel"
  dot(I)$ be paths in $X$ and $Y$ respectively. If for $i in {0, 1}$,
  $(f_i, g_i)$ is the path in $X times Y$ defined by $t arrow.r.bar (f_i (t),
  g_i (t))$. Prove that $(f_0, g_0) tilde.eq (f_1, g_1) "rel" dot(I)$._

  == Proof:

  Let $H_1: I times I -> X$ be a homotopy $f_0 tilde.eq f_1 "rel" dot(I)$,
  and $H_2: I times I -> Y$ be a homotopy \ $g_0 tilde.eq g_1 "rel"
  dot(I)$. Then define $H: I times I -> X times Y$ by $H(t, s) =
  (H_1 (t, s), H_2 (t, s))$. This is clearly continuous. Note that
  $ H(t, 0) = (H_1 (t, 0), H_2 (t, 0)) = (f_0(t), g_0(t)) = (f_0, g_0)(t) $ and
  $ H(t, 1) = (H_1 (t, 1), H_2 (t, 1)) = (f_1(t), g_1(t)) = (f_1, g_1)(t) $
  Finally, for $i in dot(I)$ and any $s in I$,
  $ H(i, s) = (H_1 (i, s), H_2 (i, s)) = (f_0(i), g_0(i)) = (f_0, g_0)(i) $ and
  $ H(i, s) = (H_1 (i, s), H_2 (i, s)) = (f_1(i), g_1(i)) = (f_1, g_1)(i) $

  $therefore H$ is a homotopy $(f_0, g_0) tilde.eq (f_1, g_1) "rel" dot(I)$.

  *MEP*
]

#prob[
  _If $pi_1(Y, y_0) != {1}$ for some pointed space $(Y, y_0)$, then
  $pi_1(S^1, 1) != {1}$._

  == Proof:

  Suppose $pi_1 (S^1, 1) = {1}$, then $1_(S^1)$ is nullhomotopic, since there is
  only one path homotopy class, so $[1_(S^1)] = [k]$ where $k(z) = 1$. Let
  $f: I -> Y$ be a closed path at $y_0$. Then, since $S^1 approx^eta I \/
  dot(I)$, and $f(0) = f(1) = y_0$, the composite map $f pi^(-1) eta: S^1 -> Y$,
  where $pi: I -> I \/ dot(I)$ is the quotient projection, is well defined and
  continuous. Of course, $pi^(-1)$ itself is not well defined, we can use it
  in our expression only because $f$ is constant on $dot(I)$. Now, using the
  fact that relative homotopy is a congruence in *Top*, we have:

  $ 1_(S^1) &tilde.eq k \ ==> f pi^(-1) eta 1_(S^1) &tilde.eq f pi^(-1) eta k \
  ==> f &tilde.eq f pi^(-1) eta k eta^(-1) pi $

  But $k$ is constant, so $f pi^(-1) eta k eta^(-1) pi$ must be constant too.
  The result follows by contrapositive.

  *MEP*
]

#prob[
  _Prove that $S^1$ is not a retract of $D^2$._

  == Proof:

  Suppose, for a contradiction, that $S^1$ is a retract of $D^2$. Then there
  exists a retraction $r: D^2 -> S^1$. Therefore, the following diagram
  commutes, where $i: S^1 -> D^2$ is the inclusion:

  #align(center)[#commutative-diagram(
    node((0, 0), $S^1$),
    node((0, 2), $S^1$),
    node((1, 1), $D^2$),
    arr((0, 0), (0, 2), $1_(S^1)$),
    arr((0, 0), (1, 1), $i$),
    arr((1, 1), (0, 2), $r$)
  )]

  Applying the fundamental group functor, we get:

  #align(center)[#commutative-diagram(
    node((0, 0), $pi_1 (S^1) = ZZ$),
    node((0, 2), $pi_1 (S^1) = ZZ$),
    node((1, 1), $pi_1 (D^2) = 0$),
    arr((0, 0), (0, 2), $pi_1 (1_(S^1)) = 1_(pi_1 (S^1)) = 1_ZZ$),
    arr((0, 0), (1, 1), $pi_1 (i)$),
    arr((1, 1), (0, 2), $pi_1 (r)$)
  )]

  which has to commute by functoriality of $pi_1$. But then, since $pi_1 (D^2)
  = 0$, $ 1_ZZ = pi_1 (r) co pi_1 (i) = 0 $ which is a contradiction.
  $contradiction$

  *MEP*
]

#prob[
  _Let $f$ be a closed path in $S^1$ at $1$. Prove that if $f$ is not
  surjective, then $"deg" f = 0$. Give an example of a surjective $f$ with
  $"deg" f = 0$._

  == Proof:

  Let $tilde(f): I -> RR$ denote the unique lifting of $f$ with
  $tilde(f)(0) = 0$. Suppose that $deg f != 0$, in fact, without loss of
  generality suppose that $deg f > 0$. Because $tilde(f)$ is
  continuous, and $deg f in ZZ$, we have that the image
  $tilde(f)(I) = [tilde(f)(0), tilde(f)(1)] = [0, deg f]$. But
  $exp co tilde(f) = f$, so we have: $ f(I) = (exp co tilde(f))(I)
  = exp(tilde(f)(I)) = exp([0, deg f]) $ But $deg f in ZZ$ and $deg f > 0 ==>
  [0, 1] sub [0, deg f] ==> exp([0, 1]) sub exp([0, deg f])$. But $exp([0, 1])
  = S^1$ by construction, so $S^1 = exp([0, 1]) sub exp([0, deg f]) = f(I)$.

  $therefore f$ is surjective.

  *MEP*
]
