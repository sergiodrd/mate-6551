#import "@preview/commute:0.3.0": node, arr, commutative-diagram
#import "template.typ": *
#let title = "Tarea 4"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6551"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "December 17, 2025"
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
  _Compute $H_n (S^0)$ for all $n >= 0$._

  == Proof:

  Recall that the homology of a space is isomorphic to the direct sum of the
  homologies of the path components of that space. Therefore, $H_n (S^0)
  tilde.equiv H_n ({-1}) plus.big H_n ({1})$. But, by the dimension axiom,
  $H_n ({-1}) = H_n ({1}) = 0$ for $n >= 1$. We know that the $0$th homology of
  a space is a free abelian group with rank equal to the amount of path
  components of the space.

  Putting it all together, we have: $ H_n (S^0) = cases(0 space space space
  space space space space "if" n >= 1, ZZ times ZZ space "if" n = 0) $

  *MEP*
]

#prob[
  _Prove that $P_n$ is "natural": if $f:X->Y$ is continuous, there is a
  commutative diagram_

  #align(center)[#commutative-diagram(
    node((0, 0), $S_n (X)$),
    node((0, 1), $S_(n+1) (X times I)$),
    node((1, 0), $S_n (Y)$),
    node((1, 1), $S_(n+1) (Y times I)$),
    arr((0, 0), (0, 1), $P_n^X$),
    arr((1, 0), (1, 1), $P_n^Y$),
    arr((0, 0), (1, 0), $f_\#$),
    arr((0, 1), (1, 1), $(f times 1)_\#$),
  )]

  == Proof:

  To show commutativity is to show that $(f times 1)_\# co P_n^X = P_n^Y co
  f_\#$, and to show this, it suffices to show that the equation holds for a
  generator of $S_n (X)$. Let $sigma: Delta^n -> X$ be a singular n-simplex on
  $X$, then:
  $ ((f times 1)_\# co P_n^X)(sigma) &= (f times 1)_\# (P_n^X (sigma)) \ &=
  (f times 1)_\# ((sigma times 1)_\# (beta_(n+1))) \ &= (f times 1) co
  ((sigma times 1) co beta_(n+1)) \ &= ((f times 1) co (sigma times 1))
  co beta_(n+1) \ &= ((f co sigma) times 1) co beta_(n+1) \ &= ((f co sigma)
  times 1)_\# (beta_(n+1)) \ &= P_n^Y (f co sigma) \ &= P_n^Y (f_\# (sigma)) =
  (P_n^Y co f_\#)(sigma) $

  *MEP*
]

#prob[
  _If $X$ is a deformation retract of $Y$, then $H_n (X) tilde.equiv H_n (Y)$
  for all $n >= 0$._

  == Proof:

  Suppose that $X$ is a deformation retract of $Y$. Then there exists a
  retraction $r: Y -> X$, that is, a continuous map with $r co i = 1_X$, where
  $i: X -> Y$ is the inclusion. Moreover, since it is a deformation retraction,
  we have $i co r tilde.eq 1_Y$. Applying homology to both equations, and taking
  advantage of the homotopy axiom, we get:

  $ r_* co i_* = 1_(H_n (X)) sp i_* co r_* = 1_(H_n (Y)) $

  $therefore$ both $i_*$ and $r_*$ serve as isomorphisms between $H_n (X)$ and
  $H_n (Y)$.

  *MEP*
]

#prob[
  _Prove that the Hurewicz map $phi: pi_1 -> H_1$ is "natural". If $h: (X, x_0)
  -> (Y, y_0)$ is a map of pointed spaces, then the following diagram commutes:_

  #align(center)[#commutative-diagram(
    node((0, 0), $pi_1 (X, x_0)$),
    node((0, 1), $pi_1 (Y, y_0)$),
    node((1, 0), $H_1 (X)$),
    node((1, 1), $H_1 (Y)$),
    arr((0, 0), (0, 1), $pi_1 (h)$),
    arr((1, 0), (1, 1), $H_1 (h)$),
    arr((0, 0), (1, 0), $phi_((X, x_0))$),
    arr((0, 1), (1, 1), $phi_((Y, y_0))$),
  )]

  == Proof:

  To show commutativity is to show that $phi_((Y, y_0)) co pi_1 (h) = H_1 (h) co
  phi_((X, x_0))$. Given a path homotopy class $[gamma] in pi_1 (X, x_0)$, we
  start with the left hand size and end up at the right hand side:
  $ (phi_((Y, y_0)) co pi_1 (h))([gamma]) &= phi_((Y, y_0))(pi_1 (h) ([gamma]))
  \ &= phi_((Y, y_0))([h co gamma]) \ &= "cls" ((h co gamma) co eta) \ &=
  "cls" (h co (gamma co eta)) \ &= "cls" (h_\# (gamma co eta)) \ &= H_1 (h)
  ("cls" (gamma co eta)) \ &= H_1 (h) (phi_((X, x_0)) ([gamma])) = (H_1 (h) co
  phi_((X, x_0)))([gamma]) $

  *MEP*
]

