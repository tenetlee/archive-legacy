# Calculus 1
prerequisites: example/example/example.md, example2/example2/example2.md

> Purpose: a copy-pasteable test document for Markdown + (Ka)TeX/LaTeX rendering.  
> Scope: real Calculus I content, but not fully comprehensive.

---

## Table of Contents
1. [Precalculus Warm-Up](#precalculus-warm-up)
2. [Limits](#limits)
3. [Continuity](#continuity)
4. [Derivatives](#derivatives)
5. [Derivative Rules](#derivative-rules)
6. [Applications of Derivatives](#applications-of-derivatives)
7. [Integrals](#integrals)
8. [Fundamental Theorem of Calculus](#fundamental-theorem-of-calculus)
9. [Techniques & Quick Reference](#techniques--quick-reference)
10. [Practice Set (with answers)](#practice-set-with-answers)

---

## Precalculus Warm-Up

### Functions and notation
A **function** maps an input to exactly one output:
\[
f: \mathbb{R} \to \mathbb{R}, \quad y = f(x)
\]

**Domain**: allowable inputs. **Range**: possible outputs.

### Common function types
- Polynomial: \(f(x)=x^3-2x+1\)
- Rational: \(f(x)=\dfrac{x^2+1}{x-3}\)
- Exponential: \(f(x)=a^x\) (often \(e^x\))
- Logarithmic: \(f(x)=\ln x\)
- Trig: \(\sin x,\cos x,\tan x\)

### Composition & inverse
Composition:
\[
(f\circ g)(x)=f(g(x))
\]
Inverse (if it exists):
\[
f(f^{-1}(x))=x
\]

---

## Limits

### Intuition
The limit \(\lim_{x\to a} f(x)\) describes the value \(f(x)\) *approaches* as \(x\) gets close to \(a\).

### Formal definition (epsilon–delta)
\[
\lim_{x\to a} f(x)=L
\]
means: for every \(\varepsilon>0\), there exists \(\delta>0\) such that
\[
0<|x-a|<\delta \implies |f(x)-L|<\varepsilon.
\]

### Basic limit laws
If \(\lim_{x\to a} f(x)=A\) and \(\lim_{x\to a} g(x)=B\), then:
\[
\lim_{x\to a} (f(x)+g(x)) = A+B
\]
\[
\lim_{x\to a} (f(x)g(x)) = AB
\]
\[
\lim_{x\to a} \frac{f(x)}{g(x)} = \frac{A}{B} \quad (\text{if } B\neq 0)
\]

### One-sided limits
\[
\lim_{x\to a^-} f(x), \quad \lim_{x\to a^+} f(x)
\]
The (two-sided) limit exists iff both one-sided limits exist and are equal.

### Indeterminate forms & factoring example
Example:
\[
\lim_{x\to 2}\frac{x^2-4}{x-2}
\]
Factor \(x^2-4=(x-2)(x+2)\), cancel:
\[
\lim_{x\to 2}\frac{(x-2)(x+2)}{x-2}=\lim_{x\to 2}(x+2)=4
\]

### Special trig limit (super important)
\[
\lim_{x\to 0}\frac{\sin x}{x}=1
\]
(with \(x\) in radians)

---

## Continuity

### Definition
\(f\) is continuous at \(a\) if:
1. \(f(a)\) is defined
2. \(\lim_{x\to a} f(x)\) exists
3. \(\lim_{x\to a} f(x)=f(a)\)

### Types of discontinuities
- Removable (a “hole”)
- Jump
- Infinite (vertical asymptote)

### Intermediate Value Theorem (IVT)
If \(f\) is continuous on \([a,b]\) and \(N\) is between \(f(a)\) and \(f(b)\), then there exists \(c\in[a,b]\) such that:
\[
f(c)=N.
\]

---

## Derivatives

### Idea
The derivative is the slope of the tangent line (instantaneous rate of change).

Average rate of change on \([a,b]\):
\[
\frac{f(b)-f(a)}{b-a}
\]

Instantaneous rate at \(a\):
\[
f'(a)=\lim_{h\to 0}\frac{f(a+h)-f(a)}{h}
\]

### Example: derivative from definition
Let \(f(x)=x^2\).
\[
f'(x)=\lim_{h\to 0}\frac{(x+h)^2-x^2}{h}
=\lim_{h\to 0}\frac{x^2+2xh+h^2-x^2}{h}
=\lim_{h\to 0}(2x+h)=2x
\]

### Notation
\[
f'(x),\quad \frac{dy}{dx},\quad \frac{d}{dx}(f(x))
\]

---

## Derivative Rules

### Linearity
\[
\frac{d}{dx}[c]=0,\quad \frac{d}{dx}[x]=1
\]
\[
\frac{d}{dx}[cf(x)]=c f'(x)
\]
\[
\frac{d}{dx}[f(x)+g(x)]=f'(x)+g'(x)
\]

### Power rule
\[
\frac{d}{dx}[x^n]=n x^{n-1}
\]
Example:
\[
\frac{d}{dx}[x^{5}]=5x^4
\]

### Product rule
\[
\frac{d}{dx}[f(x)g(x)] = f'(x)g(x)+f(x)g'(x)
\]

### Quotient rule
\[
\frac{d}{dx}\left[\frac{f(x)}{g(x)}\right]
=\frac{f'(x)g(x)-f(x)g'(x)}{(g(x))^2}
\]

### Chain rule
\[
\frac{d}{dx}[f(g(x))] = f'(g(x))\cdot g'(x)
\]
Example:
\[
\frac{d}{dx}[(3x^2+1)^5]=5(3x^2+1)^4\cdot 6x=30x(3x^2+1)^4
\]

### Common derivatives
\[
\frac{d}{dx}[e^x]=e^x,\quad \frac{d}{dx}[a^x]=a^x\ln a
\]
\[
\frac{d}{dx}[\ln x]=\frac{1}{x}\quad (x>0)
\]
\[
\frac{d}{dx}[\sin x]=\cos x,\quad \frac{d}{dx}[\cos x]=-\sin x
\]
\[
\frac{d}{dx}[\tan x]=\sec^2 x
\]

---

## Applications of Derivatives

### Tangent line approximation (linearization)
Tangent line at \(x=a\):
\[
L(x)=f(a)+f'(a)(x-a)
\]
Use \(L(x)\) to approximate \(f(x)\) near \(a\).

### Critical points
A critical point occurs where:
\[
f'(x)=0 \quad \text{or} \quad f'(x)\ \text{does not exist}
\]

### Increasing/decreasing test
- If \(f'(x)>0\) on an interval, \(f\) is increasing there.
- If \(f'(x)<0\), \(f\) is decreasing there.

### Concavity and second derivative
\[
f''(x)=\frac{d}{dx}(f'(x))
\]
- If \(f''(x)>0\): concave up
- If \(f''(x)<0\): concave down

Inflection point candidate where concavity changes (often where \(f''(x)=0\) or undefined).

### Optimization (classic workflow)
1. Model quantity to optimize: \(Q(x)\)
2. Find domain (constraints)
3. Compute \(Q'(x)\), solve \(Q'(x)=0\)
4. Test endpoints + critical points

---

## Integrals

### Antiderivatives (indefinite integrals)
If \(F'(x)=f(x)\), then:
\[
\int f(x)\,dx = F(x) + C
\]
Example:
\[
\int x^3\,dx = \frac{x^4}{4}+C
\]

### Basic integral rules
\[
\int x^n\,dx = \frac{x^{n+1}}{n+1}+C\quad (n\neq -1)
\]
\[
\int \frac{1}{x}\,dx = \ln|x|+C
\]
\[
\int e^x\,dx = e^x + C
\]
\[
\int \cos x\,dx = \sin x + C,\quad \int \sin x\,dx = -\cos x + C
\]

### Definite integrals and area
\[
\int_a^b f(x)\,dx
\]
represents signed area under \(f\) from \(a\) to \(b\).

Riemann sum idea:
\[
\int_a^b f(x)\,dx=\lim_{n\to\infty}\sum_{i=1}^{n} f(x_i^*)\Delta x
\]
where \(\Delta x=\frac{b-a}{n}\).

---

## Fundamental Theorem of Calculus

### Part 1 (accumulation function derivative)
If
\[
F(x)=\int_a^x f(t)\,dt
\]
then
\[
F'(x)=f(x)
\]
(when \(f\) is continuous).

### Part 2 (evaluate definite integrals)
If \(F'(x)=f(x)\), then:
\[
\int_a^b f(x)\,dx = F(b)-F(a)
\]

Example:
\[
\int_1^3 2x\,dx = [x^2]_1^3 = 9-1=8
\]

---

## Techniques & Quick Reference

### Substitution (u-sub) — preview (often Calc I/II boundary)
If the integrand contains a function and its derivative, try:
\[
u=g(x),\quad du=g'(x)\,dx
\]
Example:
\[
\int 2x\cos(x^2)\,dx
\]
Let \(u=x^2\), \(du=2x\,dx\):
\[
\int \cos(u)\,du=\sin u + C=\sin(x^2)+C
\]

### L’Hôpital’s Rule — preview (if your course includes it)
For \(0/0\) or \(\infty/\infty\):
\[
\lim_{x\to a}\frac{f(x)}{g(x)}=\lim_{x\to a}\frac{f'(x)}{g'(x)}
\]
(if conditions hold and the new limit exists).

---

## Practice Set (with answers)

### Limits
1. \(\displaystyle \lim_{x\to 3}(2x^2-5)=\)  
2. \(\displaystyle \lim_{x\to 1}\frac{x^2-1}{x-1}=\)  
3. \(\displaystyle \lim_{x\to 0}\frac{\sin(5x)}{x}=\)

**Answers**
1. \(2(3^2)-5=18-5=13\)  
2. Factor: \(\frac{(x-1)(x+1)}{x-1}\to 2\)  
3. \(\frac{\sin(5x)}{x}=5\cdot\frac{\sin(5x)}{5x}\to 5\)

### Derivatives
4. \(f(x)=x^4-3x+7\Rightarrow f'(x)=\)  
5. \(g(x)=\frac{x^2+1}{x}\Rightarrow g'(x)=\)  
6. \(h(x)=\ln(3x)\Rightarrow h'(x)=\)

**Answers**
4. \(4x^3-3\)  
5. Rewrite \(g(x)=x+\frac{1}{x}\Rightarrow g'(x)=1-\frac{1}{x^2}\)  
6. \(h'(x)=\frac{1}{3x}\cdot 3=\frac{1}{x}\)

### Integrals
7. \(\displaystyle \int (6x^2-4)\,dx=\)  
8. \(\displaystyle \int_0^2 (x+1)\,dx=\)  
9. \(\displaystyle \int \frac{1}{x}\,dx=\)

**Answers**
7. \(2x^3-4x+C\)  
8. \(\left[\frac{x^2}{2}+x\right]_0^2= \left(2+2\right)-0=4\)  
9. \(\ln|x|+C\)

---

## A couple KaTeX/LaTeX stress tests

Inline math: \(e^{i\pi}+1=0\)

Display math with aligned equations:
\[
\begin{aligned}
\frac{d}{dx}\left(\sin x\right) &= \cos x \\
\frac{d}{dx}\left(\cos x\right) &= -\sin x \\
\int_0^\pi \sin x\,dx &= [-\cos x]_0^\pi = 2
\end{aligned}
\]

Matrix (may depend on your renderer):
\[
A=\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}
\]

Piecewise:
\[
f(x)=
\begin{cases}
x^2, & x\ge 0 \\
-x, & x<0
\end{cases}
\]

---

*End of mini-course.*
