#import "template.typ": *
#let title = "Tarea 2"
#let author = "Sergio Rodríguez"
#let course_id = "MATE 6551"
#let instructor = "Iván Cardona"
#let semester = "C41"
#let due_time = "November 29, 2025"
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
#let ht = $tilde.eq$
#let hm = $tilde.equiv$

#prob[
  _If $f:X -> Y$ is nullhomotopic and if $g:Y -> Z$ is continuous, then
  $g co f$ is nullhomotopic._

  == Proof:

  Suppose that $f:X->Y$ is nullhomotopic and $g:Y->Z$ is continuous. Then there
  exists a homotopy $f ht k$ for some constant function $k:X->Y$. Let
  $F:X times I -> Y$ be such a homotopy. Then define $H:X times I -> Z$ by
  $H(x, t) = g(F(x, t))$. Note that $H$ is a composition of continuous
  functions and is, therefore, continuous. Moreover, $H(x, 0) = g(F(x, 0)) =
  g(f(x)) = (g co f)(x)$, and $H(x, 1) = g(F(x, 1)) = g(k(x)) = (g co k)(x)$.
  But $k$ is constant, so $g co k$ must be constant as well.

  $therefore g co f$ is nullhomotopic.

  *MEP*
]

#prob[
  _Prove that $X |-> C X$ defines a functor *Top* $->$ *Top*._

  == Proof:

  The cone over a space $X$ is $C X = (X times I) / (X times {1})$. This defines
  the behavior of $C$ on objects, we will define its behavior on morphisms.

  Let $f:X->Y$ be a continuous map, then define $C f: C X -> C Y$ by
  $C f [(x, t)] = [(f(x), t)]$. To show that this map is well-defined, suppose
  that we have $[(x, t)] = [(x', t')]$ in $C X$, then $t = t'$ by construction
  of $C X$. If $t = t' = 1$, then: $ C f [(x, t)] = [(f(x), t)] = [(f(x), 1)] =
  [(f(x'), 1)] = [(f(x'), t')] = C f [(x', t')] $ If not, then $x = x'$, again
  by construction of $C X$. Thus, $ C f [(x, t)] = [(f(x), t)] = [(f(x'), t')] =
  C f [(x', t')] $ Therefore, $C f$ is well-defined.

  Let $pi:Y times I -> C Y$ denote the quotient application, and
  $c:C X -> X times I$ be a continuous choice function picking out a
  representative for every class. Then $C f = pi co (f times 1_I) co c$,
  a composition of continuous functions. Therefore $C f$ is continuous.

  We now show that $C$ preserves compositions. Let $g: Y -> Z$ be
  a continuous map. Then: $ C(g co f)[(x, t)] &= [((g co f)(x), t)] =
  [(g(f(x)), t)] \ &= C g [(f(x), t)] = C g (C f [(x, t)]) = (C g co C f)
  [(x, t)] $

  Furthermore, it preserves identities:
  $ C 1_X [(x, t)] = [(1_X (x), t)] = [(x, t)] = 1_(C X)[(x, t)] $

  $therefore C$ is a functor.

  *MEP*
]

#prob[
  _If $X$ and $Y$ are path connected, then $X times Y$ is path connected._

  == Proof:

  Suppose that $X$ and $Y$ are path connected, and take $(x, y), (x', y') in
  X times Y$. Then $x, x' in X$ and $y, y' in Y$, but $X$ and $Y$ path connected
  $==> exists f: I -> X, g: I -> Y$ paths from $x$ to $x'$ and from $y$ to $y'$
  respectively. Now define $phi: I -> X times Y$ to be $phi = f times g$, that
  is, $phi(t) = (f(t), g(t))$. This map is clearly continuous, and satisfies:
  $ phi(0) = (f(0), g(0)) = (x, y) " and " phi(1) = (f(1), g(1)) = (x', y') $
  Thus $phi$ is a path from $(x, y)$ to $(x', y')$.

  $therefore X times Y$ is path connected.

  *MEP*
]

#prob[
  _If $f: X->Y$ is continuous and $X$ is path connected, then $f(X)$ is path
  connected._

  == Proof:

  Suppose that $f: X -> Y$ is continuous and that $X$ is path connected. Take
  $f(x), f(x') in f(X)$. Then $x, x' in X$, but $X$ path connected $==> exists
  g: I -> X$ a path from $x$ to $x'$ in $X$. Defining \ $phi: I -> f(X)$ as the
  composite $phi = tilde(f) co g$, where $tilde(f): X -> f(X)$ denotes the
  co-restriction of $f$ to its image, yields a path from $f(x)$ to $f(x')$.
  Indeed, $phi$ is clearly continuous, and: $ phi(0) = tilde(f)(g(0)) =
  tilde(f)(x) = f(x) sp phi(1) = tilde(f)(g(1)) = tilde(f)(x') = f(x') $

  $therefore f(X)$ is path connected.

  *MEP*
]

#prob[
  _The path components of a space $X$ are maximal path connected subspaces;
  moreover, every path connected subset of $X$ is contained in a unique path
  component of $X$._

  == Proof:

  We recall that, by definition, a path component of a space $X$ is an
  equivalence class of points of $X$ under the equivalence relation given by
  $x ~ y <==>$ there exists a path from $x$ to $y$.

  Let $X$ be a topological space and $[x] sub X$ a path component. Suppose that
  $Y sub X$ is a path connected subspace of $X$ containing $[x]$, and take
  $y in Y$. Since $[x] sub Y$, we know that there must be a path from $x$ to
  $y$, but that implies that $x ~ y$ and thus $y in [x]$. Therefore, $Y = [x]$.

  $therefore [x]$ is maximal with respect to path connected subspaces of $X$.

  Let $Z sub X$ be a path connected subspace of $X$, and take $z_0 in Z$. Path
  connectedness implies that, for every $z in Z$, there exists a path from $z$
  to $z_0$. That is, $ z ~ z_0 space forall z in Z ==> z in [z_0] space forall z
  in Z ==> Z sub [z_0] $ Therefore, $Z$ is contained in a path component. For
  uniqueness, suppose that $[z_0], [z_1]$ are path components with
  $Z inter [z_0] != nothing$ and $Z inter [z_1] != nothing$. Then $exists space
  p_0 in Z inter [z_0]$, and $p_1 in Z inter [z_1]$. But $Z$ is path connected,
  so there must be some path from $p_0$ to $p_1$. That is, $p_0 ~ p_1$, but
  we had $p_0 in [z_0]$ and $p_1 in [z_1]$. Then by transitivity, $z_0 ~ p_0
  ~ p_1 ~ z_1 ==> [z_0] = [z_1]$.

  $therefore Z$ is contained in a unique path component of $X$.

  *MEP*
]