#prob[
  _Let $X$ be a space and let $alpha, beta, gamma$ be (not necessarily closed)
  paths in $X$ such that $alpha * beta * gamma$ is defined and is a closed
  path. Prove that, in $H_1 (X)$, $ "cls" (alpha * beta * gamma) = "cls" (alpha
  + beta + gamma) = "cls" alpha + "cls" beta + "cls" gamma. $_

  == Proof:

  Note that $alpha * beta * gamma$ is a path in $X$ and thus can be identified
  with a 1-simplex in $X$, then \ $diff (alpha * beta * gamma) =
  (alpha * beta * gamma) (1) - (alpha * beta * gamma) (0) = 0$ because it is a
  closed path. Therefore \ $alpha * beta * gamma in Z_1 (X) ==> "cls" (alpha *
  beta * gamma) in H_1 (X)$.

  Now $alpha, beta$, and $gamma$ can also be identified with 1-simpleces in $X$
  and so can be added in $S_1 (X)$. Note that $ diff (alpha + beta + gamma)
  &= (alpha(1) - alpha(0)) + (beta(1) - beta(0)) + (gamma(1) - gamma(0)) \ &=
  (alpha(1) - beta(0)) + (beta(1) - gamma(0)) + (gamma(1) - alpha(0)) = 0 $
  because $alpha * beta * gamma$ is defined and a closed path. Therefore
  $alpha + beta + gamma in Z_1 (X)$ \ $==> "cls" (alpha + beta + gamma) in H_1
  (X)$.

  However, $"cls" alpha, "cls" beta,$ and $"cls" gamma$ are not
  necessarily defined, because they are not necessarily closed paths and thus
  do not necessarily correspond to cycles. The author must be asserting that in
  the case where $"cls" (alpha + beta + gamma)$ is defined, he will abuse the
  notation $"cls" alpha + "cls" beta + "cls" gamma$. Therefore, we prove the
  first equality and ignore the second.

  First, we define a singular 2-simplex $sigma: Delta^2 -> X$. We define it on
  $dot(Delta)^2$ as follows: $ sigma(1-t, t, 0) = alpha(t) sp sigma(0, 1-t, t)
  = beta(t) sp sigma(1-t, 0, t) = (alpha * beta)(t) $
  Now we extend the definition to the interior of $Delta^2$ by setting it to be
  constant on the line segments with endpoints $ a = a(t) = (1-t, t, 0) sp b =
  b(t) = ((2 - t)/2, 0, t/2) $ and $ c = c(t) = (0, 1-t, t) sp d = d(t) =
  ((1-t)/2, 0, (1+t)/2) $ Note that this is well defined and continuous.
  Furthermore, its boundary is $ diff sigma = sigma epsilon_0 - sigma epsilon_1
  + sigma epsilon_2 = beta - alpha * beta + alpha $

  Now we define another singular 2-simplex $tau: Delta^2 -> X$ similarly. We
  define it on $dot(Delta)^2$ as follows: $ tau(1-t, t, 0) = alpha * beta sp
  tau(0, 1-t, t) = gamma sp tau(1-t, 0, t) = (alpha * beta) * gamma $ Then we
  extend the definition to the interior by setting it to be constant on the line
  segments with endpoints $a = a(t), b = b(t)$ and $c = c(t), d = d(t)$. For the
  same reason, it is well defined and continuous. Its boundary is:
  $ diff tau = tau epsilon_0 - tau epsilon_1 + tau epsilon_2 = gamma - (alpha
  * beta) * gamma + alpha * beta $

  Now adding equations (10) and (12) yields:
  $ diff(sigma + tau) &= (beta - alpha * beta + alpha) + (gamma - (alpha * beta)
  * gamma + alpha * beta) \ &= (alpha + beta + gamma) - (alpha * beta) * gamma $
  Therefore $(alpha + beta + gamma)$ and $(alpha * beta) * gamma$ differ by a
  boundary.

  $therefore "cls" (alpha + beta + gamma) = "cls" (alpha * beta * gamma)$

  *MEP*
]
