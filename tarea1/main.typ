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

  == Proof:

  Let $phi:X->D^n$ be a homeomorphism. Suppose, for a contradiction, that there
  exists a continuous $f:X->X$ with no fixed point. Then for any $x in X$,
  $f(x) != x ==> phi(x) != phi(f(x))$ by the injectivity of $phi$. Then the
  points $phi(x), phi(f(x)) in D^n$ define a unique ray $cal(l)_x$ starting at
  $phi(f(x))$ and passing through $phi(x)$.

  Define $psi:D^n->S^(n-1)$ by $psi(x) = (cal(l)_(phi^(-1)(x)) without
  {phi(f(x))}) inter S^(n-1)$. Note that this is well defined as \
  $cal(l)_(phi^(-1)(x)) without {phi(f(x))}$ is guaranteed to intersect
  $S^(n-1)$ exactly once for all $x in X$. An analytic geometry argument
  mentioned in class yields the continuity of $psi$. Finally, note that
  $x in S^(n-1) ==> psi(x) = x$, because the intersection of
  $cal(l)_(phi^(-1)(x)) without {phi(f(x))}$ with $S^(n-1)$ coincides precisely
  with $phi(x)$. Therefore, $psi$ is a retraction, thus making $S^(n-1)$ a
  retract of $D^n$, which contradicts Lemma 0.2. $contradiction$

  *MEP*
]

#prob[
  _Let $f in Hom(A, B)$ be a morphism in a category $case$. If $f$ has a left
  inverse $g$ and a right inverse $h$, then $g = h$._

  == Proof:

  By hypothesis, $g compose f = 1_A$ and $f compose h = 1_B$. Then:
  $ g = g compose 1_B = g compose (f compose h) = (g compose f) compose h =
  1_A compose h = h $

  *MEP*
]

#prob[
  _Let $G$ be a group and let $case$ be the one-object category it defines:
  $obj case = {*}, Hom(*, *) = G$, and composition is the group operation. If
  $H$ is a normal subgroup of $G$, define $x ~ y$ to mean $x y^(-1) in H$.
  Show that $~$ is a congruence on $case$ and that $[*, *] = G"/"H$ in the
  corresponding quotient category._

  == Proof:

  First, we prove that $~$ is an equivalence relation:

  Let $x, y, z in G$, then:

  1. (Reflexivity):

  Because $H$ is a subgroup, it contains the identity element:
  $x x^(-1) = e in H ==> x ~ x$.

  2. (Symmetry):

  Suppose that $x ~ y$. Then $x y^(-1) in H$. But $H$ is a subgroup of $G$, so
  it follows that: \ $(x y^(-1))^(-1) = (y^(-1))^(-1)x^(-1) = y x^(-1) in H
  ==> y ~ x$.

  3. (Transitivity):

  Suppose that $x ~ y$ and $y ~ z$. Then $x y^(-1), y z^(-1) in H$. But, because
  $H$ is a subgroup: \ $x y^(-1) y z^(-1) = x z^(-1) in H ==> x ~ z$.

  To conclude that $~$ forms a congruence on $case$, it suffices to show that,
  for all $x, x', y, y' in G$, we have $x ~ x', y ~ y' ==> x y ~ x' y'$. Note
  that, in general, the definition of a congruence in a category involves
  slightly different conditions, but the fact that $case$ has a single hom-set
  allows us to reduce them to the condition shown above.

  Suppose that $x ~ x'$ and $y ~ y'$. Then $x (x')^(-1), y (y')^(-1) in H$.
  Since $H$ is normal in $G$, we know that $x (y (y')^(-1)) x^(-1) in H$, but
  $H$ is a subgroup, so $h := (x (y (y')^(-1)) x^(-1))(x (x')^(-1)) in H$. But:
  $ h &= (x (y (y')^(-1)) x^(-1))(x (x')^(-1)) \
  &= x (y (y')^(-1)) (x^(-1)x) (x')^(-1) \
  &= x (y (y')^(-1)) (x')^(-1) \
  &= (x y) ((y')^(-1) (x')^(-1)) \
  &= (x y) (x' y')^(-1) $

  $therefore x y ~ x' y'$, which shows that $~$ is a congruence in $case$.

  By definition, $[*, *] = {[f] | f in Hom_case (*, *)}$, where $[f]$ is the
  equivalence class of \ $f in Hom_case (*, *) = G$ under $~$. This coincides
  exactly with the set $G"/"H$. Furthermore, composition in a quotient category
  is defined by $[g] compose [f] = [g compose f]$, which, in our case,
  translates to: $[f][g] = [f g]$. This coincides with the definition of the
  operation in a quotient group, which is well defined due to the normality of
  $H$.

  *MEP*
]

#prob[
  _Let $x_0, x_1 in X$ and let $f_i:X->X$ for $i in {0, 1}$ denote the constant
  map at $x_i$. Prove that $f_0 tilde.eq f_1$ if and only if there is a
  continuous $F:I->X$ with $F(0)=x_0$ and $F(1)=x_1$._

  == Proof:

  Suppose that $H:f_0 tilde.eq f_1$. Then define $F:I->X$ by $F(t) = H(x_0, t)$.
  Note that $F$ is the composition of continuous functions, and is thus
  continuous, and also note that: \ $F(0) = H(x_0, 0) = f_0(x_0) = x_0$ and
  $F(1) = H(x_0, 1) = f_1(x_0) = x_1$.

  Suppose now that there exists a continuous $F:I->X$ with $F(0)=x_0$ and
  $F(1)=x_1$. Then define $H:X times I -> X$ by $H(x, t) = F(t)$. Once again,
  note that $H$ is the composition of continuous functions, and is thus
  continuous, and that for all $x in X$: \ $H(x, 0) = F(0) = x_0 = f_0(x)$ and
  $H(x, 1) = F(1) = x_1 = f_1(x)$.

  *MEP*
]

#prob[
  _(i) Give an example of a continuous image of a contractible space that is
  not contractible._

  _(ii) Show that a retract of a contractible space is contractible._

  == Example (i):

  Define $f:[0, 2 pi) -> S^1$ by $f(x) = (cos(x), sin(x))$. We know that $sin$
  and $cos$ are continuous by analysis, then $f$ is continuous. Also, since
  $S^1$ is the _unit_ circle, we have that its circumference is $2 pi$, then by
  the definition of $sin$ and $cos$, $f$ is surjective.

  Now, note that $[0, 2 pi)$ is contractible via $H(x, t) = t x$, but
  $f([0, 2 pi)) = S^1$ is not contractible, because $pi_1(S^1, (1, 0))=ZZ$,
  which is non-trivial.

  == Proof (ii):

  Let $X$ be a contractible space with contraction $H:1_X tilde.eq c_x_0$ for
  some fixed $x_0 in X$ (where $c_x_0$ is the constant function at $x_0$), and
  let $A sub X$ be a retract of $X$ with retraction $r:X->A$. Then define
  $G:A times I -> A$ by $G(a, t) = r(H(a, t))$. Because $G$ is the composition
  of continuous functions, $G$ is itself continuous, and the following hold:
  $ G(a, 0) = r(H(a, 0)) = r(1_X (a)) = r(a) = a = 1_A (a) $ and
  $ G(a, 1) = r(H(a, 1)) = r(c_x_0 (a)) = r(x_0) = c_r(x_0) (a) $ which is a
  constant function.

  $therefore G:1_A tilde.eq c_r(x_0)$.

  *MEP*
]
