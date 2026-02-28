// Calculus I Mini-Course (Typst)
// Copy-paste into a .typ file and compile.

#set page(width: 8.5in, height: 11in, margin: (top: 0.9in, bottom: 0.9in, left: 0.9in, right: 0.9in))
#set text(font: "Libertinus Serif", size: 11pt, leading: 1.25em)
#set heading(numbering: "1.", outlined: true)
#set link(underline: true)

= Calculus I Mini-Course (Typst)

#italic[Purpose:] A copy-pasteable test document for Typst math rendering.  
#italic[Scope:] Real Calculus I content, but not fully comprehensive.

== Table of Contents
#outline()

== Precalculus Warm-Up

=== Functions and notation
A *function* maps an input to exactly one output:

$ f: RR -> RR, \quad y = f(x) $

*Domain:* allowable inputs. *Range:* possible outputs.

=== Common function types
- Polynomial: $f(x)=x^3 - 2x + 1$
- Rational: $f(x)= (x^2 + 1) / (x - 3)$
- Exponential: $f(x)=a^x$ (often $e^x$)
- Logarithmic: $f(x)=ln x$
- Trig: $sin x, cos x, tan x$

=== Composition & inverse
Composition:
$ (f \circ g)(x) = f(g(x)) $

Inverse (if it exists):
$ f(f^{-1}(x)) = x $

== Limits

=== Intuition
The limit $lim_(x -> a) f(x)$ describes the value $f(x)$ *approaches* as $x$ gets close to $a$.

=== Formal definition (epsilon–delta)
$ lim_(x -> a) f(x) = L $
means: for every $varepsilon > 0$, there exists $delta > 0$ such that
$ 0 < |x - a| < delta => |f(x) - L| < varepsilon. $

=== Basic limit laws
If $lim_(x -> a) f(x)=A$ and $lim_(x -> a) g(x)=B$, then:

$ lim_(x -> a) (f(x) + g(x)) = A + B $

$ lim_(x -> a) (f(x) g(x)) = A B $

$ lim_(x -> a) (f(x) / g(x)) = A / B \quad (B != 0) $

=== One-sided limits
$ lim_(x -> a^-) f(x), \quad lim_(x -> a^+) f(x) $

The two-sided limit exists iff both one-sided limits exist and are equal.

=== Indeterminate forms & factoring example
Example:
$ lim_(x -> 2) (x^2 - 4) / (x - 2) $

Factor $x^2 - 4 = (x - 2)(x + 2)$, cancel:

$ lim_(x -> 2) ((x - 2)(x + 2)) / (x - 2) = lim_(x -> 2) (x + 2) = 4 $

=== Special trig limit (super important)
$ lim_(x -> 0) sin x / x = 1 $
(with $x$ in radians)

== Continuity

=== Definition
$f$ is continuous at $a$ if:
+ $f(a)$ is defined
+ $lim_(x -> a) f(x)$ exists
+ $lim_(x -> a) f(x) = f(a)$

=== Types of discontinuities
- Removable (a “hole”)
- Jump
- Infinite (vertical asymptote)

=== Intermediate Value Theorem (IVT)
If $f$ is continuous on $[a,b]$ and $N$ is between $f(a)$ and $f(b)$, then there exists $c in [a,b]$ such that:

$ f(c) = N. $

== Derivatives

=== Idea
The derivative is the slope of the tangent line (instantaneous rate of change).

Average rate of change on $[a,b]$:
$ (f(b) - f(a)) / (b - a) $

Instantaneous rate at $a$:
$ f'(a) = lim_(h -> 0) (f(a + h) - f(a)) / h $

=== Example: derivative from definition
Let $f(x) = x^2$.

$
f'(x)
= lim_(h -> 0) ((x + h)^2 - x^2) / h
= lim_(h -> 0) (x^2 + 2xh + h^2 - x^2) / h
= lim_(h -> 0) (2x + h)
= 2x
$

=== Notation
$ f'(x), \quad dy/dx, \quad d/dx (f(x)) $

== Derivative Rules

=== Linearity
$ d/dx [c] = 0, \quad d/dx [x] = 1 $

$ d/dx [c f(x)] = c f'(x) $

$ d/dx [f(x) + g(x)] = f'(x) + g'(x) $

=== Power rule
$ d/dx [x^n] = n x^(n - 1) $

Example:
$ d/dx [x^5] = 5x^4 $

=== Product rule
$ d/dx [f(x) g(x)] = f'(x) g(x) + f(x) g'(x) $

=== Quotient rule
$ d/dx [f(x)/g(x)]
= (f'(x) g(x) - f(x) g'(x)) / (g(x))^2 $

=== Chain rule
$ d/dx [f(g(x))] = f'(g(x)) * g'(x) $

Example:
$
d/dx [(3x^2 + 1)^5]
= 5(3x^2 + 1)^4 * 6x
= 30x (3x^2 + 1)^4
$

=== Common derivatives
$ d/dx [e^x] = e^x, \quad d/dx [a^x] = a^x ln a $

$ d/dx [ln x] = 1/x \quad (x > 0) $

$ d/dx [sin x] = cos x, \quad d/dx [cos x] = -sin x $

$ d/dx [tan x] = sec^2 x $

== Applications of Derivatives

=== Tangent line approximation (linearization)
Tangent line at $x=a$:

$ L(x) = f(a) + f'(a)(x - a) $

Use $L(x)$ to approximate $f(x)$ near $a$.

=== Critical points
A critical point occurs where:
$ f'(x) = 0 \quad or \quad f'(x) \text{ does not exist} $

=== Increasing/decreasing test
- If $f'(x) > 0$ on an interval, $f$ is increasing there.
- If $f'(x) < 0$, $f$ is decreasing there.

=== Concavity and second derivative
$ f''(x) = d/dx (f'(x)) $

- If $f''(x) > 0$: concave up
- If $f''(x) < 0$: concave down

Inflection point candidate where concavity changes (often where $f''(x)=0$ or undefined).

=== Optimization (classic workflow)
1. Model quantity to optimize: $Q(x)$
2. Find domain (constraints)
3. Compute $Q'(x)$, solve $Q'(x)=0$
4. Test endpoints + critical points

== Integrals

=== Antiderivatives (indefinite integrals)
If $F'(x)=f(x)$, then:
$ integral f(x) dx = F(x) + C $

Example:
$ integral x^3 dx = x^4/4 + C $

=== Basic integral rules
$ integral x^n dx = x^(n + 1)/(n + 1) + C \quad (n != -1) $

$ integral (1/x) dx = ln |x| + C $

$ integral e^x dx = e^x + C $

$ integral cos x dx = sin x + C, \quad integral sin x dx = -cos x + C $

=== Definite integrals and area
$ integral_a^b f(x) dx $ represents signed area under $f$ from $a$ to $b$.

Riemann sum idea:
$ integral_a^b f(x) dx = lim_(n -> oo) sum_(i=1)^n f(x_i^*) Delta x $
where $Delta x = (b - a)/n$.

== Fundamental Theorem of Calculus

=== Part 1 (accumulation function derivative)
If
$ F(x) = integral_a^x f(t) dt $
then
$ F'(x) = f(x) $
(when $f$ is continuous).

=== Part 2 (evaluate definite integrals)
If $F'(x)=f(x)$, then:
$ integral_a^b f(x) dx = F(b) - F(a) $

Example:
$ integral_1^3 2x dx = [x^2]_1^3 = 9 - 1 = 8 $

== Techniques & Quick Reference

=== Substitution (u-sub) — preview
If the integrand contains a function and its derivative, try:
$ u = g(x), \quad du = g'(x) dx $

Example:
$ integral 2x cos(x^2) dx $

Let $u = x^2$, $du = 2x dx$:
$ integral cos(u) du = sin u + C = sin(x^2) + C $

=== L’Hôpital’s Rule — preview
For $0/0$ or $oo/oo$:
$ lim_(x -> a) f(x)/g(x) = lim_(x -> a) f'(x)/g'(x) $
(if conditions hold and the new limit exists).

== Practice Set (with answers)

=== Limits
1. $ lim_(x -> 3) (2x^2 - 5) = ? $
2. $ lim_(x -> 1) (x^2 - 1)/(x - 1) = ? $
3. $ lim_(x -> 0) sin(5x)/x = ? $

*Answers*
1. $2(3^2) - 5 = 13$
2. Factor: $(x^2 - 1) = (x - 1)(x + 1)$ so limit is $2$.
3. $sin(5x)/x = 5 * (sin(5x)/(5x)) -> 5$.

=== Derivatives
4. $f(x) = x^4 - 3x + 7$ so $f'(x)=?$
5. $g(x) = (x^2 + 1)/x$ so $g'(x)=?$
6. $h(x) = ln(3x)$ so $h'(x)=?$

*Answers*
4. $4x^3 - 3$
5. Rewrite: $g(x)=x + 1/x$ so $g'(x)=1 - 1/x^2$
6. $h'(x) = (1/(3x)) * 3 = 1/x$

=== Integrals
7. $ integral (6x^2 - 4) dx = ? $
8. $ integral_0^2 (x + 1) dx = ? $
9. $ integral (1/x) dx = ? $

*Answers*
7. $2x^3 - 4x + C$
8. $ [x^2/2 + x]_0^2 = 4 $
9. $ ln |x| + C $

== Stress Tests

Inline: $ e^(i pi) + 1 = 0 $

Aligned equations:
$
d/dx (sin x) &= cos x \\
d/dx (cos x) &= -sin x \\
integral_0^pi sin x dx &= [-cos x]_0^pi = 2
$

Matrix (renderer-dependent):
$
A = mat(
  1, 2;
  3, 4
)
$

Piecewise:
$
f(x) =
cases(
  x^2, x >= 0;
  -x, x < 0
)
$

#italic[End of mini-course.]
