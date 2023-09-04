---
title: Quantenmechanik 2023
author:
  - Dr. Rochus Klesse
  - Oliver Filla
date: 23.08.2023
keywords:
  - Physik
  - Quantenmechanik
---
# Disclaimer
Dies ist eine _inoffizielle_ Mitschrift aus der Vorlesung zur Quantenmechanik von Dr. Rochus Klesse. Ich habe Dr. Klesses Erlaubnis, dies zu publizieren. Dies bedeutet jedoch nicht, dass irgendjemand Korrekturgelesen hätte. Fehler, Ungenauigkeiten etc. sind demnach zu erwarten und mir zuzuschreiben.

Der in dieser Vorlesung gewählte Zugang ist ahistorisch über Postulate.

# 1. Einleitung
Die klassische Physik ist schon lange bekannt, zu Teilen schon sehr lange. Hierzu zählen die klassische Mechanik, die Elektrodynamik sowie die spezielle und allgemeine Relativitätstheorie. Diese Bereiche gelten zwar im makroskopischen Bereich, allerdings nicht im mikroskopischen Bereich! Hierfür benötigt man die Quantenphysik.

Beispielsweise besagt die klassische Vorstellung eines Atoms, ein Elektron kreise auf einer Keplerbahn um den Atomkern. Auf diese Weise wäre es jedoch dauerhaft beschleunigt, daher müsste es elektromagnische Strahlung abstrahlen. Dies würde die Energie des Elektrons reduzieren, was die Kreisbahn instabil machen müsste - das Elektron fiele auf einer spiralförmigen Bahn in den Atomkern. Daher reicht die klassische Theorie nicht aus, um Atome zu erklären.

Andere Phänomene, die die klassische Physik nicht erklären kann, sind Spektrallinien, manche Eigenschaften von Festkörpern[^1] oder die Schwarzkörperstrahlung.

Aus diesen Gründen entstand um 1925 die Quantenphysik.

[^1]: z.B: elektrische Leitfähigkeit und Wärmekapazität

Die Quantenphysik ist extrem gut erforscht und scheint allgemeingültig zu sein. Sie basiert auf $3$ Postulaten und hat drei Darstellungsformen.[^2]

Wesentliche Merkmale der Quantenmechanik sind das Superpositionsprinzip und der Indeterminismus. Beobachtbare Eigenschaften sind Obervablen, die durch (meist hermitesche) Operatoren beschrieben werden.

Die Dynamik wird durch die Schrödingergleichung beschrieben, wesentliche Werkzeuge sind dabei Kommutatoren. Erhaltungsgrößen haben einen konstanten Erwartungswert. Eigenzustände sind immer stabil, durch Superposition kommt es dynamischen Zuständen.

Es wird oft zwischen Ortsdarstellung und Impulsdarstellung gewechselt. Meist kann lineare Algebra verwendet werden, manchmal ist allerdings ein notwendig.

Bei zusammengesetzten Systemen können Effekte wie Verschränkung und Dekohärenz auftreten.

Die Quantenmechanik ist nicht-lokal, vermutlich gibt es Fernwirkung. Früher glaubte man, es gebe "versteckte Variablen". Durch Experimente, die die Bell'schen Ungleichungen verletzen, kann dies jedoch praktisch ausgeschlossen werden.

[^2]: Schrödinger-Bild, Heisenberg-Bild und Dirac-Bild

# 2. Prinzipien
## Operatoren
Ein Operator $\widehat{A}$ auf dem Hilbertraum $\mathcal H$ ist eine lineare Abbildung, die einen Zustand $\varphi$ auf einen Zustand $\widehat{A}\varphi$ abbildet.

Ein Operator $\hat O$ ist vollständig beschrieben durch die Bilder der Basisvektoren, die er erzeugt. Daher kann er als Matrix dargestellt werden. Er kann einer Observablen $O$ zugeordnet werden. Es gilt $\braket{O}_\Psi = \braket{\Psi|\widehat{O}\Psi}$.

Die meisten quantenmechanischen Operatoren sind hermitesch.

### hermitesche Operatoren
Ein Operator $\widehat{A}$ ist hermitesch bzw. selbstadjungiert, wenn $\widehat{A}^\dagger=\widehat{A}$. Daraus folgt, dass die Adjungierte $\widehat{A}^\dagger = \widehat{A}^{-1}$ auch die Inverse ist. Üblicherweise werden damit Observablen beschrieben.

Quantenmechanisch wird die Adjunktion eines Operators durch $\braket{\varphi|\widehat A\psi} = \braket{\widehat A^\dagger\varphi|\psi}$ definiert. Ein hermitescher Operator besitzt eine orthonormale Basis $\{\varphi_i\}$. Die Eigenwerte $a_i\in\mathbb R$ eines hermiteschen Operators sind reell $(\widehat{A}\ket{\varphi_i} = a_i \ket{\varphi_i})$. Dadurch kann die Matrix $A$ in der Spektraldarstellung diagonalisiert werden. Der Erwartungswert $\braket{\widehat{A}}_\Psi$ ist das Skalarprodukt $\braket{\Psi|A|\Psi}$.

#### Adjunktion
Die Adjunktion $A^\dagger$ ist die Verkettung von komplexer Konjugation $A^*$ und Transponation $A^\mathrm T$. Es gilt $A^\dagger = (A^*)^\mathrm T$.

In der Quantenmechanik sind Operatoren normalerweise hermitesch.

#### Spektraldarstellung
Hermitesche Operatoren können mit dem Projektionsoperator $\hat P_\chi$ und ihren reellwertigen Eigenwerten $a_i\in\mathbb R$ diagonalisiert dargestellt werden. $\sum_i \ket{\varphi_i}\bra{\varphi_i}$ ist die Einheitsmatrix in der Dirac-Notation. Daher bilden $\{\varphi_i\}$ eine orthonormale Eigenbasis.

$$
\begin{aligned}
  \widehat{A} = &\sum_i a_i \hat P_{\varphi_i} \\
  = &\sum_i a_i \ket{\varphi_i}\bra{\varphi_i} \\
  = &\begin{pmatrix}
  a_1 && && 0 \\
  && \ddots && \\
  0 && && a_n \\
  \end{pmatrix}
\end{aligned}
$$

#### Erwartungswert
Der Erwartungswert $\braket{\hat A}_\Psi$ eines hermiteschen Operators $\hat A$ ist für ein System im Zustand $\Psi$ durch das Skalarprodukt $\braket{\Psi|\hat A|\Psi}$ definiert. Durch die Spektraldarstellung kann die Matrix $A$ als reellwertige Diagonalmatrix dargestellt werden, daher spielt es keine Rolle, ob $\hat A$ auf den Ket-Vektor oder den Bra-Vektor angewendet wird.

#### wichtige Operatoren
Folgende hermitesche Operatoren sind wichtige Operatoren.

* Hamiltonoperator $\hat H$
  * Zeitentwicklungsoperator $\hat U(t)$
* Impulsoperator $\hat p$
  * Translationsoperator $\hat T$
* Drehimpulsoperatoren $\vec{\hat J}$, $\vec{\hat L}$, $\vec{\hat S}$
  * Transformationsoperator $\hat U(\hat R_{\vec{n},\varphi})$
* Leiteroperatoren des harmonischen Oszillators
  * Erzeugeroperator $\hat a^\dagger$
  * Vernichtungsoperator $\hat a$
  * Besetzungszahloperator $\hat N$
* Ortsoperator $\hat x$
* Projektionsoperator $\hat P_\chi$
* Verschiebungsoperator $\hat D(\alpha)$

### Projektionsoperator
Der Operator $\hat P_\chi$ projiziert einen Vektor $\Psi$ auf den Vektor $\chi$. Dies ergibt einen Vektor mit Richtung und Orientierung des Vektors $\chi$. Die Länge des Vektors $\hat P_\chi\Psi$ entspricht dem "Schatten", den der Vektor $\Psi$ werfen würde. Dieser wird durch das Skalarprodukt $\braket{\chi|\Psi}$ beschrieben.

$$
  \hat P_\chi\Psi = \braket{\chi| \Psi} \chi = \ket{\chi}\bra{\chi}
$$

#### Darstellung mit Dualvektoren
Die Matrixdarstellung des Projektionsoperators $\hat P_\chi$ kann mittels des Dualraums $\mathcal H^*$ berechnet werden.

$$
\begin{aligned}
  \hat P_\chi \ket{\Psi}
  &= (\braket{\chi|\Psi})\ket{\chi} \\
  &= \ket{\chi}(\braket{\chi|\Psi}) \\
  &= (\ket{\chi}\bra{\chi})\ket{\Psi}\\
  \Rightarrow \hat P_\chi &= \ket{\chi}\bra{\chi}\\
\end{aligned}
$$

Da $\braket{\chi|\Psi}\in\mathbb C$ ein Skalar ist, kann das Kommutativgesetz angewendet werden. $\ket{\chi}\bra{\chi}$ ist eine $n\times n$-dimensionale Matrix in der Dirac-Notation.

## Kommutator
Der Kommutator von zwei Operatoren ist definiert als $[\hat A, \hat B] = \hat A\hat B - \hat B\hat A$. Falls $[\hat A, \hat B]=0$ sagt man, $\hat A$ und $\hat B$ kommutieren. Falls zwei Operatoren _nicht_ kommutieren, gibt es eine Unbestimmtheitsrelation zwischen ihnen.

Wenn die Observable $A$ eine Erhaltungsgröße und $\hat H$ der Hamiltionoperator sind, gilt $[\hat H, \hat A]=0$.

Die klassische Entsprechung des Kommutators ist die Poisson-Klammer.

## Observable
Eine beobachtbare Größe wird in der Quantenmechanik Observable genannt.

Sie hat konkrete Werte, die gemessen werden. Für Messungen einem Systemen im Zustand $\Psi$ wird der Erwartungswert der Observable $O$ als $\braket{O}_\Psi$ geschrieben. Einer Observable $O$ kann ein zugehöriger Operator $\widehat{O}$ zugeordnet werden. Für Operatoren gilt $\braket{O}_\Psi = \braket{\Psi|\widehat{O}\Psi}$. Falls dieser Erwartungswert für alle Lösungen der Schrödingergleichung konstant ist, ist die Observable eine Erhaltungsgröße.

Im Fall des Stern-Gerlach-Experimentes ist die Observable die $z$-Komponente $\mu_z$ des magnetischen Moments.

## Dirac-Notation
Zustände im Hilbertraum $\varphi\in\mathcal H$ werden als Ket $\ket{\varphi}$ dargestellt, Dualvektoren $\varphi^\dagger\in\mathcal H^*$ als Bra $\bra{\varphi}$. Auf diese Weise wird das Skalarprodukt als Braket $\braket{\varphi|\psi}$ dargestellt, Matrizen bzw. Operatoren werden als Ketbra $\ket{\varphi}\bra{\psi}$ dargestellt.

### Ket
Zustände im Hilbertraum $\varphi\in\mathcal H$ werden in der Dirac-Notation als Ket $\ket{\varphi}$ dargestellt. Oft werden nur Indizes eingetragen, so wird aus $\ket{\varphi_{z+}}=\ket{z+}$.

Ket ist linear, es gelten daher $\ket{\varphi + \psi} = \ket{\varphi} + \ket{\psi}$ und $\ket{\lambda\psi} = \lambda\ket{\psi}$.

### Bra
Zustände im Hilbertraum $\varphi^\dagger\in\mathcal H^*$ werden in der Dirac-Notation als Bra $\bra{\varphi}$ dargestellt. Oft werden nur Indizes eingetragen, so wird aus $\ket{\varphi_{z+}}=\ket{z+}$.

Bra ist linear, es gelten daher gelten $\bra{\varphi + \psi} = \bra{\varphi} + \bra{\psi}$ und $\bra{\lambda\psi} = \lambda^*\bra{\psi}$.

### Das Hermitesche Skalarprodukt
Das hermitesche Skalarprodukt ist eine lineare Abbildung aus dem Unitären Vektorraum $V$ in den skalaren Körper $K$, aus dem der Vektorraum besteht.

$$
\begin{aligned}
  \braket{\bullet,\bullet}: V \times V &\rightarrow \mathbb C\\
  \varphi, \psi &\mapsto \braket{\varphi, \psi}
\end{aligned}
$$

In der Dirac-Notation sieht dies wie folgt aus.

$$
  \braket{\Psi|\varphi}
  = \Psi^\dagger\varphi
  = (\Psi_1^*,\ldots,\Psi_n^*)
  \begin{pmatrix}\varphi_1\\\vdots\\\varphi_n\end{pmatrix}
$$

Die Vertauschung der Parameter erzeugt das komplex Konjugierte des Skalarprodukts.

$$
\begin{aligned}
  \braket{\varphi|\psi} &= \braket{\psi|\varphi}^* \\
  \Rightarrow \braket{\varphi|\lambda\psi} &= \braket{\lambda^*\varphi|\psi}
\end{aligned}
$$

Wie das reelle Skalarprodukt ist das hermitesche Skalarprodukt positiv-semidefinit, im Unterschied dazu ist es jedoch linear in einer Komponente und unter komplexer Konjugation linear in der anderen Komponente.

In der Quantenphysik ist das Skalarprodukt normalerweise linear im zweiten Element, da dann das Ket-Element in der Dirac-Notation linear ist.

#### Positiv-Semidefinitheit
Beispielsweise das (hermitsche) Skalarprodukt ist positiv semi-definit. Dies bedeutet, dass das Skalarprodukt eines Vektors mit sich selbst positiv ist oder genau dann $0$, wenn der Vektor selbst $0$ ist.

$$
\begin{aligned}
  \forall \varphi \in V\backslash \{0\}:& \braket{\varphi|\varphi} > 0 \\
  \forall \varphi \ne 0:& \braket{\varphi|\varphi} > 0 \\
  \varphi = 0 &\Leftrightarrow \braket{\varphi|\varphi} = 0
\end{aligned}
$$

#### Linearität
Sei $f(x)$ eine lineare Abbildung. Dann gilt

$$
\begin{aligned}
  1.&& f(x+y) &= f(x) + f(y) \\
  2.&& f(\lambda x) &= \lambda f(x)
\end{aligned}
$$

##### Beispiele
* _Operatoren_ im Hilbertraum
* das _hermitesche_ Skalarprodukt

## Dualraum
Der Dualraum $\mathcal H^*$ zu dem Hilbertraum $\mathcal H$ ist der Vektorraum der linearen Abbildungen (Linearformen) von $\mathcal H \rightarrow \mathbb C$.

Es gibt einen Isomorphismus, der einem Zustand $\psi\in\mathcal H$ den _Dualvektor_ $\psi^\dagger \in\mathcal H^*$ zuordnet. Es gilt $\varphi^\dagger\psi = \braket{\varphi|\psi}$. Hierbei sind $\psi$ als $n$-dimensionaler Vektor und $\varphi^\dagger$ als $1\times n$-dimensionale Matrix darstellbar.

Um einfach zwischen Hilbertraum und Dualraum zu unterscheiden, wird die Dirac-Notation verwendet.

## Pauli-Matrizen
Die Pauli-Matrizen werden unter anderem in der Quantenmechanik verwendet. Steht eine Pauli-Matrix im Exponenten der Exponentialfunktion, so gilt die Euler-Identität.

$$
\begin{aligned}
  \sigma_1 = \sigma_x =\ &
  \begin{pmatrix}
  0 & 1\\
  1 & 0
  \end{pmatrix} \\
  \sigma_2 = \sigma_y =\ &
  \begin{pmatrix}
  0 & -i\\
  i & 0
  \end{pmatrix}\\
  \sigma_3 = \sigma_z =\ &
  \begin{pmatrix}
  1 & 0\\
  0 & -1
  \end{pmatrix} \\
  \vec{\sigma} =\ &\begin{pmatrix}\sigma_1\\\sigma_2\\\sigma_3\end{pmatrix}
\end{aligned}
$$

## Exponentialfunktion
Die Exponentialfunktion ist eine Funktion, deren Ableitung mit der Funktion identisch ist.

Sie kann durch eine unendliche Reihe oder einen Grenzwert dargestellt werden. Für komplexwertige Exponentialfunktionen gilt die Euler-Identität.

### Reihendarstellung der Exponentialfunktion
Die Exponentialfunktion kann durch eine Reihe dargestellt werden.

$$
  \mathrm e^x = \sum_{n=0}^\infty\frac{x^n}{n!}
$$

### Grenzwertdarstellung der Exponentialfunktion
Die Exponentialfunktion kann durch eine Reihe dargestellt werden.

$$
  \mathrm e^x = \lim_{n\rightarrow \infty} \left(1+\frac{x}{n}\right)^n
$$

### Euler-Identität
Die Euler-Identität liefert einen Zusammenhang zwischen der komplexwertigen Exponentialfunktion und Schwingungsfunktionen. Sie kann auch mit Pauli-Matrizen $\sigma_i$ angewendet werden.

$$
\begin{aligned}
  \mathrm e^{i\varphi} &= \cos(\varphi) + i\sin(\varphi) \\
  \mathrm e^{i\pi} &= -1 \\
  \mathrm e^{i\varphi \sigma_i} &= \cos(\varphi)\mathds 1 + i\sigma_i\sin(\varphi)
\end{aligned}
$$

### Trigonometrie
$$
\begin{aligned}
  \sinh[i\alpha] &= i\sin[\alpha] \\
  \cosh[i\alpha] &= \cos[\alpha]
\end{aligned}
$$

## Betrachtungsweisen
### Schrödinger-Bild
Im Schrödinger-Bild wird die zeitliche Entwicklung der Zustände des Systems von den Zustandsvektoren getragen, die Operatoren ändern sich nicht.[^3] Die Zeitentwicklung von Zuständen wird durch die Schrödingergleichung beschrieben.

Das Schrödinger-Bild unterscheidet sich damit vom Heisenberg-Bild der Quantenmechanik, in dem die Zustände zeitlich konstant sind und die Zeitentwicklung von den Operatoren getragen wird, sowie vom Dirac-Bild, in dem sich sowohl Zustände als auch Operatoren mit der Zeit ändern.

Das Schrödinger-Bild eignet sich vor allem zur Beschreibung von Problemen, in denen der Hamiltonoperator des Systems nicht explizit von der Zeit abhängt.

[^3]: Ausnahme: Die Operatoren sind explizit zeitabhängig.

### Heisenberg-Bild
Das Heisenberg-Bild ist neben dem Schrödinger-Bild und dem Dirac-Bild eine der grundlegenden Formulierungen für den Umgang mit zeitabhängigen Problemen in der Quantenmechanik.

Im Gegensatz zum öfter verwendeten Schrödinger-Bild steckt im Heisenberg-Bild die Zeitabhängigkeit nicht in den Zuständen, sondern den Observablen. Sind sowohl Zustände als auch Operatoren zeitabhängig, wird oft das Dirac-Bild verwendet.

Anschaulich gesprochen rotieren im Schrödinger-Bild die Zustände im Zustands(vektor)raum, wohingegen sich im Heisenberg-Bild die Operationen auf dem Vektorraum unter den Zuständen hinweg rotieren.

 Mit dem Kommutator $[\hat H, \hat A]$ folgt folgende Relation für eine Observable $A$, die durch den Operator $\hat A$ repräsentiert wird. Diese ist äquivalent zur Schrödingergleichung.

$$
  \frac{\mathrm d}{\mathrm d t} \braket{A}_{\Psi(t)} =
  \left<- \frac{i}{\hbar} [\hat A, \hat H]\right>_{\Psi(t)}
$$

### Dirac-Bild / Wechselwirkungsbild
Das Wechselwirkungsbild ist in der Quantenmechanik ein Modell für den Umgang mit zeitabhängigen Problemen unter Berücksichtigung von Wechselwirkungen. Dabei sind sowohl die Zustände zeitabhängig, wie es im Schrödinger-Bild der Fall ist, zusätzlich sind auch die Operatoren zeitabhängig, wie es im Heisenberg-Bild der Fall ist.

Es wird insbesondere in der zeitabhängigen Störungstheorie verwendet.

# 3. Postulate
Die Quantenmechanik basiert auf $3$ Postulaten.

1. Zustände können als normierte Vektoren im Hilbertraum beschrieben werden.
2. Makroskopische Messungen müssen die Theorie bestätigen
3. Die Dynamik wird durch die Schrödingergleichung beschrieben.

## 1. Postulat: Der Hilbertraum
Der Zustandsraum der Quantenmechanik ist der Hilbertraum $\mathcal{H}_S$ des Systems, ein unitärer Vektorraum.

Ein quantenmechanischer Zustand ist ein Vektor $\varphi\in\mathcal H_S$ mit der Norm $||\varphi||=1$. Die Norm kann als Wahrscheinlichkeit interpretiert werden, dass sich ein Teilchen an einem Ort aufhält; an irgendeinem Ort muss es sein (Wahrscheinlichkeit $1$).

Dies ist das 1. Postulat der Quantenmechanik.

Über das Skalarprodukt kann man Winkel zwischen Zuständen definieren.

### Eigenschaften des hermiteschen Skalarprodukts
Das hermitesche Skalarprodukt ist eine lineare Abbildung aus dem Unitären Vektorraum $V$ in den skalaren Körper $K$, aus dem der Vektorraum besteht.

$$
\begin{aligned}
  \braket{\bullet,\bullet}: V \times V &\rightarrow \mathbb C\\
  \varphi, \psi &\mapsto \braket{\varphi, \psi}
\end{aligned}
$$

In der Dirac-Notation sieht dies wie folgt aus.

$$
  \braket{\Psi|\varphi}
  = \Psi^\dagger\varphi
  = (\Psi_1^*,\ldots,\Psi_n^*)
  \begin{pmatrix}\varphi_1\\\vdots\\\varphi_n\end{pmatrix}
$$

Die Vertauschung der Parameter erzeugt das komplex Konjugierte des Skalarprodukts.

$$
\begin{aligned}
  \braket{\varphi|\psi} &= \braket{\psi|\varphi}^* \\
  \Rightarrow \braket{\varphi|\lambda\psi} &= \braket{\lambda^*\varphi|\psi}
\end{aligned}
$$

Wie das reelle Skalarprodukt ist das hermitesche Skalarprodukt positiv-semidefinit, im Unterschied dazu ist es jedoch linear in einer Komponente und unter komplexer Konjugation linear in der anderen Komponente.

In der Quantenphysik ist das Skalarprodukt normalerweise linear im zweiten Element, da dann das Ket-Element in der Dirac-Notation linear ist.

### Winkel zwischen Zuständen
Über das Skalarprodukt kann man einen Winkel $\alpha$ zwischen zwei Zuständen definieren. Hierbei wird das Messpostulat angewandt.

$$
  p =
  \begin{cases}
  0 & \Leftrightarrow \varphi \bot \psi \\
  1 & \Leftrightarrow \varphi \parallel \psi \\
  \frac{1}{2} & \Leftrightarrow \alpha = 45 ^\circ
  \end{cases}
$$

Nur wenn $p\neq 0 \lor p\neq 1$ gelten, kann man das Ergebnis einer Messung $M_\varphi$ vorhersagen.
Das bedeutet, wenn $\varphi \bot \psi \lor \varphi \parallel \psi$ ist die Messung $M_\varphi$ deterministisch, ansonsten ist sie indeterministisch.

### Superposition
Superposition ist ein universell gültiges Prinzip, das besagt, dass sich ein Quantenteilchen zugleich in mehreren Zuständen befinden kann.

Ein berühmtes Beispiel ist das Gedankenexperiment von Schrödingers Katze. Heute verstehen wir, dass Superposition auch hier - in einem makroskopischen System - gilt. Trotzdem ist sie in diesem Fall praktisch nicht beobachtbar ist. Dies ist ein Problem der Dekohärenz.

Bezeichne $\mathcal H_{DMP}$ den Hilbertraum des Doppelmuldenpotentials, dann gibt es zwei Eigenzustände $\ket{\varphi_1}\in\mathcal H_{DMP}$ und $\ket{\varphi_2}\in\mathcal H_{DMP}$. Die Superposition beider Zustände wird dann als $\mathcal H \ni \ket{\Psi} = \ket{\varphi_1} + \ket{\varphi_2}$ dargestellt.

#### Teilchen im Doppelmuldenpotential
Sei ein Teilchen in einem Doppelmuldenpotential im Grundzustand. Das Potential habe zwei Minima bei $x_1$ und $x_2$, beide auf exakt gleicher Höhe $E(x_1) = E(x_2)$. Somit ist die Wahrscheinlichkeit, dass das Teilchen sich an der Stelle $x_1$ befindet, ebenso groß wie die Wahrscheinlichkeit für die Position $x_2$.

Klassisch würden wir erwarten, dass das Teilchen sich im Grundzustand _entweder_ an $x_1$ _oder_ an $x_2$ befindet.

Quantenmechanisch sagen wir dagegen, das Teilchen befindet sich in Superposition, es befindet sich zugleich an beiden Orten!

Ein anderes Beispiel ist der Spin: Beispielsweise kann ein Silberatom gleichzeitig in Zuständen _up_ und _down_ (relativ zu einer $z$-Achse) sein.

Ein einfaches Modell für ein Doppelmuldenpotential ist das Doppelkastenpotential.

## 2. Postulat: Das Messpostulat
Ein fundamentales Problem der Quantenphysik ist, dass direkte Beobachtungen nicht möglich sind.

Dieses Problem wird operationalistisch gelöst: Die Theorie muss mit makroskopischen Messungen kompatibel muss. Dies ist das 2. Postulat der Quantenmechanik.

Die Messung $M_\varphi$ misst, ob der Zustand $\varphi$ vorliegt (genannt positiv) oder nicht (genannt negativ).

$$
  M_\varphi =
  \begin{cases}
  0 \Leftrightarrow \varphi \ \mathrm{negativ} \\
  1 \Leftrightarrow \varphi \ \mathrm{positiv}
  \end{cases}
$$

Die gemessenen Werte sind reell, daher kann ein hermitescher Operator durch die Eigenwerte $\{a_i\}$ und Eigenzustände $\{\ket{\varphi_i}\}$ dargestellt werden, weiterhin gilt die Bornsche Regel. Eine ideale Messung $M_\Psi$ präperiert das System in Zustand $\Psi$.

### Messung von Zuständen
Die Messwerte $a_i$, die die Zustände $\varphi_i\in\mathcal H$ im Hilbertraum messen, sind reellwertig $a_i\in \mathbb R^n$.

Die Zustände werden durch hermitesche Operatoren beschrieben, die in der Spektraldarstellung durch die Eigenwerte $\{a_i\}$ und Eigenzustände $\{\ket{\varphi_i}\}$ dargestellt werden können. Dies ist eine Folgerung aus dem Messpostulat.

Für zwei nicht-kommutierende Observablen $\hat A$ und $\hat B$ wird $\hat A$ eine umso größere Unschärfe aufweisen, desto genauer $\hat B$ gemessen wurde.

### Born'sche Regel
Sei das System in einem Zustand $\Psi\in\mathcal H$. Dann ist Messung $M_\varphi$ mit der Wahrscheinlichkeit $p=|\braket{\varphi|\Psi}|^2$ positiv.

Dies ist ein Bestandteil des Messpostulates.

### Ideale Messung
Eine Messung nennt man *ideal*, wenn sich das System nach der Messung $M_\Psi$ im Zustand $\ket{\Psi}$ befindet. Dann spricht man von einem Kollaps der Wellenfunktion. Dies ermöglicht eine Präperation des Systems mit dem Zustand $\Psi$.

Dies folgt aus dem Messpostulat.

Für zwei nicht-kommutierende Observablen $\hat A$ und $\hat B$ wird $\hat A$ eine unendlich große Unschärfe aufweisen, wenn $\hat B$ ideal gemessen wurde.

### Indeterminismus
In der Quantenmechanik kann man das Ergebnis einer Messung i.A. nicht vorhersagen. Es gibt nur zwei Fälle in denen man das Ergebnis genau vorhersagen kann.

Dazu muss ein Zustand $\psi$ vorherrschen, nun wird der der Zustand $\varphi$ gemessen. Diese zweite Messung kann man genau dann vorhersagen, wenn $\varphi \bot \psi$ oder $\varphi \parallel \psi$ gelten, ansonsten kann man das Ergebnis nicht vorhersagen.

## 3. Postulat: Dynamik
Die zeitliche Entwicklung eines Zustands $\Psi(t)$ eines abgeschlossenen, unbeobachteten Systems genügt der Schrödingergleichung mit dem hermiteschen Operator $\hat H$, dem sogenannten Hamiltonoperator des Systems.

$$
  \dot{\Psi}(t) = -\frac{i}{\hbar} \hat H\Psi(t)
$$

## Zweizustandssysteme
### Das Bohr-Sommerfeldsche Atommodell
Das Bohr-Sommerfeldsche Atommodell ist eine Erweiterung des Bohrschen Atommodells, das klassische Mechanik annimmt, um die Bewegung der Elektronen um den Atomkern zu beschreiben. Es wird um Quantisierungsbedingungen ergänzt.

#### Drehimpuls
Durch seine Rotation um den Atomkern hat ein Elektron im Bohr-Sommerfeldschen Atommodells einen Drehimpuls $\vec{L}$. Dieser Drehimpuls ist durch die Quantenzahl $l=1,2,3,\dots$ quantisiert, es gilt $|\vec{L}| = l\hbar$.

Die Drehimpulskomponente in Richtung der $z$-Achse $L_z=m\hbar$ ist nun durch eine magnetische Quantenzahl $m=-l,-l+1,\dots,l$ zu beschreiben. Dies führt zum Zeemann-Effekt, der Aufspaltung der Energieniveaus.

#### Magneton
Da eine bewegte Ladung ein elektromagnetisches Feld beschreibt, kann man die Quantenzahlen des Bohr-Sommerfeldschen Atommodells auch nutzen, um ein sogenanntes Magneton $\vec{\mu}$ zu beschreiben. Es gilt $|\vec{\mu}| = \mu_0 l$ sowie $\mu_z = \mu_0m$. $\mu_0$ ist das Bohrsche Magneton.

#### Zeemann-Effekt
Nach dem Bohr-Sommerfeldsches Atommodell haben Elektronen durch die Rotation um den Atomkern einen gequantelten Drehimpuls $\vec{L}$. Er ist durch die Quantenzahl $l=1,2,3,\dots$ quantisiert, es gilt $|\vec{L}| = l\hbar$.
Die Drehimpulskomponente in Richtung der $z$-Achse $L_z=m\hbar$ ist nun durch eine magnetische Quantenzahl $m=-l,-l+1,\dots,l$ zu beschreiben.

Durch $L_z$ werden die Energieniveaus der Elektronen verschoben. Diese Verschiebung führt zu einer Verschiebung der Spektrallinien. Außerdem ist dadurch auch das magnetische Moment gequantelt.

Der Zeemann-Effekt wird auch Feinaufspaltung genannt.

## Stern-Gerlach-Experiment
Die Quantenmechanik erwartet diskrete magnetische Momente, die klassische Physik hätte nach dem Bohr-Modell kontinuierliche magnetische Momente erwartet. Im Stern-Gerlach-Experiment wurde gemessen, was davon zutrifft.

Hierzu wird ein Strahl von Silberatomen durch ein inhomogenes Magnetfeld geschickt. Durch ihr magnetisches Moment werden diese Atome abgelenkt, diese Ablenkung ist proportional zum magnetischen Moment in $z$-Richtung. Klassischerweise würde man eine kontinuierliche Verteilung der abgelenkten Strahlen erwarten, quantenmechanisch eine diskrete Verteilung.

Das Experiment ergab, dass es genau zwei Punkte gab, an denen Silberatome gemessen werden konnten. Dies zeigte, dass das magnetische Moment gequantelt ist.

In weiteren Messungen wurde festgestellt, dass die Zustände $\ket{z\uparrow}$ und $\ket{z\downarrow}$ senkrecht zueinander sind, selbiges gilt jeweils in $x$- und $y$-Richtung. Die Zustände der Achsen $x$, $y$ und $z$ sind unternander jedoch nicht rechtwinklig, sondern in einem Winkel von jeweils $45^\circ$.

### Orthonormalbasis
Für das Stern-Gerlach-Experiment wählt man oft folgende Orthonormalbasis.

$$
\begin{aligned}
  \varphi_{z+}
  &\ \ \land\ \
  \varphi_{z-} \\
  \varphi_{x+} = \frac{1}{\sqrt{2}} (\varphi_{z+} + \varphi_{z-})
  &\ \ \land\ \
  \varphi_{x-} = \frac{1}{\sqrt{2}} (\varphi_{z+} - \varphi_{z-})\\
  \varphi_{y+} = \frac{1}{\sqrt{2}} (\varphi_{z+} + \mathcal i\varphi_{z-})
  &\ \ \land\ \
  \varphi_{x-} = \frac{1}{\sqrt{2}} (\varphi_{z+} - \mathcal i\varphi_{z-})
\end{aligned}
$$

### Observable
Die Observable des Stern-Gerlach-Experimentes ist $\mu_z$, die $z$-Komponente des magnetischen Moments. Die gemessenen Werte sind $\pm \mu_0$.

Nach dem Messpostulat hat sie die Wahrscheinlichkeiten $p_+=|\braket{\varphi_{z+}, \Psi}|^2$ und $p_-=|\braket{\varphi_{z-}, \Psi}|^2$, wenn vorher der Zustand $\Psi$ vorherrschte. Damit hat $\mu_z$ den Erwartungswert $\braket{\mu_z}_\Psi$ für Messungen an Atomen mit dem Zustand $\Psi$. Es gilt daher $\braket{\mu_z}_{\Psi} = p_{+}\cdot\mu_0+p_{-}\cdot(-\mu_0)$. Die Operatoren $\{\hat \mu_i\}$ sind proportional zu den Paulimatrizen $\sigma_i$.

$$
\begin{aligned}
  \mu_x = \mu_0 \sigma_1 =\ & \mu_0
  \begin{pmatrix}
  0 & 1\\
  1 & 0
  \end{pmatrix} \\
  \mu_y = \mu_0 \sigma_2 =\ & \mu_0
  \begin{pmatrix}
  0 & -i\\
  i & 0
  \end{pmatrix}\\
  \mu_z = \mu_0 \sigma_3 =\ & \mu_0
  \begin{pmatrix}
  1 & 0\\
  0 & -1
  \end{pmatrix}
\end{aligned}
$$

### Rotation im Stern-Gerlach-Experiment
Sei ein Strahl Silberatome im Stern-Gerlach-Experiment auf den Zustand $\ket{z+}$ präperiert. Sei nun ein zweiter Magnet im Winkel $\varphi$ zum ersten Magneten aufgebaut. Dann ist der finale $\mathrm{up}$-Zustand $\ket{z+^\prime}=\hat U(\hat R_{2,\varphi})\ket{z+}$. Dann folgt die Wahrscheinlichkeit den Zustand $\ket{z+}$ zu messen $P_+=|\braket{z+^\prime|z+}|^2=|\cos(\frac{\varphi}{2})|^2$. Bei einer Drehung um $30^\circ$ ist $P_+(30^\circ)\approx 93\%$.

## Schrödingergleichung
Die zeitliche Entwicklung eines Zustands[^4] $\Psi(t)$ eines abgeschlossenen, unbeobachteten Systems genügt der Schrödingergleichung mit dem hermiteschen Operator $\hat H$, dem sogenannten Hamiltonoperator des Systems. Der Faktor $\hbar^{-1}$ sorgt dafür, dass die Einheit der Eigenwerte eine Energie ist.

$$
  \dot{\Psi}(t) = -\frac{i}{\hbar} \hat H\Psi(t)
$$

Die Schrödingergleichung beschreibt eine lineare Dynamik. Nicht-lineare Dynamik verstößt gegen die spezielle Relativitätstheorie.

Im Heisenberg-Bild gibt es eine analoge Gleichung für die Zeitentwicklung eines Operators die den Kommutator $- \frac{i}{\hbar} [\hat A, \hat H]$ verwendet.

[^4]: Im Schrödinger-Bild

### Hamiltonfunktion
In der klassischen Mechanik werden Zustände durch den Hamiltonian $H(\vec{x}, t)$ beschrieben, wobei $\vec{x}(t) = \left(\begin{smallmatrix}\vec{q}(t)\\\vec{p}(t)\end{smallmatrix}\right)\in\Gamma(\mathbb R^{2n})$ einen Punkt im Phasenraum $\Gamma$ beschreibt.

Dies führt zu einer Differentialgleichung 1. Ordnung. Die Entsprechung in der Quantenmechanik ist der Hamiltonoperator. Dabei ist $\{H,A\}$ die Poissonklammer von $H$ und $A$.

$$
\begin{aligned}
  \dot{\vec{x}}(t) =
  \begin{pmatrix}
  \dot{\vec{q}}(t)\\
  \dot{\vec{p}}(t)
  \end{pmatrix} &\overset{!}{=}
  \begin{pmatrix}
  \frac{\partial H(\vec{x}, t)}{\partial \vec{p}} \\
  -\frac{\partial H(\vec{x}, t)}{\partial \vec{q}} \\
  \end{pmatrix} \\
  \frac{\mathrm d}{\mathrm d t} A(\vec{x}, t) &= \{H, A\}_{\vec{x}(t)}
\end{aligned}
$$

### Poisson-Klammer
Die Poisson-Klammer ist ein bilinearer Differentialoperator in der hamiltonschen Mechanik. Die quantenmechanische Entsprechung der Poisson-Klammer ist der Kommutator.

$$
  \{A, B\} = \sum_i \frac{\partial A}{\partial p_i}\frac{\partial B}{\partial q_i}
  - \frac{\partial A}{\partial q_i}\frac{\partial B}{\partial p_i}
$$

### Herleitung der Schrödingergleichung
In der Quantenmechanik gilt die Zustandsgleichung $\dot{\Psi}(t) \overset{!}{=} \hat F\Psi(t)$, wobei $\hat F$ ein linearer Operator sein muss. Aus der Normierung der Zustände $|\Psi|^2=1$ folgt, dass $\frac{\mathrm d}{\mathrm d t}|\Psi|^2=0$. Rechnung führt zu der Identität $\frac{\mathrm d}{\mathrm d t}|\Psi|^2 = \braket{\Psi|(\hat F^\dagger+\hat F)\Psi}$, woraus folgt dass $\hat F^\dagger+\hat F=0$ gelten muss. Die übliche Wahl fällt auf $\hat F=-\frac{i}{\hbar} \hat H$, wobei $\hat H$ der Hamiltonoperator ist. Daraus folgt die Schrödingergleichung sowie die Forderung $\hat H^\dagger=\hat H$. $\hat H$ ist also ein Hermitescher Oparator.

### Lösung der Schrödingergleichung
Die Schrödingergleichung wird allgemein mithilfe des Zeitentwicklungsoperators $\hat U(t)$ gelöst.

$$
  \Psi(t) = \hat U(t)\Psi(0)
$$

# 4. Zweizustandssysteme
## Hamiltonoperator
Der Hamiltonoperator $\hat H$ ist essentiell für die Aufstellung der Schrödingergleichung und die quantenmechanische Entsprechung der klasischen Hamiltonfunktion. Die Observable des Hamiltonoperators ist die Energie des Systems.

### Spektraldarstellung
In der Spektraldarstellung kann der Hamiltonoperator $\hat H$ durch die Eigenenergien $E_i$ und die Eigenzustände $\ket{\varphi_i}$ dargestellt werden.

$$
  \hat H = \sum_{i=0}^N E_i \ket{\varphi_i}\bra{\varphi_i}
$$

### Darstellung durch den Zeitentwicklungsoperator
Der Kommutator $[\hat H, \hat H]$ ist immer $0$, daher ist die Energie immer eine Erhaltungsgröße. Mithilfe des Zeitentwicklungsoperators $\hat U(t)$ kann $\hat H$ folgendermaßen dargestellt werden. Dies ist analog zu der Darstellung des Impulsoperators mithilfe des Translationsoperators oder des Drehimpulsoperators.

$$
  \hat H = \left.i\hbar\frac{\mathrm d}{\mathrm dt}\hat U(t)\right|_{t=0}
$$

### Energie-Impuls-Relation
Es gilt folgende Relation zwischen Hamiltonoperator $\hat H$ und Impulsoperator $\hat p$.

$$
\begin{aligned}
  \hat H &= \frac{\hat p^2}{2m} \\
  \hat p &= \hbar k
\end{aligned}
$$

Hierbei ist $k$ die Wellenzahl.

### Herleitung der Schrödingergleichung
In der Quantenmechanik gilt die Zustandsgleichung $\dot{\Psi}(t) \overset{!}{=} \hat F\Psi(t)$, wobei $\hat F$ ein linearer Operator sein muss. Aus der Normierung der Zustände $|\Psi|^2=1$ folgt, dass $\frac{\mathrm d}{\mathrm d t}|\Psi|^2=0$. Rechnung führt zu der Identität $\frac{\mathrm d}{\mathrm d t}|\Psi|^2 = \braket{\Psi|(\hat F^\dagger+\hat F)\Psi}$, woraus folgt dass $\hat F^\dagger+\hat F=0$ gelten muss. Die übliche Wahl fällt auf $\hat F=-\frac{i}{\hbar} \hat H$, wobei $\hat H$ der Hamiltonoperator ist. Daraus folgt die Schrödingergleichung sowie die Forderung $\hat H^\dagger=\hat H$. $\hat H$ ist also ein Hermitescher Oparator.

## Zeitentwicklungsoperator
Da die Schrödingergleichung $\dot{\Psi}(t) = -\frac{i}{\hbar}\hat H\Psi(t)$ durch die allgemeine Lösung $\Psi(t) = \exp[-\frac{i}{\hbar}\hat Ht] \Psi(0)$ gelöst wird, ist es sinnvoll, dies durch einen Operator auszudrücken. Der Zeitentwicklungsoperator $\hat U(t)$ ist wie folgt definiert, analog zum Translationsoperator.

$$
\begin{aligned}
  \hat U(t) &= \exp\left[-\frac{i}{\hbar}\hat Ht\right] \\
  \Psi(t) &= \hat U(t)\Psi(0)
\end{aligned}
$$

$\hat U(t)$ ist die Lösung der Schrödingergleichung zu dem Anfangswert $\hat U(0)$. Da $\hat U(t_1)\cdot \hat U(t_2) = \hat U(t_1+t_2)$ gilt, folgt $\hat U(t)\hat U(-t)=0$, weshalb $\hat U$ unitär ist $(\hat U^\dagger=\hat U^{-1})$. Damit ist der Zeitentwicklungsoperator hermitesch.

### Relationen
Für den Zeitentwicklungsoperator $\hat U(t)$ gelten folgende Relationen, wobei $\hat H$ der Hamiltonoperator ist. Sie ensprechen denen des Translationsoperators.

$$
\begin{aligned}
  \hat U(0) &= \mathds 1 \\
  \dot{\hat U}(t) &= -\frac{i}{\hbar} \hat H\cdot \hat U(t) \\
  [\hat U(t), \hat H] &= 0
\end{aligned}
$$

### Spektraldarstellung
Aus der Spektraldarstellung des Hamiltonoperators $\hat H$ folgt die Spektraldarstellung des Zeitentwicklungsoperators $\hat U(t)$, der dieselben Eigenzustände wie $\hat H$ hat.

$$
  \hat U(t) = \sum_{i=0}^N \exp\left[-\frac{i}{\hbar} E_n t \right]\ket{\varphi_i}\bra{\varphi_i}
$$

### Zeitentwicklung von Operatoren
Für zeitabhängige Operatoren $\hat{A}(t)$ mit $\hat{A}(0)=A$ können[^5] mithilfe des Zeitentwicklungsoperators entwickelt werden. Dies kann auch durch den Hamiltonoperator $\hat H$ dargestellt werden.

$$
\begin{aligned}
  \braket{A}_{\ket{\Psi(t)}} &= \braket{\Psi(0)|\hat U^\dagger(t)\hat A\hat U(t)|\Psi(0)} \\
  \dot{\hat A}(t) &= -\frac{i}{\hbar}[\hat A(t), \hat H]
  = \frac{i}{\hbar}[\hat H, \hat A(t)] \\
  \hat A(t) &= \hat U^\dagger(t)\hat A\hat U(t) \\
  \frac{\mathrm d}{\mathrm d t} \braket{\hat A}_{\Psi(t)} &=
  \left<\frac{i}{\hbar} [\hat H, \hat A]\right>_{\Psi(t)} \\
\end{aligned}
$$

Hierbei sind $\braket{A}$ der Erwartungswert einer Observablen $A$ mit einem hermiteschen Operator $\hat A$ und $[\hat H, \hat A]$ der Kommutator.

[^5]: im Heisenberg-Bild

## Erhaltungsgrößen
Die Observable $A$ ist genau dann eine Erhaltungsgröße, wenn ihr Erwartungswert $\braket{A}_{\Psi(t)}$ für alle Lösungen der Schrödingergleichung konstant ist.

Dies ist äquivalent dazu, dass der Kommutator $[\hat H, \hat A]=0$ mit dem Hamiltonoperator $\hat H$ verschwindet.

$$
  \frac{\mathrm d}{\mathrm d t} \braket{A}_{\Psi(t)} =
  \left<\frac{i}{\hbar} [\hat H, \hat A]\right>_{\Psi(t)}
$$

Die Energie immer eine Erhaltungsgröße, da $[\hat H, \hat H]=0$. Auch sonst sind Eigenzustände stabil, Superpositionen von Eigenzuständen oszillieren. Dies wird als Quantenschwebung bezeichnet.

### Stabilität von Eigenzuständen
Eigenzustände sind immer Erhaltungsgrößen, da der Erwartungswert aller Observablen bezüglich eines Eigenzustandes immer erhalten ist. Daher enstehen dynamische Zustände durch die Superposition von Energieeigenzuständen.

#### Beweis
Die Stabilität von Eigenzuständen kann durch die zeitliche Veränderung eines Eigenzustands bewiesen werden. Diese wird durch den Zeitentwicklungsoperator $\hat U(t)$ beschrieben. Für Eigenzustände $\ket{\varphi_i}$ gilt demnach $\hat U(t)\ket{\varphi_i} = \exp[-i\omega_l t]\ket{\varphi_i}$. Der Erwartungswert einer Observable $A$ im Eigenzustand ist $\braket{A}_{\ket{\varphi_i}}$ wird unter Zeitentwicklung $\braket{A}_{U(t)\ket{\varphi_i}}=\braket{\hat U(t)\varphi_i|\hat A|\hat U(t)\varphi_i} = \braket{\varphi_i|\hat A|\varphi_i}$. Die Phasenverschiebung eines einzelnen Eigenzustands ist daher nicht beobachtbar.

### Quantenschwebung
Der Erwartungswert einer beliebigen Observablen in der Superposition $\ket{\varphi_m+\varphi_n}$ der Energieeigenzustände $\ket{m}$ und $\ket{n}$ oszilliert mit der Frequenz $\omega$.

$$
  \omega = \left|\frac{E_n-E_m}{\hbar}\right|
$$

Ein Beispiel dafür ist die Lamorpräzession, auch der Wechsel zwischen den Kästen eines Doppelkastenpotentials erfolgt über die Quantenschwebung.

## Lamorpräzession
Das magnetische Moment $\mu$ eines Spins im Magnetfeld $\vec{B}$ weist durch Quantenschwebung eine Präzession mit einer Lamorfrequez $\omega_L$ auf.

$$
\begin{aligned}
  \omega_L &= 2\omega
  &&= \frac{2B\mu_0}{\hbar} \\
  \braket{\mu}_{\Psi(t)} &=
  \begin{pmatrix}
  \braket{\mu_x}_{\Psi(t)} \\
  \braket{\mu_y}_{\Psi(t)} \\
  \braket{\mu_z}_{\Psi(t)} \\
  \end{pmatrix}
  &&= \mu_0
  \begin{pmatrix}
  \cos[2\omega t] \\
  - \sin[2\omega t] \\
  0
  \end{pmatrix}
\end{aligned}
$$

### Klassische Präzession
Ein symmetrischer Kreisel mit einer Winkelgeschwindigkeit $\vec{\omega} = \omega\hat{n}$ und der Länge $l$ hat ein Drehmoment von $\vec{M} = -ml\vec{g}\times \vec{n}$.

Ein Spin im Magnetfeld weist eine Lamorpräzession auf.

#### Drehmoment
Das Drehmoment $\vec{M}=\dot{\vec{L}}$ stellt die Änderung des Drehimpulses $\vec{L}$ dar.

## Herleitung der Lamorpräzession
Die Lamorpräzession mit der Frequenz $\omega_L=2\omega=\frac{2B\mu_0}{\hbar}$ kann einfach hergeleitet werden, wenn man annimmt dass das magnetische Moment $\mu$ entlang der $z$-Achse ausgerichtet ist.

Die Rotationsenergie ist dann $E=-\vec{B}\vec{\mu}=-B\mu_z$. Daher ist der Hamiltonoperator $\hat H=-B\hat{\mu}_z=-B\mu_0\sigma_3$.

Aus der Schrödingergleichung folgt dann die Bewegungsgleichung $\dot{\Psi}(t) = i\omega\sigma_3\Psi(t)$. Diese wird durch $\Psi(t)= \exp[i\omega t\sigma_3] \Psi(0)$ gelöst. Nach der Euler-Identität für Pauli-Matrizen wird dies durch $\Psi(t) = \mathrm e^{i\omega t\sigma_3}\Psi_0$ gelöst.

Wird $\Psi_0=\varphi_{x+}$ gewählt, so folgt $\Psi(t) = \frac{1}{\sqrt 2} \left(\begin{smallmatrix}\mathrm e^{i\omega t}\\\mathrm e^{-i\omega t}\end{smallmatrix}\right)$. Es folgt für die Erwartungswerte der Komponenten von $\vec{\mu}$.

$$
  \braket{\mu}_{\Psi(t)} =
  \begin{pmatrix}
  \braket{\mu_x}_{\Psi(t)} \\
  \braket{\mu_y}_{\Psi(t)} \\
  \braket{\mu_z}_{\Psi(t)} \\
  \end{pmatrix}
  = \mu_0
  \begin{pmatrix}
  \cos[2\omega t] \\
  - \sin[2\omega t] \\
  0
  \end{pmatrix}
$$

# 5. Quantenmechanik eines Punktteilchens
Auch in der Quantenmechanik betrachtet man zunächst Punktteilchen.

Schon am Punktteilchen kann man den Orts- und Impulsoperatoren sowie deren Erzeugende, den Zeitentwicklungsoperator und Translationsoperator begründen. Auch der Wechsel zwischen Orts- und Impulsraum und der Kontinuitätsübergang kann sinnvoll sein. Auch den Quanten-Zeno-Effekt kann man schon für ein Punktteilchen feststellen.

## Ortsoperator
Die Observable $x\in\mathbb R$ beschreibt den Ort, der dazugehörige hermitesche Operator $\hat x$ hat daher reelle Eigenwerte. Daher wird das Eigensystem durch die Menge der Zustände $\{\ket{\varphi_x}\}_{x\in\mathbb R}$ beschrieben, es gilt $\hat{x}\ket{\varphi_x}=x\ket{\varphi_x}$.

### Darstellung durch Leiteroperatoren
Der Ortsoperator $\hat x$ des harmonischen Oszillators kann auch durch durch die Leiteroperatoren $\hat a^\dagger$ und $\hat a$ dargestellt werden, wobei $l$ die charakteristische Länge ist.

$$
\begin{aligned}
  \hat x &= \sqrt{\frac{\hbar}{2m\omega}} \left(\hat a^\dagger + \hat a\right) \\
  \hat x &= \frac{l}{\sqrt{2}} \left(\hat a^\dagger + \hat a\right) \\
\end{aligned}
$$

## Impulsoperator
Der Impulsoperator $\hat{p}$ ist der Erzeuger von Translationen und kann durch den Translationsoperator $\hat{T}$ dargestellt werden. Dies ist analog zu der Darstellung des Hamiltonoperators mithilfe des Zeitentwicklungsoperators oder des Drehimpulsoperators.

Im eindimensionalen Raum ist $\hat p$ proportional zu der Ableitung nach dem Ort, im dreidimensionalen Raum ist $\vec{\hat p}$ proportional zum Gradienten.

$$
\begin{aligned}
  \hat p &= \left.i\hbar\frac{\mathrm d}{\mathrm ds}\hat{T}(s)\right|_{s=0} \\
  \hat p &= -i\hbar\frac{\partial}{\partial x} \\
  \vec{\hat p} &= -i\hbar \nabla
\end{aligned}
$$

Der Impulsoperator ist hermitesch $(\hat p=\hat p^\dagger)$. Im Impulsraum wird die Eigenfunktion als Impulswellenfunktion dargestellt. Er kann auch durch durch die Leiteroperatoren $\hat a^\dagger$ und $\hat a$ dargestellt werden.

Ist die Observable des Impulses erhalten, so ist das System translationssymmetrisch.

### Eigenwertgleichungen
Die Eigenwertgleichungen des Impulsoperators $\hat p$ lauten folgendermaßen.

$$
\begin{aligned}
  \hat{p}\ket{\varphi_p} &= p\ket{\varphi_p} \\
  \hat{p}\Psi(x) &= -i\hbar\frac{\partial}{\partial x}\Psi(x) \overset{!}{=} p\Psi(x) \\
  \Rightarrow \hat{p} &= -i\hbar\frac{\partial}{\partial x}
\end{aligned}
$$

### Energie-Impuls-Relation
Es gilt folgende Relation zwischen Hamiltonoperator $\hat H$ und Impulsoperator $\hat p$.

$$
\begin{aligned}
  \hat H &= \frac{\hat p^2}{2m} \\
  \hat p &= \hbar k
\end{aligned}
$$

Hierbei ist $k$ die Wellenzahl.

### Ort-Impuls-Unschärfe
Der Ortsoperator $\hat x$ und der Impulsoperator $\hat p$ kommutieren nicht. Aus dem Kommutator folgt eine Unbestimmtheitsrelationen für Ort und Impuls.

$$
\begin{aligned}
  [\hat{x}, \hat{p}] &= i\hbar\mathds 1 \\
  \Delta x\Delta p &\ge \frac{\hbar}{2}
\end{aligned}
$$

Das Ergebnis sieht aus wie Heisenbergs Formulierung, in seiner Betrachtung werden jedoch $x$ und $p$ im selben System nacheinander gemessen, die Messungen sind also nicht unabhängig.

## Ortsdarstellung und Impulsdarstellung
Wenn ein Ort gemessen wird, muss die Ortsdarstellung im Ortsraum verwendet werden; wird ein Impuls gemessen, muss die Impulsdarstellung im Impulsraum verwendet werden. Durch eine Fouriertransformation kann zwischen Ortsdarstellung und Impulsdarstellung gewechselt werden.

### Ortsdarstellung

### Impulsdarstellung

### Ortsraum
Der Ortsraum ist der reale Raum, den wir üblicherweise wahrnehmen. Er wird in der Ortsdarstellung verwendet. Im Unterschied dazu gibt es den Impulsraum für die Impulsdarstellung.

### Ortswellenfunktion
Die Ortswellenfunktion $\Psi(x)$ ist die übliche Darstellung einer Welle im realen Raum, dem Ortsraum. Im Unterschied dazu gibt es die Impulswellenfunktion, die die Fouriertransformierte der Ortswellenfunktion ist.

### Impulsraum
In der Impulsdarstellung hat der Impulsoperator die Eigenzustände $\ket{\tilde{\varphi}_p}$ mit $\tilde{\varphi}_p(x) = \exp[i\frac{\hat p}{\hbar}x]$. $\tilde{\varphi}_p$ beschreibt eine ebene Welle mit der Wellenzahl $k=\frac{p}{t}$, die oft als Impulswellenfunktion dargestellt wird.

Daraus folgt für die Orthonormalität $\braket{\tilde{\varphi}_p | \tilde{\varphi}_{p^\prime}} = 2\pi\hbar\delta(p-p^\prime)$ bzw. mit den Wellenzahlen $\braket{\tilde{\varphi}_{\hbar k} | \tilde{\varphi}_{\hbar k^\prime}} = 2\pi\delta(k-k^\prime)$.

### Impulswellenfunktion
Die Impulswellenfunktion $\tilde{\Psi}(k)$ wird als Fouriertransformierte der Ortswellenfunktion $\Psi(x)$ bestimmt. Sie ist die Eigenfunktion des Impulsoperators im Impulsraum.

$$
  \tilde{\Psi}(k) = \int_\infty^\infty \frac{\mathrm dx}{2\pi} \Psi(x)\exp[-ikx]
$$

#### Berechnung der Impulswellenfunktion
Weil der Zustand $\ket{\Psi}$ sowohl durch die Ortswellenfunktion $\Psi(x)$ als auch durch die Impulswellenfunktion $\tilde{\Psi}(k)$ dargestellt werden kann, kann die eine aus der anderen Funktion durch eine Fouriertransformation berechnet werden.

$$
\begin{aligned}
  \ket{\Psi} &= \int \frac{\mathrm dk}{2\pi} \tilde{\Psi}(k) \ket{\tilde{\varphi}_{\hbar k}} \\
  \ket{\Psi} &= \int \mathrm dx \Psi(x) \ket{\varphi_x} \\
  \Rightarrow \tilde{\Psi}(k) &= \mathcal{F}(\Psi(x)) \\
  \mathcal{F}(\Psi(x)) &= \int \frac{\mathrm dx}{2\pi} \Psi(x)\exp[-ikx]
\end{aligned}
$$

## Translationsoperator
Der Translationsoperator $\hat{T}(s)$ verschiebt den Ort eines Objektes um eine Strecke $s$. Er ist analog zum Zeitentwicklungsoperator mit dem Impulsoperator $\hat p$ definiert.

$$
\begin{aligned}
  \hat{T}(s) &= \exp\left[-\frac{i}{\hbar}\hat{p}s\right] \\
  \hat T(s)\ket{\varphi_x} &= \ket{\varphi_{x+s}}
\end{aligned}
$$

Daher gilt $\hat T^\dagger(s) = \hat T(-s)$. Analog zur Ortstranslation kann man auch eine Impulstranslation definieren. Die Kombination aus Ortstranslation und Impulstranslation wird durch den Verschiebungsoperator dargestellt.

### Relationen
Für den Translationsoperator $\hat{T}(s)$ gelten folgende Relationen, wobei $\hat p$ der Impulsoperator ist. Sie ensprechen denen des Zeitentwicklungsoperators.

$$
\begin{aligned}
  \hat T(0) &= \mathds 1 \\
  \hat T^\prime (s) &= -\frac{i}{\hbar} \hat p\cdot \hat T(s) \\
  [\hat T(s), \hat p] &= 0
\end{aligned}
$$

## Kontinuitätsübergang
In der Quantenmechanik wird der Ort üblicherweise als diskret betrachten, daher wird meist lineare Algebra verwendet, um Orte zu beschreiben. Die Menge $\{\ket{\varphi_x}\}_{x\in\mathbb R}$ hat jedoch unendlich viele Basisvektoren, daher ist die Dimension des Hilbertraumes $\dim{\mathcal H} = \infty$. Deswegen muss anstelle der linearen Algebra die Funktionsanalysis verwendet werden, um Quantenzustände zu beschreiben.

$$
\begin{aligned}
  && \text{diskret} && \text{kontinuierlich} \\
  \text{Kronecker-Delta} &&
  \delta_{ij} && \text{Deltafunktion } \delta(x) \\
  &&
  \delta_{ij} = 0 \Leftrightarrow i=j &&
  \delta(x-y) = 0 \Leftrightarrow x=y \\
  \text{Normierung} &&
  \sum_i \delta_{ij} = 1 &&
  \int_{\mathbb R} \delta(x-x^\prime) \mathrm dx = 1 \\
  \text{Orthonormale Eigenbasis} &&
  \{\ket{\varphi_i}\} &&
  \{\ket{\varphi_x}\} \text{ Eigensystem} \\
  \text{Orthonormalität} &&
  \braket{\varphi_i|\varphi_j} = \delta_{ij} &&
  \braket{\varphi_x|\varphi_{x^\prime}} = \delta(x-x^\prime) \\
  \text{Vollständigkeit} &&
  \mathds 1_{\mathcal H} = \sum_i\ket{\varphi_i}\bra{\varphi_i} &&
  \mathds 1_{\mathcal H} = \int_{\mathbb R} \ket{\varphi_x}\bra{\varphi_x} \mathbb dx \\
  \text{Spektraldarstellung} &&
  A = \sum_i a_i\ket{\varphi_i}\bra{\varphi_i} &&
  A = \int_{\mathbb R} x \ket{\varphi_x}\bra{\varphi_x} \mathbb dx \\
  \text{Komponentendarstellung} &&
  \sum_i \Psi_i \ket{\varphi_i} &&
  \int_{\mathbb R} \Psi(x) \ket{\varphi_x} \mathbb dx \\
  \text{Skalarprodukt} &&
  \braket{\Psi|\chi} = \sum_i \Psi_i^*\chi_i &&
  \braket{\Psi|\chi} = \int_{\mathbb R} \Psi^*(x)\chi(x) \mathrm dx
\end{aligned}
$$

#### Komponentendarstellung
$$
\begin{aligned}
  \mathcal H \ni \ket{\Psi} &= \mathds 1\ket{\Psi}
  &&\Rightarrow&&
  \ket{\Psi}~= \sum_i \ket{\varphi_i}\braket{\varphi_i|\Psi} \\
  \Psi_i &= \braket{\varphi_i|\Psi}
  &&\Rightarrow&&
  \ket{\Psi}~= \sum_i \Psi_i \ket{\varphi_i} \\
  \Psi(x) &= \braket{\varphi_x|\Psi}
  &&\Rightarrow&&
  \ket{\Psi}~= \int_{\mathbb R} \Psi(x) \ket{\varphi_x} \mathbb dx
\end{aligned}
$$

$\Psi(x)$ ist die Wellenfunktion des Zustands $\ket{\Psi}$, $\Psi_i$ eine Komponente von $\ket{\Psi}$.

##### Skalarprodukt in Komponentendarstellung
Dadurch sieht das Skalarprodukt in Komponentendarstellung folgendermaßen aus.

$$
  \braket{\Psi|\chi} =
  \bra{\Psi}\mathds 1 \ket{\chi}
  = \bra{\Psi}\left(\sum_i \ket{\varphi_i}\bra{\varphi_i}\right)\ket{\chi}
  = \sum_i \Psi_i^*\chi_i\\
  \braket{\Psi|\chi} = \int_{\mathbb R} \Psi^*(x)\chi(x) \mathrm dx
$$

## Translationssymmetrie und Impulserhaltung
Ein System ist genau denn symmetrisch bezüglich Translation, wenn der Impuls $p$ eine Erhaltungsgröße ist.

Dies ist quantenmechanisch genau dann der Fall, wenn der Kommutator von Translationsoperator $\hat T(s)$ und Zeitentwicklungsoperator $\hat U(t)$ verschwindet $([\hat T(s), \hat U(t)]=0)$. Dies ist äquivalent dazu, dass der Kommutator des Hamiltonoperators $\hat H$ und des Impulsoperators $\hat p$ verschwindet $([\hat H,\hat p]=0)$.

## freies Punktteilchen
Ein freies Punktteilchen ist ein Punktteilchen, das keine Wechselwirkung mit anderen Teilchen eingeht. Es steht im Gegensatz zu einem Punktteilchen im Potential.

### Hamiltonoperator eines freien Punktteilchens
Aus der Energie-Impuls-Relation folgt der Hamiltonoperator $\hat H$ eines freien Punktteilchens mit Masse $m$ und Impulsoperator $\hat p$.

$$
  \hat H = \frac{\hat p^2}{2m}
$$

### Schrödingergleichung eines freien Punktteilchens
Ein freies Teilchen ist symmetrisch bezüglich Translation, daher kommutieren $\hat H$ und $\hat p$ $([\hat H, \hat p]=0)$. Der Hamiltonoperator eines freien Punktteilchens wird in die Schrödingergleichung eingesetzt.

$$
  i\hbar \frac{\partial}{\partial t} \Psi(x, t)
  = -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} \Psi(x, t)
$$

Dies ist eine partielle Differentialgleichung 2. Ordnung, die eine nicht-triviale Dynamik erzeugt.

## Punktteilchen im Potential
### Hamiltonoperator eines Punktteilchens im Potential
Sei ein quantenmechanisches Punktteilchen in einem Potential $U(x)$. Dann wird der Hamiltonoperator $\hat H$ durch die Energie-Impuls-Relation mit dem Impulsoperator $\hat p$ und das Potential $U(x)$ definiert.

$$
  \hat H = \frac{\hat p^2}{2m} + U(x)
$$

### Schrödingergleichung eines Punktteilchens im Potential
Der Hamiltonoperator eines Punktteilchens im Potential wird in die Schrödingergleichung eingesetzt.

$$
  i\hbar \frac{\partial}{\partial t} \Psi(x, t) =
  \left(
  -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + U(x)
  \right)\Psi(x, t)
$$

## Stationäre Schrödingergleichung
Oft ist es hilfreich, ein dynamisches Problem zunächst als stationär zu betrachten. Dies ist meist einfacher und daraufhin kann man die Zeitentwicklung anwenden.

Die stationäre Schrödingergleichung gilt, wenn die Wellenfunktion $\Psi(x)$ nur vom Ort, aber nicht von der Zeit abhängt. Hierbei sind die normierten Eigenenergiezustände $\ket{\Psi_n}$ und die Eigenenergien $E_n$ wichtig. Es gilt $\hat H\ket{\Psi_n}=E_n\ket{\Psi_n}$, daraus folgt die stationäre Schrödingergleichung.

$$
  E_n\Psi(x) =
  \left(
  -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + U(x)
  \right)\Psi_n(x)
$$

Daraus folgt die Dynamik des Teilchens. Hierbei sind $c_n$ Koeffizienten, die bestimmt werden müssen.

$$
\begin{aligned}
  \ket{\Psi(0)} &= \sum_n c_n \ket{\Psi_n} \\
  \Rightarrow \ket{\Psi(t)} &= \sum_n c_n \exp[-\frac{i}{\hbar}E_n t] \ket{\Psi_n}
\end{aligned}
$$

## Quanten-Zeno-Effekt
Der Übergang eines quantenmechanischen Systems von einem Zustand in einen anderen kann durch wiederholte Messungen aufgehalten werden.[^6] Durch die Messung eines Zustand $\ket{\phi}$ wird das System diesem Zustand $\ket{\phi}$ präperiert. Wird dies häufig gemacht, so kann das System in $\ket{\phi}$ fixiert werden.

Die Wahrscheinlichkeit, dass $N$ Messungen $M_\phi$ im zeitlichen Abstand $\tau$ das selbe Ergebnis liefern, ist nach der Bornschen Regel $P_N = |\braket{\phi|\Psi}|^2$, wenn vorher der Zustand $\ket{\Psi}$ vorherrschte. Wird häufig genug gemessen, geht die Wahrscheinlichkeit für den Wechsel in einen anderen Zustand gegen Null.

[^6]: Benannt nach _Zenon von Elea_, von dem das [Pfeil-Paradoxon](https://de.wikipedia.org/wiki/Pfeil-Paradoxon) stammt.

# 6. Modellsysteme
Zu den zentralen Modellen der Quantenmechanik zählen der Potentialkasten und das Doppelkastenpotential. Anhand des Doppelkastenpotentials kann man die Trennung von symmetrischen und antisymmetrischen Eigenzuständen durch Niveauaufspaltung verstehen.

Anhand des Modells der Potentialbarriere kann man den Tunneleffekt erklären und kommt über die Kontinuitätsgleichung auf die Wahrscheinlichkeitsstromdichte.

Potentialschwellen sind dagegen sehr schwierig lösbar und werden in der Gamow-Näherung durch viele kastenförmige Potentialschwellen angenähert. Auch an einem Potentialtopf kann gestreut werden.

## Gebundene Eigenenergiezustände
Quantenmechanische Eigenzustände sind gebunden, wenn die Eigenenergiezustände normierbar sind.

## Potentialkasten
Das Potential $U(\vec{r})$ sei außerhalb eines Kastens der Länge $a$ ein Wert von $V$. Damit kann man die stationäre Schrödingergleichung aufstellen und lösen. Hierbei sind $s$ und $u$ zu ermittelnde Parameter, die die stationäre Lösung $\Psi_0(x)$ beschreiben.

$$
\begin{aligned}
  U(x) &=
  \begin{cases}
  V & x \notin [0, a] \\
  0 & x \in [0, a]
  \end{cases} \\
  \Psi_E^{\prime\prime}(x) &=
  \frac{2m}{\hbar}\left(
  U(x) - E
  \right)\Psi_E(x) \\
  \Psi_0(x) &= s\sin(kx) + u\cos(kx)
\end{aligned}
$$

Für den unendlichen Potentialkasten $(V\rightarrow\infty)$ folgen untenstehende Lösungen. Es gibt nur noch diskrete Wellenzahlen $k_n$ und Eigenenergien $E_n$, die auftreten können. Die Schwingung $\Psi_n$ besitzt $n-1$ Nullstellen bzw. Knoten.

$$
\begin{aligned}
  \Psi_n(x) &= \sqrt{\frac{2}{a}} \sin(k_nx) \\
  k_n &= \frac{\pi}{a}\cdot n \text{ mit } n\in\mathbb N \\
  E_n &= \frac{(\hbar k_n)^2}{2m} = \frac{\hbar^2 \pi^2}{2ma^2} \cdot n^2
\end{aligned}
$$

### Lösung des Kastenpotentials
Sei das Potential $U(x)$ in einem Potentialkasten überall $V$ außer in dem Bereich von $0$ bis $a$, dann kann die stationäre Schrödingergleichung aufgestellt werden.

$$
\begin{aligned}
  U(x) &=
  \begin{cases}
  V & x \notin [0, a] \\
  0 & x \in [0, a]
  \end{cases} \\
  E\Psi_E(x) &=
  \left(
  -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + U(x)
  \right)\Psi_E(x) \\
  \Leftrightarrow \Psi_E^{\prime\prime}(x) &=
  \frac{2m}{\hbar}\left(
  U(x) - E
  \right)\Psi_E(x)
\end{aligned}
$$

In Bereichen, in denen $U(x)>E$, folgt $\Psi_E^{\prime\prime}(x) = c\cdot \Psi_E(x)$, wobei $c$ eine positive Konstante ist. In Bereichen, in denen $U(x)<E$, folgt $\Psi_E^{\prime\prime}(x)=-c\cdot \Psi_E(x)$. Daher ist $\Psi_E(x)$ in Bereichen mit $U(x)>E$ konvex und in Bereichen mit $U(x)<E$ konkav.

Falls $x\notin[0,a]$, dann gilt $\Psi_E^{\prime\prime}(x) = \chi^2\Psi_E(x)$, wobei $\chi^2=\frac{2m}{\hbar}\left(V - E \right)$ eine verkürzte Schreibweise darstellt.
Falls $x\in[0,a]$, dann gilt $\Psi_E^{\prime\prime}(x) = k^2 \Psi_E(x)$, da $E=\frac{\hat {p}^2}{2m}=\frac{\hbar^2k^2}{2m}$. Dann folgt $\Psi _ \pm(x) = \ket{\tilde{\varphi} _ {\pm\hbar k}}$

$$
  \Rightarrow \Psi_E(x) =
  \begin{cases}
  x<0: & \alpha \exp[\chi x] + \beta_2 \exp[-\chi x] \\
  x>a: & \alpha_2 \exp[\chi x] + \beta \exp[-\chi x] \\
  x\in[0,a]: & r\sin(kx) + s\cos(kx)
  \end{cases}
$$

Hierbei muss $\alpha_2=\beta_2=0$ gelten, da die entsprechenden Exponentialterme divergieren.

Zudem muss die Funktion auch an den Stellen $0$ und $a$ stetig sein. Daraus folgen 5 Bedingungen. Daraus erhalten wir die $5$ freien Parameter $\alpha, \beta, r, s$ und $E$.

$$
\begin{aligned}
  \Psi(0_-) &= \Psi(0_+) \\
  \Psi^\prime(0_-) &= \Psi^\prime(0_+) \\
  \Psi(a_-) &= \Psi(a_+) \\
  \Psi^\prime(a_-) &= \Psi^\prime(a_+) \\
  \text{Normierung: } 1 &= \int_{-\infty}^\infty |\Psi(x)|^2 \mathrm dx
\end{aligned}
$$

### Unendlicher Potentialkasten
Eine Vereinfachung des Potentialkastens ist, das äußere Potential $V$ sehr groß zu machen $(V\rightarrow\infty)$. Dann wird auch das in der Lösung verwendete $\chi^2=\frac{2m}{\hbar}\left(V - E \right)$ extrem groß. Dann ist die Aufenthaltswahrscheinlichkeit außerhalb des Kastens verschwindent, es gilt $\forall x\notin[0,a]: \Psi(x)\Rightarrow0$.

Dadurch gibt es die Randbedingungen $\Psi(0)=\Psi(a)=0$, woraus $\Psi(x) = r\sin(kx)$ für $x\in[0,a]$ folgt. Daher muss $ka=n\pi$ (mit $n\in\mathbb N$) sein.

$$
\begin{aligned}
  \Psi_n(x) &= \sqrt{\frac{2}{a}} \sin(k_nx) \\
  k_n &= \frac{\pi}{a}\cdot n \text{ mit } n\in\mathbb N \\
  E_n &= \frac{(\hbar k_n)^2}{2m} = \frac{\hbar^2 \pi^2}{2ma^2} \cdot n^2
\end{aligned}
$$

Diese Schwingung $\Psi_n$ besitzt $n-1$ Nullstellen bzw. Knoten.

## Doppelkastenpotential
Sei das Potential $U(x)$ ein Potentialkasten im Bereich $[-a, a]$, der bei $x=0$ eine Potentialbarriere in der Höhe von $u$ hat. Zur Vereinfachung sei das Potential außerhalb des Kastens unendlich hoch, weiterhin sei $u$ groß. Dieses Potential ist ein einfaches Modell für Teilchen im Doppelmuldenpotential.

$$
  U(x) =
  \begin{cases}
  u\delta(x) & |x| < a \\
  \infty & |x| > a
  \end{cases}
$$

Nun sei $\Psi$ ein Eigenenergiezustand zur Energie $E$. Dann wird die stationäre Schrödingergleichung durch folgende Differentialgleichung für $x\in(-a, a)$ gelöst. Hierbei gelten die Randbedingungen $\Psi_E(\pm a)=0$.

$$
  \Psi_E^{\prime\prime}(x) = \frac{2m}{\hbar}(u\delta(x) - E)\Psi_E(x)
$$
Für $x\neq0$ erhält man wie beim Potentialkasten die Lösung $\Psi_E=r\sin(kx)+s\cos(kx)$ mit $k=\frac{\sqrt{2mE}}{\hbar}$. Das Verhalten bei $x=0$ ist dagegen anders zu bestimmen. In diesem Fall kann es symmetrische oder antisymmetrische Eigenzustände geben.

### symmetrische Zustände
An der Stelle $x=0$ ist das Doppelkastenpotential schwieriger zu lösen als der Potentialkasten. Man kann symmetrische oder antisymmetrische Eigenzustände erhalten. Der symmetrische Eigenzustand $\ket{\Psi_n}$ ist der $n$-te Grundzustand.

$$
\begin{aligned}
  \Psi_n(x) &= c_n \sin(k_n(|x|+b)) \\
  k_n &= \frac{\pi}{a+b}\cdot n \\
  E_n &= \frac{\hbar^2k^2}{2m} = \frac{\hbar^2\pi^2}{2m}\frac{k^2}{(a+b)^2} \\
  b &= \frac{\hbar^2}{mu}
\end{aligned}
$$

#### Beweis
Die symmetrischen Eigenzustände können im Doppelkastenpotential wie folgt ermittelt werden.

Da die $\delta$-Funktion keinen exakten Wert angibt, sondern nur über eine Integration sinnvoll interpretiert werden kann, muss die Differentialgleichung integriert werden. Sei $\varepsilon\rightarrow 0$ klein. Zudem sei $\Psi_E(x)$ innerhalb des Potentialkastens symmetrisch.

$$
\begin{aligned}
  \int_{-\varepsilon}^\varepsilon \Psi_E^{\prime\prime}(x) \mathrm dx
  &=
  \frac{2mu}{\hbar^2} \int_{-\varepsilon}^\varepsilon \delta(x) \Psi_E(x) \mathrm dx
  &-& k^2\int_{-\varepsilon}^\varepsilon \Psi_E(x)\mathrm dx \\
  \Leftrightarrow \Psi_E^\prime(\varepsilon) - \Psi_E^\prime(-\varepsilon)
  &=
  \frac{2mu}{\hbar^2} \Psi_E(0)
  &-& 0 \\
  \Rightarrow \Delta \Psi_E^\prime(x) &= \frac{2mu}{\hbar^2} \Psi_E(0)
\end{aligned}
$$

Als Ansatz kann man $\Psi_E(x)=c\sin(k|x|+b)$ wählen. Dann erhält man aus der obigen Gleichung $\tan(kb)=\frac{k\hbar^2}{mu}$. Da $u$ groß ist, ist der Tangens klein und es gilt $\tan(kb)\approx kb$. Damit erhält man die Relation $b=\frac{\hbar^2}{mu}$.

Die Randbedingungen $\Psi_E(\pm a)=0$ liefern die Gleichung $\sin(k(a+b))=0$, woraus $k(a+b)=\pi n$ $(n\in\mathbb N)$ gefordert wird, daraus erhält man die Energieeigenfunktionen.

$$
\begin{aligned}
  \Psi_n(x) &= c_n \sin(k_n(|x|+b)) \\
  k_n &= \frac{\pi}{a+b}\cdot n \\
  E_n &= \frac{\hbar^2k^2}{2m} = \frac{\hbar^2\pi^2}{2m}\frac{k^2}{(a+b)^2}
\end{aligned}
$$

### antisymmerische Zustände
An der Stelle $x=0$ ist das Doppelkastenpotential schwieriger zu lösen als der Potentialkasten. Man kann symmetrische oder antisymmetrische Eigenzustände erhalten. Der antisymmetrische Eigenzustand $\ket{\tilde{\Psi}_n}$ ist der $n$-te angeregte Zustand.

$$
\begin{aligned}
  \tilde{\Psi}_n(x) &= \frac{1}{\sqrt{a}} \sin(\tilde{k}x) \\
  \tilde{k}_n &= \frac{\pi}{a}\cdot n \\
  \tilde{E}_n &= \frac{\hbar^2\tilde{k}^2}{2m} = \frac{\hbar^2\pi^2}{2m}\frac{n^2}{a^2}
\end{aligned}
$$

Die Berechnung ist analog zu der der symmetrischen Eigenzustände. Hier gibt es neben den Randbedingungen $\tilde{\Psi}_ n(\pm a)=0$ und der Lösung der Schrödingergleichung bei $x=0$ noch eine weitere Bedingung, die eingehalten werden muss, nämlich die Anschlussbedingung. Diese fordert die Stetigkeit der Wellenfunktion, also dass für $\varepsilon\rightarrow0$ der gleiche Wert $\tilde{\Psi}_ n(-\varepsilon)=\tilde{\Psi}_ n(\varepsilon)$ gilt. Dies ist erfüllt, da $\tilde{\Psi}_ n(0)=0$.

### Niveauaufspaltung
Die symmetrischen Eigenenergien $E_n$ sind kleiner als die antisymmetrischen Eigenenergien $\tilde{E}_n$, da $\Delta E_n=\tilde{E}_ n - E_n > 0$ positiv ist.[^7] Daher ist der symmetrische Zustand $\ket{\Psi_n}$ jeweils der $n$-te Grundzustand, $\ket{\tilde{\Psi}_n}$ ist der $n$-te angeregte (antisymmetrische) Zustand. Allerdings ist die Energiedifferenz $\Delta E_n$ beim Doppelkastenpotential sehr klein.

Die Oszillation zwischen den Kästen wird durch die Frequenz $\omega_n = \frac{\Delta E_n}{\hbar}$ beschrieben, die von der Niveauaufspaltung abhängt. Die Oszillation in den jeweiligen Kästen wird durch die Frequenz $\Omega_n=\frac{\tilde{E}_n}{\hbar}$ dargestellt, die von der Eigenenergie im angeregten Zustand abhängt. Die Frequenz der Quantenschwebung $\omega_n$ ist dabei deutlich kleiner als die Oszillation in den Potentialkästen $(\omega_n \ll \Omega_n)$.

Dies kommt daher, dass der Hamiltonoperator in der Spektraldarstellung durch $\hat H=\mathds 1 \frac{E_n+\tilde{E} _ n}{2} + \sigma_z\frac{E_n-\tilde{E} _ n}{2}$ dargestellt werden kann. Der erste Term ist konstant, der zweite erzeugt die Dynamik. Durch diese Seperation kann der Zeitentwicklungsoperator $\hat U(t)$ in eine global wirkende Phase und einen Schwingungsterm mit der Pauli-Matrix $\sigma_z$ seperiert werden, also $\hat U(t)=\exp[i\frac{i}{\hbar}\Omega t]\cdot\exp[-\frac{i}{\hbar}\sigma_z\omega t]$. Nur der Term $\exp[-\frac{i}{\hbar}\sigma_\omega t]$ erzeugt die Dynamik.

[^7]: Dies folgt aus dem Doppelkastenpotential

### Superposition
Die Superposition im Doppelkastenpotential kann durch den $n$-ten Grundzustand $\ket{\Psi}$ und den $n$-ten angeregten Zustand $\ket{\tilde{\Psi}}$ beschrieben werden.

$\Psi_+$ beschreibt ein Teilchen im rechten Kasten, $\Psi_-$ ein Teilchen im linken Kasten. So kann man ein Teilchen beschreiben, dass sich nur auf einer Seite im Kasten befindet.

$$
  \ket{\Psi_\pm} = \frac{1}{\sqrt{2}}(\ket{\Psi_n} \pm \ket{\tilde{\Psi}_n})
$$

### Dipolmoment
Mithilfe des Doppelkastenpotentials kann man ein magnetisches Dipolmoment $\vec{\mu}$ beschreiben.

Beispielsweise bei Ammioniak befinden sich Bindungselektronen in einem Doppelmuldenpotential. Durch den Wechsel von der einen in die andere Mulde induzieren sie ein magnetisches Dipolmoment $\vec{\mu}$.

$$
  \mu_x = \mu_0 \left(
  \ket{\Psi_+}\bra{\Psi_+}
  - \ket{\Psi_-}\bra{\Psi_-}
  \right)
$$

## Reflektion und Transmission an einer Potentialbarriere
Man kann sich eine Potentialbarriere wie eine Mauer vorstellen. Teilchen mit einer höheren Energie als diese Mauer können diese problemlos überqueren. Doch auch Teilchen mit einer geringeren Energie können die Barriere mit einer gewissen Wahrscheinlichkeit überwinden, in diesem Fall spricht man vom Tunneleffekt.

Zu Beginn kann die Wellenfunktion der einlaufenden Welle durch ein Wellenpaket mit Erwartungswert $-l$ und Breite $b$ beschreiben. Das Problem wird zunächst stationär durch einen Streuansatz inklusive der Anschlussbedingungen gelöst. Daraus ergeben sich die Reflektionswahrscheinlichkeit und die Transmissionswahrscheinlichkeit für die Welle.

Initial ist die gesamte Aufenthaltswahrscheinlichkeit der Welle im Bereich um $-l$, später ist die Aufenthaltswahrscheinlichkeit deutlich verteilt. Man es daher von "fließenden" Wahrscheinlichkeiten sprechen, ähnlich wie von fließenden Ladungen. Daduch kann man von einer Wahrscheinlichkeitsstromdichte sprechen.

### Tunneleffekt
Wenn eine Potentialbarriere höher als die Energie eines Teilchen ist, würde man klassisch $100\%$ Reflektion dieses Teilchens erwarten. In der Quantenmechanik gibt es allerdings Fälle von Transmission. Man spricht davon, dass das Teilchen durch die Potentialbarriere tunnelt.

Die Reflektionswahrscheinlichkeit und die Transmissionswahrscheinlichkeit werden durch Parameter des Streuansatzes bestimmt.

Dies ist beispielsweise für den $\alpha$-Zerfall relevant. Nur durch den Tunneleffekt ist es möglich, dass die $\alpha$-Teilchen die Bindungsenergie des Atomkerns überwinden können.

### Streuansatz
Gegeben sei eine Potentialbarriere $U(x)>0$ der Dicke $a$ im Intervall $(0, a)$. Sei $\ket{\Psi}_{t_0}$ die einlaufende Welle zum Zeitpunkt $t_0$ Position $\braket{x}_{t_0}=-l$. Der initale Abstand zur Barriere soll sehr viel größer sein als die Dicke, also $l\gg a$, die initiale Breite $b$ der Welle mit $a\ll b\ll l$ sei sehr viel kleiner als der Abstand zur Barriere, aber deutlich größer als die Dicke der Barriere. Die Welle habe einen Impuls $\hat p=\hbar k =\braket{\hat p}_{t_0}$ und damit eine Energie $E=\braket{\hat H}_{t_0}=\frac{\hat p^2}{2m}$.

Im Bereich vor der Barriere gibt es eine einlaufende und eine reflektierte Welle, hinter der Barriere eine transmittierte Welle. $\Psi_0(x)$ ist die Lösung der stationären Schrödingergleichung für das gegebene Potential, die der allgemeinen Lösung des Potentialkastens entspricht.

$$
\begin{aligned}
  \Psi(x) &=
  \begin{cases}
  \exp[ikx] + r\exp[-ikx] & : x<0 \\
  \Psi_0(x) & : x \in [0, a] \\
  t \exp[ikx] & : x>a
  \end{cases} \\
  \Psi_0(x) &= s\sin(kx) + u\cos(kx)
\end{aligned}
$$

Die Anschlussbedingungen fordern, dass $\Psi(x)$ und $\Psi^\prime(x)$ stetig sind. Dies muss an den Stellen $x=0$ und $x=a$ sichergestellt werden, dadurch ergeben sich $4$ Bedingungen, die erfüllt werden müssen. Dadurch werden die freien Parameter $r, t, s, u$ bestimmt. Die Parameter $r$ und $t$ bestimmen die Reflektionswahrscheinlichkeit und die Transmissionswahrscheinlichkeit.

#### Anschlussbedingungen
In den meisten physikalischen Fällen kann man Probleme in verschiedene Teile aufteilen und diese seperat lösen. Dies ist beispielsweise bei zusammengesetzten Potentialen der Fall.

In diesen Fällen fordern Anschlussbedingungen, dass die zusammengesetzten Funktionen $f$ und ihre Ableitungen $f^\prime$ an jeder Stelle stetig sind. Dadurch ergeben sich je "Trennstelle" zwei Anschlussbedingungen.

### Reflektions- und Transmissionswahrscheinlichkeit
#### Reflektionswahrscheinlichkeit
Die Reflektionswahrscheinlichkeit $R$ an einer Potentialbarriere hängt von dem Parameter $r$ des Streuansatzes ab. Sie gibt an, mit welcher Wahrscheinlichkeit an der Barriere reflektiert wird anstatt zu tunneln.

$$
  R = |r|^2 \\
$$

#### Transmissionswahrscheinlichkeit
Die Transmissionswahrscheinlichkeit $T$ an einer Potentialbarriere hängt von dem Parameter $t$ des Streuansatzes ab. Sie gibt an, mit welcher Wahrscheinlichkeit durch die Barriere tunnelt.

$$
  T = |t|^2 \\
$$

### Kontinuitätsgleichung
Die Kontinuitätsgleichung für die Erhaltungsgröße der Aufenthaltswahrscheinlichkeit stellt die Wahrscheinlichkeitsdichte $\rho(x, t)=|\Psi(x, t)|^2$ in Zusammenhang mit der Wahrscheinlichkeitsstromdichte $j$.

$$
  \frac{\mathrm d}{\mathrm dt}\rho(x, t) + \frac{\partial}{\partial x} j(x, t) \overset{!}{=} 0
$$

### Wahrscheinlichkeitsstromdichte
Die Wahrscheinlichkeitsdichte $|\Psi(x, t)|^2$ ist normiert ($\int_{\mathbb{R}} |\Psi(x, t)|^2=1$), dies fordert das erste Postulat der Quantenmechanik.

Die zeitliche Änderung der Wahrscheinlichkeitsdichte ist $\frac{\mathrm d}{\mathrm dt}|\Psi(x, t)|^2=\frac{\mathrm d}{\mathrm dt}(\Psi^*\Psi)^2$. Die Wahrscheinlichkeitsstromdichte $j(x, t)$ wird aus diesem Ausdruck hergeleitet, sodass die Kontinuitätsgleichung erfüllt ist. Daraus folgt die Definition der Wahrscheinlichkeitsstromdichte als Imaginärteil von $\Psi^* \partial_ x\Psi$.

$$
  \frac{\mathrm d}{\mathrm dt}\left|\Psi(x, t)\right|^2 + \frac{\partial}{\partial x} j(x, t) = 0 \\
  j(x, t) = \frac{\hbar}{m}\Im
  {\Large(}
  \Psi^*(x, t) \frac{\partial}{\partial x} \Psi(x, t)
  {\Large)}
$$

## Kastenförmige Potentialschwelle
Für eine kastenförmige Potentialschwelle kann man folgenden Ansatz wählen, der dem der Potentialbarriere ähnelt.

$$
  \Psi(x) =
  \begin{cases}
  1\exp[ikx] + r\exp[-ikx] & : x<0 \\
  s\exp[qx] + u\exp[-qx] & : x \in [0, d] \\
  t \exp[ikx] & : x>a
  \end{cases}
$$

Damit erhält man folgende Tunnelwahrscheinlichkeit.

$$
  T^{-1} = 1 + \left(1 + \frac{1}{4}
  \left( \frac{q}{k} - \frac{k}{q}\right)^2\right) \sinh^2[qa]
$$

Im Grenzfall $qd\gg 1$ folgt $\sinh[qa]\approx \frac{1}{2} \exp[qd]$. Damit folgt $T\approx \frac{1}{4(\dots)} \exp[-2qd]\approx \exp[-2qd]$. Mit $\lambda=\frac{2}{q}=\hbar(\sqrt{8m(V-E)})^{-1}$ folgt $T\approx \exp[-\frac{d}{\lambda}]$.

$$
T \approx \exp\left[-\frac{d}{\lambda}\right] = \exp\left[-\frac{d}{\hbar} \sqrt{8m(V-E)} \right]
$$

### Lösung der Anschlussbedingungen
Die Anschlussbedingungen liefern für eine kastenförmige Potentialschwelle das folgende lineare Gleichungssystem.

$$
\begin{aligned}
  1+r &= s+u \\
  ik-ikr &= -qs + qu \\
  s\exp[-qd] + u\exp[qd] &= t \\
  -qs\exp[-qd] + qu\exp[-qd] &= ikt
\end{aligned}
$$

Dies kann auch in Matrixform dargestellt werden.

$$
\begin{aligned}
  A &= \begin{pmatrix}1 & 1 \\ ik & - ik\end{pmatrix} \\
  B &= \begin{pmatrix}1 & 1 \\ -q & q\end{pmatrix} \\
  C &= \begin{pmatrix}\exp[-qd] & \exp[qd] \\ -q\exp[-qd] & \exp[qd]\end{pmatrix} \\
  v &= \begin{pmatrix}1 \\ ik\end{pmatrix} \\
  \Rightarrow \frac{1}{t}\cdot \begin{pmatrix}1 \\ r\end{pmatrix}
  &= A^{-1} B C^{-1} v
\end{aligned}
$$

Computerprogramme können folgende Lösung liefern.

$$
  \frac{1}{t} = \cosh[qd] + \frac{i}{2} \left(\frac{q}{\hbar} - \frac{k}{q}\right)\sinh[qd] \\
$$

### Gamow-Näherung
Die Gamow-Näherung nähert eine beliebige Potentialschwelle durch eine Kombination von mehreren rechteckigen Potentialschwellen an. Barrieren, die geringer als die Energie der einlaufenden Welle sind, können vernachlässigt werden. Eine genauere Näherung ist die WKB-Näherung.

Sei eine Potentialschwelle im Bereich $[a,b]$ durch $n$ kastenförmige Potentialschwellen der Breite $d$ darstellbar. Die Höhe der $i$-ten Potentialschwelle sein $V_j$ im Bereich $q_j=\sqrt{2m(U(x_j)-E)}\hbar^{-1}$. Dann ist $T_j=\exp[-2q_jd]$.

Die Wahrscheinlichkeit, dass alle Barrieren durchtunnelt werden, ist $T=\prod_j T_j = \exp\left[\sum_{j=1}^n 2q_jd\right]$.

Wähle nun $d$ klein, ohne dass $qd\gg 1$ verletzt wird. Dies geht, wenn $U$ hinreichend glatt ist. Damit kann man $T$ im Kontinuumsübergang durch ein Integral bestimmen.

$$
  T \approx \exp\left[\frac{1}{\hbar}\int_a^b \sqrt{8m(U(x)-E)} \mathrm dx \right]
$$

### Streuung an einem Potentialtopf
Sei ein Potential $U(x)=-V$ im Interval $[0,d]$ und $U(x)=0$ außerhalb dieses Intervals, was einer negativen Potentialbarriere entspricht.

$$
  \Psi(x) =
  \begin{cases}
  \exp[ikx] + r\exp[-ikx] & : x<0 \\
  s\exp[i\kappa x] + u\exp[-i\kappa x] & : x \in [0, a] \\
  t \exp[ikx] & : x>a
  \end{cases}
$$

Das Ergebnis der Streuung an einer kastenförmigen Potentialschwelle kann man verwenden, wenn man den Parameter $q$ durch $i\kappa$ ersetzt.

$$
  \frac{1}{t} = \cosh[i\kappa d] + \frac{i}{2} \left(\frac{i\kappa}{\hbar} + \frac{ik}{\kappa}\right)\sinh[i\kappa d]
$$

Es gilt $\cosh[i\alpha]=\cos[\alpha]$ und $\sinh[i\alpha]=i\sin[\alpha]$. Daraus folgt die Tunnelwahrscheinlichkeit.

$$
\begin{aligned}
  T^{-1} &= 1 + \left(1 + \frac{1}{4}
  \left( \frac{\kappa}{k} + \frac{k}{\kappa}\right)^2\right) \sinh^2[qa] \\
  &= 1 + \left(\frac{\kappa^2-k^2}{2k\kappa}\right)^2 \sin^2[\kappa d]
\end{aligned}
$$

Für $\kappa d = n\pi$ folgt $T=1$. Für $\kappa d=\frac{\pi}{2}(2n+1)$ ist $T$ minimal.

## Harmonischer Oszillator
Sei ein Teilchen in einem Potential $U(x) = \frac{1}{2}kx^2$, wobei $k=m\omega^2$ eine Art Federkonstante mit der Masse $m$ und der Frequenz $\omega$ beschreibt. Auch viele reelle Potentiale kann man als harmonisch annähern, wenn die Auslenkung bzw die Energie gering sind, dies nennt man harmonische Approximation. Deswegen ist der harmonische Oszillator in vielen Anwendungsgebieten sehr wichtig.

Der Ortsoperator $\hat x$ und der Impulsoperator $\hat p$ haben jeweils den Erwartungswert $0$, ihre zweiten statistischen Momente $\hat x^2$ und $\hat p^2$ hängen dagegen von der charakteristischen Länge $l$ ab. Die Wellenfunktion $\varphi_0(x)$ des Grundzustands $\ket{0}$ ist Gaußverteilt, höhere Zustände können mit dem Erzeugeroperator $\hat a^\dagger$ erreicht werden.

$$
\begin{aligned}
  l &= \sqrt{\frac{\hbar}{m\omega}} \\
  E_n &= \hbar\omega\left(n+\frac{1}{2}\right) \\
  \braket{\hat x^2}_{\ket{n}} &= l^2\left(n+\frac{1}{2}\right) \\
  \braket{\hat p^2}_{\ket{n}} &= \frac{\hbar^2}{l^2}\left(n+\frac{1}{2}\right) \\
  \varphi_0(x) &= \frac{1}{\sqrt[4]{\pi l^2}} \exp\left[-\frac{x^2}{2l^2}\right] \\
  \ket{n} &= \frac{1}{\sqrt{n!}}(\hat a^\dagger)^n \ket{0}
\end{aligned}
$$

Der Hamiltonoperator des harmonischen Oszillators kann auch durch den $\hat N$-Operator dargestellt werden. Damit hat er die selbe Form wie die Eigenenergien $E_n$.

### Eigenenergien
Seien $E_n$ Eigenenergien zu den Eigenzuständen $\ket{\varphi_n}=\ket{n}$ eines harmonischen Oszillators, die mit den Wellenfunktionen $\varphi_n(x)$ beschrieben werden. Der Grundzustand $\ket{0}$ ist Gaußverteilt mit Erwartungswert $0$ und Standardabweichung $l$, die charakteristische Länge genannt wird. Alle weiteren Zustände können durch Anwendung des Erzeugeroperators $\hat a^\dagger$ ermittelt werden.

$$
\begin{aligned}
  E_n &= \hbar\omega\left(n+\frac{1}{2}\right) \\
  l &= \sqrt{\frac{\hbar}{m\omega}} \\
  \varphi_0(x) &= \frac{1}{\sqrt[4]{\pi l^2}} \exp\left[-\frac{x^2}{2l^2}\right] \\
  \varphi_{n+1}
  &= \frac{1}{\sqrt{n+1}} \left(
  \frac{x}{l} - l\frac{\partial}{\partial x}
  \right) \varphi_n(x) \\
  \ket{n} &= \frac{1}{\sqrt{n!}}(\hat a^\dagger)^n \ket{0}
\end{aligned}
$$

#### Beweisidee: Analytische Methode
Die Eigenenergien des harmonischen Oszillators können analytisch ermittelt werden. Hier wird aber nur die Beweisidee erklärt.

Gesucht werden normierbare Lösungen des harmonischen Oszillators zu der stationären Schrödingergleichung. Hieraus folgt die Gleichung für die Eigenenergien $E_n$. Die Eigenzustandsfunktionen $\varphi_n(x)$ sind Hermite-Polynome.

#### Beweis: Algebraische Methode
Die Eigenenergien des harmonischen Oszillators können algebraisch ermittelt werden.

Die Leiteroperatoren erzeugen Eigenzustände, die um $1$ verschoben sind. Eigenwerte des Hamiltonoperators bzw. des Operators $N=a^\dagger a$ müssen nicht-negativ sein. Damit dies keinen Widerspruch erzeugt, müssen alle Eigenwerte natürliche Zahlen $\nu\in\mathbb N_0$ sein. Daraus folgt, dass $E_\nu=\hbar\omega\left(\nu+\frac{1}{2}\right)=E_n$ die Eigenwerte des Hamiltonoperators sein müssen.

Da $\ket{\nu}$ normierte Eigenzustände sind, muss auch der Zustand $a^\dagger\ket{\nu}$ nach Anwendung des Erzeugeroperators ein normierter Eigenzustand sein. Da $||a^\dagger\ket{\nu}||^2=\nu+1$, muss $\ket{\nu+1}=\frac{1}{\sqrt{\nu+1}}a^\dagger\ket{nu}$ ein normierter Eigenzustand zum Eigenwert $\nu+1$ sein. Analog folgt, dass $\ket{\nu-1}=\frac{1}{\sqrt{n}}a\ket{\nu}$ der Eigenzustand zum Eigenwert $\nu-1$ sein muss.

### Erwartungswerte von Ort und Impuls
Für den harmonischen Oszillator sind die Erwartungswerte des Ortsoperators $\hat x$ und des Impulsoperators $\hat p$ gleich $0$. Dies bedeutet, dass das Teilchen in der Ruhelage am Wahrscheinlichsten ist, ebenso wie es am Wahrscheinlichsten ist, dass das Teilchen sich in Ruhe befindet. Dies bedeutet jedoch nicht, dass es sich gleichzeitig in Ruhe _und_ in der Ruhelage befindet.

$$
\begin{aligned}
  \braket{\hat x}_{\ket{n}} &= 0\\
  \braket{\hat p}_{\ket{n}} &= 0\\
\end{aligned}
$$

Die zweiten statistischem Momente $\hat x^2$ und $\hat p^2$ sind dagengegen abhängig von der charakteristischen Länge $l$. Dies bedeutet, dass die Standardabweichung von $\hat x$ proportional zu $l$ ist, weshalb der Begriff der charakteristischen Länge sinnvoll ist. Die Standardabweichung von $\hat p$ ist dagegen umgekehrt proportional zu $l$, daher ist sorgt eine kurze charakteristische Länge für hohe Impulsfluktuationen. Dies ähnelt der Unschärferelation für Ort und Impuls.

$$
\begin{aligned}
  \braket{\hat x^2}_{\ket{n}} &= l^2\left(n+\frac{1}{2}\right)
  &&\Rightarrow&& \braket{\hat x^2}_{\ket{0}} = \frac{l^2}{2} \\
  \braket{\hat p^2}_{\ket{n}} &= \frac{\hbar^2}{l^2}\left(n+\frac{1}{2}\right)
  &&\Rightarrow&& \braket{\hat p^2}_{\ket{0}} = \frac{\hbar^2}{2l^2}
\end{aligned}
$$

### Die Leiteroperatoren
Der Erzeugeroperator $\hat a^\dagger$ und der Vernichteroperator $\hat a$ können einen Eigenzustand eines harmonischen Oszillators mit der charakteristischen Länge $l$ um ein Energieniveau anheben bzw. senken. Der Kommutator ergibt den Einheitsoperator.

$$
\begin{aligned}
  \hat a &= \frac{1}{\sqrt{2}l}
  \left(
  \hat{x} + \frac{i\hat{p}}{m\omega}
  \right) \\
  \hat a^\dagger\ket{n} &= \sqrt{n+1}\ket{n+1} \\
  \hat a\ket{n} &= \sqrt{n}\ket{n-1} \\
  [\hat a, \hat a^\dagger] &= \mathds 1
\end{aligned}
$$

Sei $\ket{\nu}$ ein Eigenzustand des harmonischen Oszillators. Dann sind $\hat a^\dagger\ket{\nu}$ ein Eigenzustand zum Eigenwert $\nu+1$ und $\hat a\ket{\nu}$ ein Eigenzustand zum Eigenwert $\nu-1$. Deswegen nennt man diese beiden Operatoren auch Leiteroperatoren.

Da der Vernichteroperator $\hat a$ durch den Ortsoperator $\hat x$ und den Impulsoperator $\hat p$ darstellbar ist, lassen sich diese beiden Operatoren auch durch die Leiteroperatoren darstellen. Beide Leiteroperatoren kombiniert ergeben den Besetzungszahloperator $\hat N$.

Die Eigenzustände der beiden Operatoren sind kohärente Zustände.

Analog zu den Leiteroperatoren werden die Operatoren $\hat J_\pm$ für Drehimpulse definiert.

#### Der $N$-Operator
Der $\hat N$-Operator ist eine Kombination der beiden Leiteroperatoren des harmonischen Oszillators. Damit kann man den Hamiltonoperator $\hat H$ einfach darstellen.

$$
\begin{aligned}
  \hat N &= \hat a^\dagger \hat a \\
  \hat N\ket{n} &= n\ket{n} \\
  \hat H &= \hbar\omega\left(\hat a^\dagger \hat a + \frac{1}{2}\right)
\end{aligned}
$$

##### Eigenschaften
Dazu stellt man den Ortsoperator und Impulsoperator mit den Leiteroperatoren dar und setzt diese in den Hamiltonoperator des harmonischen Oszillators ein. Dadurch hat der Operator $\hat N$ dasselbe Spektrum wie der Hamiltonoperator $\hat H$.

Wenn $\nu$ ein Eigenwert von $\hat N$ ist, dann ist $E_\nu=\hbar\omega\left(\nu+\frac{1}{2}\right)$ ein Eigenwert zum Hamiltonoperator. Aus dem Kommutator der Leiteroperatoren folgt $\hat N^\dagger\ket{n} = (1+n)\ket{n}$, der Eigenwert ist dann um $1$ erhöht.

$N$ ist hermitesch, daher hat $N$ reelle Eigenwerte. Weiterhin ist $N$ positiv-semidefinit. Ähnlich wie beim Skalarprodukt bedeutet dies, dass der Eigenwert von $N$ nicht-negativ ist. Ist der betreffende Eigenzustand $\ket{\nu}=0$, so ist der Eigenwert $\nu>0$. Falls der Eigenwert $\nu=0$ verschwindet, ist der Eigenzustand $\ket{\nu}=0$ ebenfalls verschwunden.

$$
\begin{aligned}
  \hat N^\dagger\ket{n} &= (n+1)\ket{n} \\
  [\hat N, \hat a] &= -\hat a \\
  [\hat N, \hat a^\dagger] &= \hat a^\dagger
\end{aligned}
$$

### Plank'sche Strahlungsformel
Die Energie $E_k$ ist gequantelt in Vielfachen von $\hbar\omega_k$, wobei $\omega_k=c|\vec{k}|$ die Frequenz zum Wellenvektor $\vec{k}$ mit der Lichtgeschwindigkeit $c$. Mit $n\in\mathbb N_0$ gilt $E_k = n\cdot \hbar\omega_k$. Dadurch kann der Erwartungswert der Energie bei der Temperatur $T$ bestimmt werden. Hierbei ist $\braket{n}$ der Erwartungswert der Phononenzahl im thermischen Gleichgewicht, die durch die Bose-Einstein-Verteilung beschrieben wird.

$$
  \braket{E_k}_T = \hbar\omega_k\braket{n}_T = \frac{\hbar\omega_k}{
  \exp\left[\frac{\hbar\omega_k}{k_bT}\right] - 1
  }
$$

Damit können die Schwingungsmoden abgezählt und die Intensität $I$ der Strahlung beschrieben werden, wobei $\gamma$ eine beliebige Konstante ist. Dies ist die Plank'sche Strahlungsformel.

$$
  I(\omega) = \gamma \frac{\hbar\omega^3}{\exp\left[\frac{\hbar\omega_k}{k_bT}\right] - 1}
$$

# 7. Kohärente Zustände
Kohärente Zustände sind quasi-klassische Zustände. Sie sind in der Quantenoptik besonders interessant, da optische Wellen in einem begrenzten Raum durch stehende Wellen eines harmonischen Oszillators beschrieben werden.

Für große $n\gg 1$ sind die Eigenenergiezustände $\ket{n}$ delokalisiert, haben aber stationäre Lösungen $\varphi_n(x)$. Klassische Zustände sind stattdessen lokal und nicht-stationär, beispielsweise als $\rho_t(x)=\delta(x-x_0)$.

Um möglichst lokale Zustände $\ket{\Psi(x)}$ zu beschreiben, sollte der der Erwartungswert der Varianz $\braket{\Delta x}$ im Vergleich zum zweiten statistischen Moment $\braket{x^2}$ klein sein $(\braket{(\Delta x)^2}_t\ll \braket{x^2}_t)$. Dies kann man durch Auslenkung oder durch Anstoßen des Teilchens erzeugen, also durch eine Ortstranslation oder eine Impulstranslation. Dies sowie die Kombination beider Translationen wird durch den Verschiebungsoperator dargestellt.

## Verschiebungsoperator
Der Verschiebungsoperator $\hat D(\alpha) := \hat{\tilde{T}}(\alpha)\hat T(\alpha)$ ist die allgemeine Kombination von Ortstranslation $\hat T$ und Impulstranslation $\hat{\tilde T}$, die beide durch den Translationsoperator dargestellt werden. Hierbei ist $\alpha\in\mathbb C$ eine komplexe Zahl.

$$
\begin{aligned}
  D(\alpha) &\equiv \tilde{T}(\alpha)T(\alpha)
  = \exp\left[\alpha a^\dagger - \alpha^* a\right] \\
  D(\alpha) &=
  \mathrm e^{i\varphi}
  \tilde{T}\left(\frac{\sqrt{2}\hbar}{l} \Im(\alpha) \right)
  T\left(\sqrt{2}l\Re(\alpha)\right)
\end{aligned}
$$

Sei $\alpha=u + iv$ mit $u,v\in\mathbb R$. Falls $\alpha$ reell ist ($\Im(\alpha)=v= 0$), beschreibt $D(\alpha)=T(\sqrt{2}l u)$ eine reine Translation. Falls $\alpha$ imaginär ist ($\Re(\alpha)=u=0$), beschreibt $D(\alpha)=\tilde{T}(\frac{\sqrt{2}\hbar}{l} \alpha)$ eine reine Impulstranslation.

Im allgemeinen Fall kann man $D(\alpha)$ folgendermaßen darstellen. Hierzu sind $\hat A$ und $\hat B$ die Operatoren, die in den Exponenten der (Impuls-)Translationsoperatoren auftauchen. In diesem Fall ist die Baker-Campbell-Hausdorff-Identität für Rechnungen interessant.

$$
\begin{aligned}
  \hat A &:= i\sqrt{2}v\frac{\hat{x}}{l} \\
  \hat B &:= -i\sqrt{2}lu\frac{\hat{p}}{\hbar} \\
  \hat D(\alpha) &= \exp[\hat A] \exp[\hat B]
\end{aligned}
$$

### Baker-Campbell-Hausdorff-Identität
Für Operatoren $\hat A$ und $\hat B$, die mit $[\hat A, \hat B]$ vertauschen, gilt folgende Identität. Sie ist unter anderem für den Verschiebungsoperator interessant.

$$
  \mathrm{e}^{\hat A} \mathrm{e}^{\hat B} = \mathrm{e}^{[\hat A,\hat B]} \mathrm{e}^{\hat A+\hat B}
$$

### Rechnen mit dem Verschiebungsoperator
Kohärente Zustände $\ket{c(\alpha)}$ können durch den den Verschiebungsoperator $\hat D(\alpha)$ definiert werden, wobe $\alpha$ ein komplexwertiger Parameter $\mathbb C\ni \alpha = u+iv$ ist. Mit der Baker-Campbell-Hausdorff-Identität ergibt sich folgende Relation.

$$
\begin{aligned}
  \hat D(\alpha) &= \exp\left[\alpha \hat a^\dagger - \alpha^* \hat a\right] \\
  \hat D(\alpha) &=
  \mathrm e^{iuv}
  \hat{\tilde{T}}\left(\frac{\sqrt{2}\hbar}{l} \Im(\alpha) \right)
  \hat T\left(\sqrt{2}l\Re(\alpha)\right)
\end{aligned}
$$

Der zeitentwickelte Zustand $\hat U(t)\ket{c(\alpha)}$ bewegt sich ähnlich zum klassischen Fall auf einer Ellipse im Phasenraum.

$$
\begin{aligned}
  \ket{c(\alpha)} &= \hat D(\alpha)\ket{0} \\
  \hat U(t)\ket{c(\alpha)}
  &= \exp\left[-i\omega \frac{t}{2}\right]
  {\Large \ket{
  {\normalsize c{\large(}\exp[-i\omega t]\alpha{\large)}}}
  }
\end{aligned}
$$

Zum konkreten Rechnen kann man die Definitionen von $\hat{\tilde{T}}$ und $\hat T$ einsetzen und erhält eine strukturell einfache Gleichung für $\hat D(\alpha)$.

# 8. Störungstheorie
Ein reales System soll durch einen Hamiltonoperator $\hat H$ beschrieben werden. Dabei soll das System nicht ideal sein, sondern geringfügig von einem idealen System abweichen. Dies kann ein näherungsweise harmonischer Oszillator sein, oft wird auch das Wasserstoffatom als ideales System verwendet.

Durch Störungen kommt es zu Niveauabstoßung, wodurch Abstände zwischen Energieniveaus vergrößert werden können.

Der Hamiltonoperator des idealen Systems sei $\hat H_0$, zudem gebe es Korrekturen $\hat H_i$ $(i>0)$. Sei $\lambda$ ein dimensionsloser Faktor, der die Störung klein hält $(|\lambda|\ll 1)$. Wird diese Störung zu groß, kann man die Störungstheorie nicht mehr anwenden.

Dann kann der reelle Hamiltonoperator als $\hat H = \hat H_0 + \sum_{i=1}^n\lambda^i H_i$ entwickelt werden. Für nur eine Korrektur $\hat H_1$ gilt $\hat H = \hat H_0 + \lambda \hat H_1$. Analog können auch die reellen Eigenenergien $E_n(\lambda)$ und die reellen Eigenzustände $\ket{n(\lambda)}$ durch Korrekturterme dargestellt werden. Die $i$-ten Korrekturterme $E_n^{(i)}$ und $\ket{n_i}$ werden durch eine Potenzreihenentwicklung ermittelt.

## Zeitunabhängige Störungstheorie
Man kann die zeitunabhängige Störungstheorie nutzen, wenn die Störung des Systems konstant in der Zeit ist, also wenn die Störung selbst zeitunabhängig ist.

### Entartung von Zuständen
Man spricht in der Quantenphysik von Entartung, wenn zum selben Eigenwert einer Observablen mehrere voneinander linear unabhängige Eigenzustände existieren. Dazu müssen die Energieniveaus für unterschiedliche Eigenzustände gleich sein.

$$
  \exists \ket{m}\neq \ket{n}:\ E_n = E_m
$$

### Nicht-entartete Zustände
Die zeitunabhängige Störungstheorie soll hier für nicht-entartete Zustände angewandt werden. Das Fehlen von Entartung bedeutet, dass die Energieniveaus für $\forall m\neq n$ ungleich sind ($E_n\neq E_m$).

Die Lösungsidee ist eine Potenzreihenentwicklung um $\lambda$. $E_n^{(0)}$ und $\ket{n^{(0)}}$ sind die Korreturterme $0$-ter Ordnung. Diese Lösungen erfüllen die stationäre Schrödingergleichung, die in $2$-ter Ordnung folgendermaßen aussieht.

$$
\begin{aligned}
  E_n(\lambda) &= E_n^{(0)} + \lambda E_n^{(1)} + \lambda^2 E_n^{(2)} + \mathcal O(\lambda^3) \\
  \ket{n(\lambda)} &= \ket{n^{(0)}} + \lambda\ket{n^{(1)}} + \lambda^2\ket{n^{(2)}} + \mathcal O(\lambda^3) \\
  (\hat H_0+\lambda \hat H_1)\ket{n(\lambda)} &\overset{!}{=} E_n(\lambda) \ket{n(\lambda)} \\
  \Rightarrow (\hat H_0+\lambda \hat H_1)
  (\ket{n^{(0)}} + \lambda\ket{n^{(1)}} + \lambda^2\ket{n^{(2)}})
  &\overset{!}{\approx} (E_n^{(0)} + \lambda E_n^{(1)} + \lambda^2 E_n^{(2)})
  (\ket{n^{(0)}} + \lambda\ket{n^{(1)}} + \lambda^2\ket{n^{(2)}})
\end{aligned}
$$

Um diese Gleichung zu lösen kann man nach Potenzen von $\lambda$ separieren. Dann kann man die Koeffizienten vergleichen. Dadurch erhält man je eine Gleichung für die Terme mit $\lambda^0$, $\lambda^1$ und $\lambda^2$. Dies geht, da die Schrödingergleichung für alle $\lambda$ gelten muss.

$$
\begin{aligned}
  \hat H_0\ket{n^{(0)}} &= E_n^{(0)}\ket{n^{(0)}} && (0)\\
  \hat H_0\ket{n^{(1)}} + \hat H_1\ket{n^{(0)}}
  &= E_n^{(0)}\ket{n^{(1)}} + E_n^{(1)}\ket{n^{(0)}} && (1)\\
  \hat H_0\ket{n^{(2)}} + \hat H_1\ket{n^{(1)}} &=
  E_n^{(0)}\ket{n^{(2)}} + E_n^{(1)}\ket{n^{(1)}} + E_n^{(2)}\ket{n^{(0)}} && (2)
\end{aligned}
$$

Die $\lambda^0$-Terme ergeben die ursprünglichen Eigenenergien und Eigenzustände. Eine Normierung von $\braket{n^{(0)}|n(\lambda)} \overset{!}{=} 1$ ist sinnvoll. Da diese für alle $\lambda$ gelten soll, folgt dass die ursprünglichen Eigenzustände $\ket{n^{(0)}}$ und die Korrekturen $\ket{n^{(l)}}$ für $l\ge 1$ orthogonal ($\braket{n^{(0)}|n^{(l)}}=0$) sein müssen.

In der $0$-ten Ordnung erhält man aus aus dem Multiplizieren von $\bra{n^{(0)}}$ an die der Gleichung $(0)$ die Eigenenergie $E_n$. In der $1$-ten Ordnung erhält man mit Gleichung $(1)$ auf analoge Weise $E_n^{(1)}=\braket{n|\hat H_1|n}$, was der Erwartungswert der Störung ist.

Um mit Gleichung $(2)$ ebenso verfahren zu können, muss zunächst $\ket{n^{(1)}}$ ermittelt werden, um die Gleichung aufzulösen. Daraus erhält man $E_n^{(2)}=\sum_{m\neq n} \frac{|\braket{m|\hat H_1|n}|^2}{E_n-E_m}$. Dies ist die Summe der Betragsquadrate der Matrixelemente der Störung, die durch die Energiedifferenz dividiert werden.

$$
\begin{aligned}
  E_n(\lambda) &= E_n + \lambda \braket{n|\hat H_1|n} + \mathcal O(\lambda^2) \\
  E_n(\lambda) &= E_n + \lambda \braket{n|\hat H_1|n} + \lambda^2\sum_{m\neq n} \frac{|\braket{m|\hat H_1|n}|^2}{E_n-E_m} + \mathcal O(\lambda^3) \\
\end{aligned}
$$

Sei die Störung $\hat H_1$ durch Matrix mit den Matrixelementen $H_{1, mn} = \braket{m|\hat H_1|n}$ dargestellt. Sei $\ket{m}=\ket{m^{(0)}}$ ein von $\ket{n}$ unterschiedlicher ungestörter Zustand.

$$
\begin{aligned}
  \ket{(n^{(1)})} &= \sum_{m\neq n} c_m \ket{m} \\
  \Rightarrow \ket{(n^{(1)})} &= \sum_{m\neq n} \frac{\braket{m|\hat H_1|n}}{E_n-E_m} \ket{m}
\end{aligned}
$$

### Niveauabstoßung
Existierende Differenzen von Energieniveaus werden durch Störungen immer vergrößert, jedoch nie verringert. Dies geschieht durch die Terme zweiter Ordnung aus der Störungstheorie. Da die Korrekturterme zweiter Ordnung negativ sind, wird der Grundzustand durch die Störungen abgesenkt.

Dieser Effekt sorgt bei Festkörpern dafür, dass es verschiedene getrennte Energieniveaus gibt. Diese getrennten Energieniveaus nennt man in der Festkörperphysik Bänder.

### Beispiel: Harmonischer Oszillator mit Anharmonizität
Sei $\hat H_1=\hbar\omega\left(\frac{\hat x}{l}\right)^3$ eine kleine Anharmonizität eines ansonsten harmonischen Oszillators. In der Rechnung mittels Störungstheorie wird der Ortsoperator $\hat x$ durch Leiteroperen dargestellt. Bei der Potenz $(a^\dagger + a)^3$ sind die Terme mit weniger Erzeugern $a^\dagger$ als Vernichtern $a$ irrelevant, da $a\ket{0}=\ket{0}$.

$$
\begin{aligned}
  \hat H &= \underbrace{\frac{\hat p^2}{2m} + \frac{m\omega^2}{2}\hat x^2}_{\hat H_0}
  + \lambda \underbrace{\hbar\omega\left(\frac{\hat x}{l}\right)^3}_{\hat H_1} \\
  \Rightarrow E_n(\lambda) &=
  \hbar\omega\left(n+\frac{1}{2}\right)
  + \lambda \frac{\hbar\omega}{l^3}\braket{n|\hat x^3|n}
  - \lambda^2 \hbar^2\omega^2
  \sum_{m\neq n} \frac{|\braket{m|\frac{\hat x^3}{l^3}|n}|^2}{\hbar\omega} \\
  \Rightarrow E_0(\lambda) &=
  \hbar\omega\left(n+\frac{1}{2}\right)
  + \underbrace{\lambda \frac{\hbar\omega}{l^3}\braket{0|\hat x^3|0}}_{=0}
  - \lambda^2 \hbar^2\omega^2
  \sum_{m\neq 0} \frac{|\braket{m|\frac{\hat x^3}{l^3}|0}|^2}{\hbar\omega}
\end{aligned}
$$

### Entartete Zustände
Sei der Zustand mit Energie $E_l$ $g$-fach entartet, d.h. es gibt $g$ Teilchen im Zustand $\ket{l}$. Dann gibt es einen $g$-dimensionalen Eigenraum $\mathcal H_l \subset \mathcal H$, sodass für alle enthaltenden Zustände $\ket{\Psi}\in\mathcal H_l$ die Eigenwertgleichung $\hat H_0\ket{\Psi}=E_l\ket{\Psi}$ gilt.

Eine Orthonormalbasis, bei der für verschiedene Basisvektoren $h\neq l$ das Skalarprodukt mit der Störung $\braket{\varphi_h|\hat H_1|\varphi_l}=0$ verschwindet und $\braket{\varphi_h|\varphi_l}=\delta_{hl}$ gilt, ist für die Störungstheorie ist eine besonders gut geeignet. Diese kann durch eine Projektion auf $\mathcal H_l$ beschrieben werden, indem $\hat{\tilde{H}}_1 = \hat P_l \hat H_1\hat P_l$ den in die entsprechende Basis transformierten Hamiltonoperator beschreibt.

Nichtentartete Zustände $\ket{n}\neq \ket{l}$ sind senkrecht zu den Basisvektoren $\ket{\varphi_k}$ $(\braket{\varphi_k|n}=0)$. Analog zu den nicht-entarteten Zuständen liefert die Potentzreihenentwicklung mit anschließendem Koeffizientenvergleich folgende Relationen mit $j\in\{1,\dots, g\}$.

$$
\begin{aligned}
  E_{l,j}(\lambda) &= E_l + \lambda \braket{\varphi_j|\hat H_1|\varphi_j}
  + \sum_{m\neq l} \frac{|\braket{m|\hat H_1|\varphi_j}|^2}{E_l-E_m} + \mathcal O(\lambda^3) \\
  E_{n\neq j}(\lambda) &= E_n + \lambda \braket{n|\hat H_1|n}
  + \sum_{m\neq n\neq l} \frac{|\braket{m|\hat H_1|n}|^2}{E_n-E_m}
  + \sum_{j=1}^g \frac{|\braket{\varphi_j|\hat H_1|n}|^2}{E_n-E_l}
  + \mathcal O(\lambda^3)
\end{aligned}
$$

Der Zeemann-Effekt ist ein Beispiel für Störungen mit entarteten Zuständen.

## Zeitabhängige Störungstheorie
Im Unterschied zur zeitunabhängigen Störungstheorie darf die Störung in der Zeit variabel sein. Dies wird durch ein zeitabhängiges Potential $\hat V(t)$ beschrieben. Die Dynamik des gestörten Systems soll nun in Bezug auf die ungestörte Dynamik von $\hat H_0$ mit den Energieeigenwerten $E_n$ und Zuständen $\ket{n}$ bestimmt werden.

$$
  \hat H(t) = \hat H_0 + \hat V(t)
$$

Entsprechend kann der Zeitentwicklungsoperator $\hat U_0(t)$ für das ungestörte System aufgestellt werden. Dabei wird das Wechselwirkungsbild verwendet.

### Übergangswahrscheinlichkeit
Für die zeitabhängige Störungstheorie ist es sinnvoll, eine Übergangswahrscheinlichkeit $P_{nm}(t)$ zu definieren. Wenn ein System zum Zeitpunkt $t=0$ im ungestörten $\hat H_0$-Eigenzustand $\ket{n}$ ist, dann befindet es sich zum Zeitpunt $t$ mit einer Übergangswahrscheinlichkeit $P_{nm}(t)=|\braket{m|n}|^2$ im Zustand $\ket{m}$.

Falls das zeitabhängige Störungspotential $\hat V(t)=0$ verschwindet, ist die Übergangswahrscheinlichkeit $P_{nm}(t)=0$ ebenfalls nichtexistent. Ansonsten muss die folgende Schrödingergleichung gelöst werden um den Zustand zu bestimmen. Hierbei ist $U_0(t)$ der Zeitentwicklungsoperator des ungestörten Systems.

$$
\begin{aligned}
  i\hbar\ket{\dot{\Psi}(t)} &= (\hat H_0+\hat V(t))\ket{\Psi(t)} \\
  \ket{\Psi(t)} &= \hat U_0(t) \ket{\Psi(0)}
\end{aligned}
$$

Den ersten Korrekturterm für die Übergangswahrscheinlichkeit $P_{nm}^{(1)}$ kann man über die Definition $P_{nm}^{(1)}(t)=|\braket{m|\Psi(t)}^{(1)}_I|^2$ berechnen, wobei $\ket{m}$ ein ungestörter Zustand ist und $\ket{\Psi(t)}_I^{(1)}$ der Störungszustand im Wechselwirkungsbild in erster Ordnung. Da $\ket{\Psi(t)}=\hat U_0(t)\ket{\Psi(t)}_I\equiv\ket{\Psi(t)}_I^{(1)}$ und $\ket{\Psi(0)}=\ket{n}$ gelten, folgt die Relation für die Übergangswahrscheinlichkeit in erster Ordnung.

$$
\begin{aligned}
  P_{nm}^{(1)} &= |\braket{m|\Psi(t)}_I^{(1)}|^2 \\
  P_{nm}^{(1)} &= \frac{1}{\hbar^2}
  \left|
  \int_0^t \mathrm dt^\prime \exp\left[\frac{i}{\hbar}(E_m-E_n)t^\prime\right]
  \braket{m|\hat V(t^\prime)|n}
  \right|^2
\end{aligned}
$$

### Wechselwirkungsbild
In der zeitabhängigen Störungstheorie wird die ungestörte $\hat H_0$-Dynamik von der störenden $\hat V(t)$-Dynamik getrennt. Dazu benutzt man das Wechselwirkungsbild.

Seien $\ket{\Psi(t)}$ ein Zustand im ungestörten Schrödingerbild, das die Schrödingergleichung $i\hbar\ket{\dot{\Psi}(t)} = (\hat H_0+\hat V(t))\ket{\Psi(t)}$ löst und sei $\ket{\Psi(t)}_I$ ein Zustand im Wechselwirkungsbild, $\hat U_0^\dagger(t)$ ist der adjungierte Zeitentwicklungsoperator des ungestörten Systems.

$$
  \ket{\Psi(t)}_I
  = \hat U_0^\dagger(t) \ket{\Psi(t)}
  = \exp\left[+i\frac{\hat H_0}{\hbar}t\right] \ket{\Psi(t)}
$$

Dies entfernt die ungestörte Dynamik aus dem zeitabhängigen Zustand, ohne Störung $(\hat V(t)=0)$ ist der Zustand im Wechselwirkungsbild konstant gleich dem Zustand zum Zeitpunkt $0$ $(\ket{\Psi(t)}_I=\ket{\Psi(0)})$.

Die Störungstheorie kann durch iteratives Lösen der Schrödingergleichung im Wechselwirkungsbild gelöst werden.

#### Operatoren im Wechselwirkungsbild
Ein Operator $\hat V(t)$ kann in das Wechselwirkungsbild transformiert werden. Diese Transformation erzeugt den Operator $\hat V_I(t)$ im Wechselwirkungsbild und ist folgendermaßen definiert. Damit kann die Schrödingergleichung im Wechselwirkungsbild aufgestellt werden. Dabei ist $\hat U_0(t)$ der Zeitentwicklungsoperator des ungestörten Systems

$$
  \hat V_I(t) = \hat U_0^\dagger(t) \hat V(t) \hat U_0(t)
$$

Wird $\hat V_I(t)$ auf einen Vektor $\ket{\Psi(0)}$ angewandt, beschreibt $\hat V_I(t)\ket{\Psi(0)}$ die Wirkung des Operators $\hat V(t)$ auf den Zustand $\ket{\Psi(t)}=\hat U_0(t)\ket{\Psi(0)}$, der ins Wechselwirkungsbild transformiert wurde wurde.

$$
\begin{aligned}
  \hat V_I(t)\ket{\Psi(0)}
  &= \hat U_0^\dagger(t) \hat V(t) \cdot (\hat U_0(t) \ket{\Psi(0)}) \\
  &= \hat U_0^\dagger(t) \cdot (\hat V(t) \ket{\Psi(t)})
\end{aligned}
$$

#### Schrödingergleichung im Wechselwirkungsbild
Der Zustand $\ket{\Psi(t)}_I$ im Wechselwirkungsbild der Schrödingergleichung im Wechselwirkungsbild genügen. Hieran sieht man, dass die Dynamik von $\ket{\Psi(t)}_I$ durch das Wechselwirkungsbild der Störung $\hat V_I(t)$ beschrieben wird.

$$
  i\hbar \ket{\dot{\Psi}(t)}_I = \hat V_I(t)\ket{\Psi(t)}_I
$$

### Störungstheorie in $n$-ter Ordnung
Der Störungszustand in $n$-ter Ordnung wird durch die Wirkung der Störung auf den Störungszustand $n-1$-ter Ordnung beschrieben. In $0$-ter Ordnung gilt im Wechselwirkungsbild $i\hbar \ket{\dot{\Psi}(t)}_I^{(0)} = 0$, in $1$-ter Ordnung gilt $i\hbar \ket{\dot{\Psi}(t)}_I^{(1)} = \hat V_I(t) \ket{\Psi(t)}^{(0)}$ et cetera.

$$
\begin{aligned}
  \ket{\Psi(t)}_I^{(0)} &= \ket{\Psi(0)} \\
  i\hbar \ket{\dot{\Psi}(t)}_I^{(n)} &= \hat V_I(t) \ket{\Psi(t)}^{(n-1)}
\end{aligned}
$$

Dadurch können die Störungszustände bis $2$-ter Ordnung folgendermaßen ermittelt werden. Das letzte Integral ist dabei extrem schwierig, da die Integrationsgrenze des inneren Integrals vom äußeren Integranten abhängt.

$$
\begin{aligned}
  \ket{\Psi(t)}_I^{(0)} &= \ket{\Psi(0)} \\
  \Rightarrow \ket{\Psi(t)}_I^{(1)} &= \ket{\Psi(t)}^{(0)}
  - \frac{i}{\hbar} \int_{t_0}^t \mathrm dt^\prime \hat V_I(t^\prime) \ket{\Psi(0)} \\
  \Rightarrow \ket{\Psi(t)}_I^{(2)} &= \ket{\Psi(t)}^{(0)}
  - \frac{i}{\hbar} \int_{t_0}^t \mathrm dt^\prime\hat V_I(t^\prime) \ket{\Psi(0)}
  + \left(-\frac{i}{\hbar}\right)^2
  \int_{t_0}^t \mathrm dt^\prime \hat V_I(t^\prime)
  \int_{t_0}^{t^\prime} \mathrm dt^{\prime\prime}
  \hat V_I(t^{\prime\prime}) \ket{\Psi(0)}
\end{aligned}
$$

### Fermis goldene Regel
Seien zwei Energieniveaus mit der Differenz $E_m-E_n =\hbar\omega$ gegeben. Bei der spontanen Absorbtion eines Photons der Energie $\hbar\omega$ wechselt ein Elektron vom Zustand $\ket{n}$ in den Zustand $\ket{m}$. Bei der induzierten Emission eines Photons wechselt ein Elektron vom Zustand $\ket{n}$ in den energieärmeren Zustand $\ket{n}$. Ein Anwendungsbeispiel ist der Laser.

Erst durch die Existenz eines äußeren Feldes wird der Wechsel von Elektronen zwischen Energieniveaus angeregt. In Isolation sind alle erreichbaren Niveaus Eigenzustände.

Dies wird als Fermis goldene Regel bezeichnet, auch wenn Pauli diese Regel früher erkannte. Etwas ausgedrückt gibt genau es eine Resonanz mit der Übergangsrate $\Gamma_{nm}$, wenn die Frequenz $\omega$ einer oszillierenden Störung der Frequenz der Energiedifferenz $\frac{E_m-E_n}{\hbar}$ entspricht.

$$
  \Gamma_{nm} = \frac{2\pi}{\hbar} \left[
  |u_{nm}|^2 \delta(E_m-E_n-\omega\hbar)
  + |u_{mn}|^2 \delta(E_m-E_n+\omega\hbar)
  \right]
$$

#### Berechnung
Sei $\hat V(t)$ eine Störung, die mit der Frequenz $\omega$ oszilliert. Damit kann Fermis goldene Regel ermittelt werden.

$$
  \hat V(t) = u\exp[i\omega t] + u^\dagger \exp[i\omega t]
$$

Falls $u=u^\dagger=\frac{V_0}{2}$ gilt, dann ist $V(t)=V_0\cos(\omega t)$. Damit ist die Eigenenergie $E_x(t)=E_0 \cos(\omega t)$, wodurch der Operator $\hat V$ als $V(t)=-qE_0\hat{x}\cos(\omega t)$ dargestellt wird.

Mit der Störungstheorie erster Ordnung wird die Übergangswahrscheinlichkeit $P_{nm}(t)$ gesucht.

$$
  \Gamma_{nm} = \frac{2\pi}{\hbar} \left[
  |u_{nm}|^2 \delta(E_m-E_n-\omega\hbar)
  + |u_{mn}|^2 \delta(E_m-E_n+\omega\hbar)
  \right]
$$

#### Laser
Bei einem Laser werden Zustände erzeugt, bei denen möglichst viele Elektronen in Zuständen $\ket{n}$ sitzen. Dann kann eine passende elektromagnetische Welle die Elektronen auf Zustände $\ket{m}$ anregen. Dann kann man die Emission von Photonen induzieren. All diese Photonen haben die selbe Energie.

Die Gleichheit der Energie aller Photonen kann man mit Fermis goldene Regel belegen. Mit mit kohärenten Zuständen kann man auch erklären, dass auch die Phase der emittierten Photonen gleich ist.

# 9. Unbestimmtheitsrelationen
## Heisenberg'sche Unbestimmtheit
Heisenberg hat deutlich kompliziertere Überlegungen als das, was heutzutage normalerweise als Heisenberg'sche Unbestimmtheitsrelationen bezeichnet wird. Es ging darum, Elektronen zu messen. Dazu würden Gamma-Quanten benötigt, aber eine Messung beeinflusst das gemessene Elektron durch den Compton-Effekt. Je genauer der Ort $x$ bestimmt werden soll, desto größer ist die Impulsungenauigkeit $\Delta p$ des Elektrons _nach_ der Messung. Hierbei werden $x$ und $p$ nacheinander im selben System gemessen, die Systeme sind demnach nicht unabhängig.

$$
  \Delta x\Delta p \ge \frac{\hbar}{2}
$$

Dies ist nicht mit der Ort-Impuls-Unschärfe bei _unabhängigen_ Messungen zu verwechseln, die aus dem nicht-verschwindenden Kommutator von Ortsoperator und Impulsoperator folgt.

## Unbestimmtheit von Messungen
Eine Unbestimmtheitsrelation existiert, wenn zwei Operatoren nicht kommutieren.

$$
  \Delta \hat A_\Psi \Delta \hat B_\Psi \ge \frac{1}{2} |\braket{i[\hat A, \hat B]}_\Psi|
$$

Wird eine Observable $\hat A$ im Zustand $\ket{\Psi}$ gemessen, so kann man den Erwartungswert $\braket{\hat A}_\Psi=\braket{\Psi|\hat A|\Psi}$ berechnen. Die Standardabweichung $\Delta \hat A_\Psi = (\hat A-\braket{\hat A}_\Psi)$ ist ebenfalls eine Observable, die die Wurzel der Varianz $(\Delta \hat A_\Psi)^2=\braket{(\hat A-\braket{\hat A}_\Psi)}_\Psi$ ist.

Nach dem Messpostulat kann man einzelne Zustände mit einer bestimmbaren Wahrscheinlichkeit messen. Durch wiederholte Messungen kann man den Erwartungswert genauer bestimmen. Allerdings zeigt sich, dass die Varianz nicht beliebig genau gemessen werden kann.

Das Produkt zweier Varianzen $\Delta \hat A_\Psi$ und $\Delta \hat B_\Psi$ von zwei Observablen $\hat A$ und $\hat B$ kann nicht kleiner werden, als der halbe Betrag des Erwartungswertes des Kommutators $[\hat A,\hat B]$ der Operatoren $\hat A$ und $\hat B$. Dazu müssen die Messungen von $\hat A$ und $\hat B$ an _unabhängigen_ Systemen im gleichen Zustand $\ket{\Psi}$ gemessen werden.

### Beweis
Seien $\hat A$ und $\hat B$ Observablen, die durch hermitesche Operatoren dargestellt werden und sei $x\in\mathbb R$. Ohne Beschränkung der Allgemeinheit seien die Erwartungwerte von $\hat A$ und $\hat B$ $\braket{\hat A}_\Psi = \braket{\hat B}_\Psi = 0$.[^8] Dann kann damit die Unbestimmtheitsrelation gezeigt werden.

$$
\begin{aligned}
  0 &\le ||(\hat A+i\hat Bx)\ket{\Psi}||^2 \\
  &= \bra{\Psi} (\hat A-i\hat Bx)(\hat A+i\hat Bx) \ket{\Psi} \\
  &= \braket{\hat A^2}_\Psi + x^2\braket{\hat B^2}_\Psi + ix\braket{\hat A\hat B - \hat B\hat A}_\psi \\
  &= \Delta \hat A^2_\Psi + \Delta \hat B^2_\Psi + x\braket{i[\hat A,\hat B]} \\
  &=: a^2 + b^2 + x\cdot c \\
\end{aligned}
$$

Da $\braket{\hat A}_\Psi=0$ gilt $\braket{\hat A^2}_\Psi = \Delta \hat A_\Psi^2$. $c\in\mathbb R$ ist genau dann reell, wenn $i[\hat A,\hat B]$ hermitesch ist.

$$
\begin{aligned}
  i[A,B] &= (i[A,B])^\dagger \\
  &= (iAB - iBA)^\dagger \\
  &= -i(AB)^\dagger +i(BA)^\dagger \\
  &= -iBA +iAB \\
  &= i[A,B]
\end{aligned}
$$

Durch quadratische Ergänzung kann die Gleichung $0\le a^2+b^2+xc$ zu $a^2b^2\ge \frac{c^2}{4}$ umgeformt werden, wenn $x=\frac{c}{2b^2}$ gewählt wird. Durch diese Wahl kann $x$ aus der Gleichung eliminiert werden. Daraus folgt die Unschärferelation.

[^8]: Falls dies nicht der Fall ist, kann man Wertebereich um den entsprechenden Erwartungswert verschieben, um diesen Zustand zu erreichen.

### Orts- und Impulsungenauigkeit
Der Ortsoperator $\hat x$ und der Impulsoperator $\hat p$ kommutieren nicht. Aus dem Kommutator folgt eine Unbestimmtheitsrelationen für Ort und Impuls.

$$
\begin{aligned}
  [\hat{x}, \hat{p}] &= i\hbar\mathds 1 \\
  \Delta x\Delta p &\ge \frac{\hbar}{2}
\end{aligned}
$$

Das Ergebnis sieht aus wie Heisenbergs Formulierung, in seiner Betrachtung werden jedoch $x$ und $p$ im selben System nacheinander gemessen, die Messungen sind also nicht unabhängig.

## Das Variationsprinzip
Mithilfe der Unbestimmtheitsrelationen kann verschiedene Eigenschaften abschätzen.

Beispielsweise kann der Impuls eines freien Teilchens oder die Grundzustandsenergie im Potentialkasten abgeschätzt werden, ebenso der Bohr-Radius des Wasserstoffatoms.

Bei der Messung eines freien Teilchens werden nicht-kommutierende Observablen unbestimmt. Bei kommutierendem Observablen haben die Operatoren eine gemeinsame Eigenbasis.

### Impuls eines freien Teilchens
Mithilfe des Variationsprinzipes kann der Impuls eines freien Teilchens in einer Dimension abgeschätzt werden.

Sei ein Teilchen im Zustand $\ket{\Psi}$ in einer Dimension. Im Ortsraum gilt die Ortswellenfunktion $\Psi(x) = \braket{\varphi_x|\Psi}$.

$$
\begin{aligned}
  \Psi(x) &= \frac{1}{\sqrt[4]{\pi\sigma^2}} \exp\left[-\frac{x^2}{2\sigma^2}\right] \\
  \Rightarrow \braket{\hat x}_\Psi &= 0 \\
  \Rightarrow \Delta \hat x_\Psi &= \frac{\sigma}{\sqrt{2}}
\end{aligned}
$$

Die Unbestimmtheitsrelation für Ort und Impuls fordert, dass $\Delta \hat p_\Psi \ge \frac{\hbar}{2\Delta \hat x_\Psi} = \frac{\hbar}{\sqrt{2} \sigma}$. Im Impulsraum gilt die Impulswellenfunktion $\tilde{\Psi}(p) = \braket{\tilde{\varphi}_k|\Psi}$.

$$
\begin{aligned}
  \tilde{\Psi}(k) &\propto \frac{1}{\sqrt[4]{\pi\sigma^{-2}}} \exp\left[- \frac{k^2\sigma^2}{2} \right] \\
  \Rightarrow \Delta \hat p_\Psi &= \frac{1}{\sqrt{2}} \frac{\hbar}{\sigma}
\end{aligned}
$$

Durch die konkrete Rechnung wurde die untere Grenze von $\Delta \hat p_\Psi$ bestimmt, die von der Unbestimmtheitsrelation gefordert ist.

### Grundzustandsenergie im Potentialkasten
Mithilfe des Variationsprinzipes kann die Grundzustandsenergie eines Teilches im Potentialkasten .

Sei ein Teilchen in einem eindimensionalen Potentialkasten der Länge $L$. Nun soll die Grundzustandsenergie $E_0$ durch die Unbestimmtheitsrelation ermittelt werden.

Die Unbestimmtheit des Ortes ist ist näherungsweise die Länge des Kastens $(\Delta \hat x_{\Psi_0} \overset{!}{\approx} L)$. Durch die Unbestimmtheit von Ort und Impuls wird dabei eine Impulsunschärfe von $\Delta \hat p_\Psi \ge \frac{\hbar}{2\Delta \hat x_\Psi} = \frac{\hbar}{2L}$ gefordert. Mit $E_0=\braket{\frac{\hat p^2}{2m}}_{\Psi_0}$ folgt $E_0=\frac{1}{2m}(\Delta \hat p_{\Psi_0})^2\ge\frac{\hbar^2}{8mL^2}$ ergibt. Die genauere Rechnung ergibt $E_0=\frac{\pi^2}{2}\frac{\hbar^2}{mL^2}$, was einen Faktor $4\pi^2$ größer als die untere Grenze der Abschätzung ist.

Dies ist in der Festkörperphysik relevant. Beispielsweise erklärt dies, warum die Metallbindung energetisch sinnvoll ist.

### Bohr-Radius des Wasserstoffatoms
Der Bohr-Radius $a_0$ eines Wasserstoffatoms im Grundzustand kann des Variationsprinzipes abgeschätzt werden.

Hierzu wird das Potential $V(x)=-\frac{e^2}{|x|}$ angenommen, was eine Darstellung des Coulomb-Potentials in Einheiten von $4\pi\varepsilon_0=1$ ist. Die Unbestimmtheit des Ortes wird als $\Delta \hat x = a$ definiert. Dadurch ist der Erwartungswert der potentiellen Energie $-\frac{e^2}{a}$. Der Erwartungswert der kinetischen Energie kann durch $\frac{\Delta \hat p}{2m}$ angenähert werden. Aus der Ungenauigkeitsrelation folgt $\Delta \hat p\le \frac{\hbar^2}{a^2}$, was zu einem Gesamtpotential von $E(a) = \frac{\hbar^2}{2ma} - \frac{e^2}{a}$ führt. Wird dieses nach $a$ hin minimiert, erhält man den Bohr-Radius $a_0 = \frac{\hbar^2}{me^2}$.

### Messung eines freien Teilchens
Aus dem Variationsprinzip folgt, dass bestimmte Observablen nach der Messung einer anderen, nicht-kommutierenden Observablen, eine gewisse Unschärfe aufweisen.

Falls eine Observable ideal gemessen wurde, sind danach die anderen Observablen komplett unbestimmt $(\Delta \hat O=\infty)$. Falls eine Observable unscharf gemessen wird, sind danach die anderen Observablen begrenzt unscharf.

#### Ideale Messung
Bei der Messung eines Teilchens werden manche Observablen unscharf werden.

Falls eine Observable ideal gemessen wurde, sind danach andere nicht-kommutierende Observablen komplett unbestimmt $(\Delta \hat O=\infty)$. Dies folgt aus den Unbestimmtheitsrelationen und kann folgendermaßen mit dem Variationsprinzip abgeschätzt werden.

Sei der Ort eines freien Teilchens im Zustand $\ket{\Psi}$ soll in einer idealen Messung exakt festgestellt worden. Nun soll die Impulsunschärfe abgeschätzt werden. Bei einer idealen Ortsmessung gilt $\Delta \hat x= 0$, da das Teilchen danach im Zustand präperiert ist. Durch die Unschärfe folgt, dass $\Delta \hat p=\infty$ divergiert.

Nach der Ortsmessung ist das Teilchen im Eigenzustand $\ket{\Psi^\prime}=\ket{\varphi_{x_0}}$ mit der Ortswellenfunktion $\varphi_{x_0}(x)=\delta(x-x_0)$. Um die Unschärfe des Impulses zu bestimmen, muss die Impulswellenfunktion $\tilde{\Psi}^\prime(k)$ als Fouriertransformierte von $\varphi_{x_0}(x)$ ermittelt werden. Die Fouriertransformierte einer Delta-Funktion ist eine konstante Funktion, demnach ist $\Delta \hat p=\infty$.

#### Unscharfe Messung
Bei der Messung eines Teilchens werden manche Observablen unscharf werden.

Der Ort eines freien Teilchens im Zustand $\ket{\Psi}$ soll in einer idealen Messung mit einer auf $\Delta \hat x=L$ beschränkten Unschärfe festgestellt werden. Dies kann man realisieren, indem man im Abstand $L$ Potentialbarrieren errichtet, zwischen denen das Teilchen gefangen wird. Damit kann gemessen werden, in welchem Interval das Teilchen ist.

Nach der Messung ist der Erwartungswert $\braket{\hat x}_\Psi=x_n+\frac{L}{2}$ mit der Unschärfe $\Delta \hat x_\Psi=L$. Der Erwartungswert des Impulses verschwindet $(\braket{\hat p}_\Psi=0)$, dessen Unschärfe ist $\Delta \hat p_\Psi = \frac{\hbar^2\pi^2}{L^2}$. Daraus folgt $\Delta \hat x_\Psi \Delta \hat p_\Psi = \hbar\pi$, was die Unbestimmtheitsrelation erfüllt

### Kommutierende Observablen
Seien $\hat A$ und $\hat B$ hermitesche Operatoren. Genau dann, wenn sie kommutieren $([\hat A,\hat B]=0)$, dann gibt es eine gemeinsame Eigenbasis $\ket{\varphi_n}$ für beide Operatoren.

Seien $A$ und $B$ Observablen, deren Operatoren kommutieren $([\hat A,\hat B]=0)$. Daraus folgt aus der Unschärferelation $\Delta A_\Psi \Delta B_\Psi \ge 0$. Diese Aussage ist zwar korrekt, aber nutzlos, da die Standardabweichung immer nicht-negativ ist.

Für beliebige Zustände $\ket{\Psi}$ sind die Unschärfen nicht-null. Dennoch gibt es Zustände, die exakt gemessen werden. Sei $\ket{a_n}$ ein Eigenzustand von $\hat A$, dann ist $\braket{A}_{\ket{a_n}}=a_n$ mit $\Delta A_{\ket{a_n}}=0$.

Es gibt auch Zustände $\ket{\Psi}$, die zeitgleich Eigenzustände von $\hat A$ und $\hat B$ sind.

#### Beweis
Es soll bewiesen werden, dass zwei Operatoren genau dann eine gemeinsame Eigenbasis haben, wenn sie kommutieren.

##### $\Leftarrow$
Seien $\hat A$ und $\hat B$ Operatoren mit einer gemeinsamen Eigenbasis. Werden diese in der Spektraldarstellung mit denselben Eigenzuständen dargestellt, ist es offensichtlich, dass $\hat A$ und $\hat B$ kommutieren.

##### $\Rightarrow$
Seien $\ket{a}$ und $\ket{b}$ eine Eigenbasen von $\hat A$ respektive $\hat B$. Seien weiterhin die Zustände von $\hat B$ nicht entartet $(\forall n\neq m: b_n\neq b_m)$.

Da $[\hat A,\hat B]=0$ gilt $\hat B\hat A\ket{b}=\hat A\hat B\ket{b}=b\hat A\ket{b}$. Daher ist $\hat A\ket{b}$ ein Eigenvektor von $\hat B$ zum Eigenwert $b$ von $\hat B$. Da die Zustände nicht entartet sind, muss mit $\hat A\ket{b}$ proportional zu $\ket{b}$ sein, da sonst $\hat A\ket{b}$ ein anderer Eigenzustand wäre. Damit ist $\ket{b}$ auch ein Eigenvektor von $\hat A$. Da dies für alle Eigenzustände $\ket{b}$ gilt und alle $\ket{b}$ eine Orthonormalbasis von $\hat B$ bilden, bilden sie auch eine Orthonormalbasis von $\hat A$.

Falls $\hat B$ entartete Zustände besitzt $(\exists n\neq m: b_n=b_m)$, kann $\ket{a_n}$ als Linearkombinationen von Vektoren aus dem Spektrum von $\hat B$ dargestellt werden. Auf diese Weise lässt sich der Satz beweisen.

# 10. Drehimpuls
## Drehimpuls
Ein Drehimpuls $\vec{J}$ ist der Erzeuger einer Rotation $\hat R_{\vec{n},\varphi}$ um eine Achse $\vec{n}$ und einen Winkel $\varphi$. Das Betragsquadrat des Drehimpulses ist eine Erhaltungsgröße.

Es gibt den Gesamtdrehimpuls $\vec{J}$ sowie den Bahndrehimpuls $\vec{L}$ und den Eigendrehimplus $\vec{S}$. Quantenmechanisch gibt es für jede der drei Drehimpulsarten einen eigenen Drehimpulsoperator.

### Spin
Der Spin $\hat{\vec S}$ ist der Drehimpuls, der durch die Rotation eines Körpers um sich selbst entsteht. Der Spin $\vec S$ kann nur einen von zwei Werten abnehmen.

### Bahndrehimpuls
Der Bahndrehimpuls $\vec L$ ist der Drehimpuls durch die Rotation eines Körpers um eine Rotationsachse.

### Gesamtdrehimpuls
Der Gesamtdrehimpuls $\vec J$ ist die Kombination der Drehimpulse Spin $\vec S$ und Bahndrehimpulse $\vec L$.

$$
  \vec J = \vec L + \vec S
$$

## Drehimpulsoperator
Der Drehimpulsoperator $\vec{\hat J}$ ist der Operator zu der Observable des Drehimpulses. Seine Komponenten $\hat J_i$ können durch den Transformationsoperator $\hat U(\hat R_{\vec{n},\varphi})$ repräsentiert werden, ähnlich wie der Impulsoperator und der Hamiltonoperator aus anderen Operatoren erzeugt werden können.

$$
  \hat J_i = i\hbar \left.\frac{\partial}{\partial \varphi} \hat U(\hat R_{i,\varphi}) \right|_{\varphi=0}
$$

Die Eigenzustände und Eigenwerte von $\hat J^2$ und $\hat J_3$ sind durch folgende Relationen mit der Drehimpulsquantenzahl $j=\frac{n}{2}$ $(n\in\mathbb N)$ und die magnetische Quantenzahl $m\in\{-j,\dots, 0, \dots, j\}$ definiert.

$$
\begin{aligned}
  \hat J^2 \ket{j, m} &= \hbar^2 j(j+1) \ket{j, m} \\
  \hat J_3 \ket{j, m} &= \hbar m \ket{j, m} \\
\end{aligned}
$$

Es gibt den Gesamtdrehimpuls $\vec{J}$ sowie den Bahndrehimpuls $\vec{L}$ und den Eigendrehimplus bzw. Spin $\vec{S}$. Die Eigenschaften der Drehimpulsoperatoren ergeben sich durch die Eigenschaften der räumlichen Rotation.

### Hilberträume

### Kommutatorrelationen
Der Kommutator von zwei Drehimpulskomponenten ergibt die dritte Drehimpulskomponente, also gilt mit dem Epsilon-Tensor $\varepsilon_{ijk}$ $[\hat J_i, \hat J_j] = i\hbar\varepsilon_{ijk} \hat J_k$.

Da das Betragsquadrat $J^2$ eine Erhaltungsgröße ist, ist es insbesondere invariant unter Rotation um eine Achse $i$. Daher verschwindet der Kommutator $[\hat J^2, \hat J_i]=0$. Dies gilt sowohl für den Bahndrehimpulsoperator $\vec{\hat L}$, als auch für den Spinoperator $\vec{\hat S}$ und den Gesamtdrehimpulsoperator $\vec{\hat J} = \vec{\hat L} + \vec{\hat S}$.

### Transformationsoperator
Der Transformationsoperator $\hat U(\hat R_{\vec{n},\varphi})$ rotiert einen Zustand entlang einer Achse $\vec{n}$ um einen Winkel $\varphi$ mittels eines Gesamtdrehimpulsoperators $\hat{\vec{J}}=\hat{\vec L}+\hat{\vec S}$. Dies ist analog dazu, dass der Impulsoperator und der Hamiltonoperator durch den Translationsoperator bzw. den Zeitentwicklungsoperator gebildet werden können.

$$
\begin{aligned}
  \hat U(\hat R_{\vec{n},\varphi}) &=
  \exp\left[-\frac{i}{\hbar}(\vec{J}\cdot \vec{n})\varphi\right] \\
  \hat U_\mathrm{Gesamt}(\hat R_{\vec{n},\varphi}) &= \hat U_\mathrm{Bahn}(\hat R_{\vec{n},\varphi})
  \otimes \hat U_\mathrm{Spin}(\hat R_{\vec{n},\varphi}) \\
  \hat U_\mathrm{Gesamt}(\hat R_{\vec{n},\varphi}) &=
  \exp\left[-\frac{i}{\hbar}(\vec{L}\cdot \vec{n})\varphi\right]
  \otimes \exp\left[-\frac{i}{\hbar}(\vec{S}\cdot \vec{n})\varphi\right]
\end{aligned}
$$

Der Transformationsoperator des Gesamtdrehimpulses $\hat U(\hat R_{\vec{n},\varphi})$ kann durch das Tensorprodukt aus den Transformationsoperatoren des Bahndrehimpulses und des Spins ermittelt werden.

### Hilberträume
#### Spinhilbertraum
Der Hilbertraum des Spins $\mathcal H_\mathrm{Spin}$ ist zweidimensional, jeder Spin lässt sich daher durch eine Linearkombination von $\mathrm{up\ }\ket{\uparrow}$ und $\mathrm{down\ }\ket{\downarrow}$ dargestellt werden.

#### Bahndrehimpulshilbertraum
Im Unterschied zum Spin wird der Hilbertraum des Bahndrehimpulses $\mathcal H_\mathrm{Ort}$ durch den gesamten dreidimensionalen Raum aufgespannt.

#### Gesamtdrehimpulshilbertraum
Der Gesamtdrehimpulsoperator $\vec{\hat J}$ wirkt auf Zuständen im Hilbertraum $\mathcal H_\mathrm{Ort} \otimes \mathcal H_\mathrm{Spin}$, da Bahndrehimpulsoperator $\vec{\hat L}$ und Spinoperator $\vec{\hat S}$ unterschiedliche Hilberträume aufspannen. Daher kann der Transformationsoperator $\hat U(\hat R_{\vec{n},\varphi})$ durch ein Tensorprodukt beschrieben werden.

$$
\begin{aligned}
  \mathcal H_\mathrm{Spin}
  &= \mathrm{Span}\{\ket{\uparrow}, \ket{\downarrow}\} \subseteq \mathbb C^2\\
  \mathcal H_\mathrm{Ort}
  &= \mathrm{Span}\{\ket{\vec{r}}\}_{\vec{r}\in\mathbb R^3} \\
  \mathcal H_\mathrm{Ort} \otimes \mathcal H_\mathrm{Spin}
  &= \mathrm{Span}\{\ket{\vec{r},\uparrow}, \ket{\vec{r},\downarrow}\}_{\vec{r}\in\mathbb R^3} \\
  \end{aligned}
$$

### Eigenzustände & $\hat J_\pm$
Da durch die Vertauschungsrelationen des Drehimpulses insbesondere $\hat J^2$ und $\hat J_3$ kommutieren $([\hat J^2, \hat J_3]=0)$, haben beide Operatoren eine gemeinsame Eigenbasis $\ket{a,b}$ mit $\hat J^2\ket{a,b}=a\ket{a,b}$ und $\hat J_3\ket{a,b}=b\ket{a,b}$.

Dadurch kann man zueinander adjunkte Operatoren $\hat J_\pm$ definieren, die den Leiteroperatoren des harmonischen Oszillators ähneln.

$$
\begin{aligned}
  \hat J_+ &= \hat J_1 + i\hat J_2 \\
  \hat J_- &= \hat J_1 - i\hat J_2
\end{aligned}
$$

Auch die Vertauschungsrelationen $[\hat J_3, \hat J_\pm] = \hbar \hat J_\pm$ und $[\hat J^2, \hat J_\pm] = 0$ sind ähnlich. Dadurch kann man die Eigenwerte algebraisch ausrechnen. Daher gilt für einen beliebigen Eigenzustand von $\hat J_3$ $\ket{b_0}$, dass man mit $\hat J_\pm$ benachbarte Eigenzustände $\hat J_\pm\ket{a,b_0}=\ket{a,b_0\pm1}$ ermittelt.

### Beweis: Eigenzustände und Eigenwerte
Der Operator $\hat J^2-\hat J_3^2\ge 0$ muss positive Eigenwerte haben. Dadurch werden die Eigenwerte von $\hat J_3$ durch die von $\hat J^2$ beschränkt.

Es gibt einen maximalen Eigenwert $b_\mathrm{max}$, sodass $\hat J_+\ket{a, b_\mathrm{max}}=0$ unverändert bleibt. Analog gibt es auch einen minimalen Eigenwert $b_\mathrm{min}$. Dadurch ist auch $\hat J_-\hat J_+\ket{a, b_\mathrm{max}}=0$. Es gilt $\hat J_-\hat J_+=\hat J^2-\hat J_3^2-\hbar \hat J_3$, daraus folgt $(\hat J^2-\hat J_3^2-\hbar \hat J_3)\ket{a, b_\mathrm{max}}=0$, was äquivalent zu der Forderung $a=b_\mathrm{max}(b_\mathrm{max}+\hbar)$ führt.

Gleichzeitig gilt auch $a=b_\mathrm{min}(b_\mathrm{min}-\hbar)$, was durch eine analoge Rechnung bewiesen ist. Daher muss $\bar{b}\equiv b_\mathrm{max}=-b_\mathrm{min}$ gelten. Der Abstand zwischen den Grenzen muss ein Vielfaches von $\hbar$ sein, daher gilt $2\bar{b}=n\hbar$ (mit $n\in\mathbb N$).

Daraus ergeben sich Eigenwerte zu $\hat J^2$ als $a=\hbar^2 \frac{n}{2} (\frac{n}{2}+1)$ und zu $\hat J_3$ als $b_\mathrm{max}=\hbar\cdot \frac{n}{2}$. Nun wird $j\equiv \frac{n}{2}$ als Drehimpulsquantenzahl bezeichnet. Da $b\in [-\frac{n\hbar}{2}, +\frac{n\hbar}{2}]$ ebenfalls in ganzzahligen Vielfachen von $\hbar$ quantisiert ist, kann es durch eine Quantenzahl $m=-j, \dots, j$ beschrieben werden. $m$ heißt magnetische Quantenzahl, weil sie für magnetische Effekte wie den Zeemann-Effekt relevant ist.

Damit sind die Eigenzustände und Eigenwerte durch folgende Relationen definiert.

$$
\begin{aligned}
  \hat J^2 \ket{j, m} &= \hbar^2 j(j+1) \ket{j, m} \\
  \hat J_3 \ket{j, m} &= \hbar m \ket{j, m} \\
\end{aligned}
$$

## Teilchen im dreidimensionalen Raum
Im dreidimensionalen Raum ist Ortsoperator $\vec{\hat r}$ ein dreidimensionaler Vektor mit den Komponenten $\hat{x}_i$, wobei die Achsen miteinander kommutieren $([\hat x_i, \hat x_j]=0)$. Die gemeinsamen Eigenzustände $\ket{\varphi_{\vec{r}}} = \ket{\vec{r}}\in\mathbb R^3$ sind durch die Eigenwertgleichungen $\hat{x}_i\ket{\vec{r}}=x_i\ket{\vec{r}}$ definiert.

Wie auch im eindimensionalen Fall sind verschiedene Eigenzustände orthogonal zueinander $(\braket{\vec{r}^\prime|\vec{r}}=\delta(\vec{r}^\prime-\vec{r}))$. Ebenso ist die Vollständigkeit analog definiert $(\int_{\mathbb R^3} \mathrm d^3\vec{r} \ket{\vec{r}}\bra{\vec{r}}=\mathds 1)$, wie auch die Wellenfunktion Ortswellenfunkton $\Psi(\vec{r}) = \braket{\vec{r}|\Psi}$ für einen Zustand $\ket{\Psi}\in\mathcal H$.

Der Impulsoperator wird analog durch $\vec{\hat p}=-i\hbar \nabla$ dargestellt.

## Eigendrehimpuls / Spin
### Spinoperator
Der Operator des Spins erfüllt die Vertauschungsrelation $[\hat S_i, \hat S_j] = i\hbar\varepsilon_{ijk} \hat S_k$, ebenso die anderen allgemeinen Relationen des Drehimpulsoperators. Daraus folgt, dass die Komponenten $S_i$ des Spinvektors durch die Paulimatrizen $\sigma_i$ darzustellen sind. Die Eigenwerte der Spinkomponenten $S_i$ sind für Elektronen allesamt $\pm\frac{\hbar}{2}$. Wie beim Stern-Gerlach-Experiment werden die Eigenzustände in der Eigenbasis einer Spinkomponente - hier $\ket{z\pm}$ - dargestellt.

$$
\begin{aligned}
  \vec{\hat S} &= \frac{\hbar}{2}\vec{\sigma} \\
  \ket{x\pm} &= \frac{1}{\sqrt{2}}
  \begin{pmatrix} 1 \\ \pm 1 \end{pmatrix} \\
  \ket{y\pm} &= \frac{1}{\sqrt{2}}
  \begin{pmatrix} 1 \\ \pm i \end{pmatrix} \\
  \ket{z+} &= \ket{\uparrow} = \begin{pmatrix} 1 \\ 0 \end{pmatrix} \\
  \ket{z-} &= \ket{\downarrow} = \begin{pmatrix} 0 \\ 1 \end{pmatrix} \\
\end{aligned}
$$

#### Transformationsoperator $\hat U_\mathrm{Spin}$
Da der Spinoperator explizit durch die Paulimatrizen angegeben werden kann, können die Eigenzustände und Eigenwerte des Spins allgemein bestimmt werden. Der Transformationsoperator $\hat U_\mathrm{spin}$ kann dadurch explizit angegeben werden.

$$
\begin{aligned}
  \hat U_\mathrm{Spin}(\hat R_{\vec{n},\varphi})
  &= \exp\left[-\frac{i}{\hbar}(\vec{S}\cdot \vec{n})\varphi\right] \\
  &= \exp\left[-i\vec{n}\vec{\sigma}\frac{\varphi}{2}\right] \\
  \hat U_\mathrm{Spin}(\hat R_{\vec{n},\varphi})
  &= \mathds 1 \cos\left[\frac{\varphi}{2}\right]
  - i \vec{n}\vec{\sigma}\sin\left[\frac{\varphi}{2}\right]
\end{aligned}
$$

#### Spinrotation
Da der Spinoperator explizit berechnet werden kann, kann auch die Rotation des Spins berechnet werden. Hierbei ist auffällig, dass der Transformationsoperator des Spins den Winkel $\varphi$ halbiert.

Durch den Term $\frac{\varphi}{2}$ beschreibt eine Drehung um $2\pi$ die Rotation $\hat U_\mathrm{Spin}(\hat R_{\vec{n},2\pi})=-\mathds 1$. Dies unterscheidet sich von der klassischen Rechnung, da der Spin dabei gespiegelt wird. Eine Drehung von $4\pi$ ergibt dagegen eine wirklich komplette Drehung. Tatsächlich ist eine Drehung um $2\pi$ auch im klassischen Fall unterschiedlich zu einer Drehung von $4\pi$.

Um diesen Faktor $-1$ zu kompensieren, muss die Wellenfunktion von Fermionen antisymmetrisch sein. Daraus folgt das Pauliprinzip für Fermionen.

### Spin des Elektrons
Der Eigenwert des Elektronenspins beträgt immer $\pm\frac{\hbar}{2}$, insbesondere gilt $\hat S_3\ket{z\pm}=\pm\frac{\hbar}{2}\ket{z\pm}$. Dadurch ist die magnetische Quantenzahl $m=\pm\frac{1}{2}$. Da $j$ die Grenzen der gültigen $m$ definiert, muss $j=s=\frac{1}{2}$ gelten. Dies wird als Spin bezeichnet.

Da $s=\frac{1}{2}$ nennt man Elektronen "Spin-$\frac{1}{2}$-Teilchen" oder Fermionen.

## Eigenwerte des Bahndrehimpulsoperators
Für den Bahndrehimpuls gilt die klassische Relation $\vec{\hat L}=\vec{\hat r}\times \vec{\hat p}$, zudem gelten die allgemeinen Relationen des Drehimpulsoperators.

Die Eigenwerte für einen Zustand $\ket{j\equiv l, m}$ sind bekannt. Die Eigenfunktionen sind durch Kugelflächenfunktionen beschrieben, da diese die Differentialgleichung $\hat L_3\Psi(r, \varphi, z) = -i\hbar \frac{\partial}{\partial \varphi} \Psi(r, \varphi, z)$ lösen.

Dadurch werden die Operatoren folgendermaßen in Kugelkoordinaten dargestellt. Diese werden durch die Kugelflächenfunktionen $Y_{l,m}(\vartheta, \varphi)$ gelöst.

$$
\begin{aligned}
  \hat L^2 &= -\hbar^2\left(
  \frac{1}{\sin \vartheta} \frac{\partial}{\partial \vartheta} \sin\vartheta \frac{\partial}{\partial \vartheta}
  + \frac{1}{\sin \vartheta} \frac{\partial^2}{\partial \vartheta^2}
  \right) \\
  \hat L_3 &= -i\hbar \frac{\partial}{\partial \varphi} \\
  \Rightarrow \hat L^2 Y_{l,m}(\vartheta, \varphi) &= \hbar^2 l(l+1) Y_{l,m}(\vartheta, \varphi) \\
  \Rightarrow \hat L_3 Y_{l,m}(\vartheta, \varphi) &= \hbar m Y_{l,m}(\vartheta, \varphi)
\end{aligned}
$$

Wird der Impulsoperator $\vec{\hat p}$ in Kugelkoordinaten dargestellt, wird dessen Betragsquadrat abhängig vom Dreimpulsoperator. Dies ist notwendig um den Hamiltonoperator zu beschreiben.

$$
  |\vec{\hat p}|^2 = -\frac{\hbar^2}{r^2}
  \left(
  \frac{\partial}{\partial r} r^2 \frac{\partial}{\partial r}
  - \hat{L}^2
  \right)
$$

Über den folgenden Ansatz kann die Schrödingergleichung separiert werden. Dadurch kann man die stationäre Schrödingergleichung im effektiven Potential $V_{\mathrm{eff}, l}$ für eine Dimension lösen.

$$
\begin{aligned}
  \Psi_E(r, \vartheta, \varphi) &= \frac{1}{r} u(r) Y_{l,m}(\vartheta, \varphi) \\
  \Rightarrow E u(r) &= \left(
  -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial r^2}
  + \frac{\hbar^2 l(l+1)}{2mr^2} + V(r)
  \right) u(r) \\
  V_{\mathrm{eff}, l} &= \frac{\hbar^2l(l+1)}{2mr^2} + V(r)
\end{aligned}
$$

# 11. Dekohärenz
Dekohärenz ist ein Phänomen der Quantenphysik, das zur unvollständigen oder vollständigen Unterdrückung der Kohärenzeigenschaften quantenmechanischer Zustände führt. Dekohärenzeffekte ergeben sich, wenn ein bislang abgeschlossenes System mit seiner Umgebung in Wechselwirkung tritt.

Damit kann erklärt werden, warum in makroskopischen System keine quantenmechanischen Effekte beobachtbar sind, wenn ein zusammengesetztes System betrachtet wird. Hierbei verschwinden quantenmechanische Effekte graduell. Je größer das System ist, desto wahrscheinlicher sind Wechselwirkungen mit anderen Systemen. Dabei verschwinden Superpositionen.

Schon in extrem kleinen Experimenten wie dem Teilchen-Interferometer mit Kontrollspin ist Superposition deutlich weniger zu messen. Daher kann bei einem großen Sytem praktisch keine Superposition festgestellt werden. Man kann eine Dekohärenzzeit bestimmen, für die Superposition theoretisch feststellbar sein könnte. Diese ist jedoch praktisch nicht existent, beispielsweise bei $10^{-28}\mathrm{s}$.

Zudem wechselwirkt auch ein Messgerät mit dem gemessenen Teilchen.

## lokal-klassische Theorien
Es wäre schön, wenn eine Theorie lokal ist, es also keine (instantane) langreichweitige Wechselwirkung gibt. Zudem sollte sie in dem Sinne klassisch sein, dass es keinen Indeterminismus mehr gibt, wenn man das System vollständig beschrieben hat.

Die Bell'schen Ungleichungen nutzen eine solche hypothetische Theorie, ohne Details über diese Theorie zu kennen. Experimentell wird gemessen, dass diese Ungleichungen verletzt werden. Damit sind lokal-klassische Theorien in der Quantenphysik nicht haltbar.

## Zusammengesetzte Systeme
Seien $A$ ein System mit dem Zustandsraum $\mathcal H_A\subseteq \mathbb C^n$ und der Orthonormalbasis $\{\ket{\varphi_i}\}$ und $B$ ein System mit dem Zustandsraum $\mathcal H_B\subseteq \mathbb C^m$ und der Orthonormalbasis $\{\ket{\chi_i}\}$. Sei $AB$ das Verbundsystem mit dem Zustandsraum $\mathcal H_{AB}$.

Zustände $\ket{\Psi_{AB}}$ eines zusammengesetztem Systems können entweder verschränkt oder seperabel sein.

### Darstellung als Tensorprodukt
Die Orthonormalbasis des zusammengesetzten Systems $AB$ kann als $\{\ket{\varphi_i, \chi_j}\}$ beschrieben werden. $H_{AB}=\mathcal H_A \otimes \mathcal H_B$ ist das Tensorprodukt der Zustandsräume von $A$ und $B$.

Damit kann auch die Basis als Tensorprodukt $\ket{\varphi_i, \chi_j}=\ket{\varphi_i}\ket{\chi_j}=\ket{\varphi_i}\otimes\ket{\chi_j}$ beschrieben werden. Die Dimension des Zustandsraumes $\dim\mathcal H_{AB} = \dim\mathcal H_A \otimes \dim\mathcal H_B$ ist das Produkt der Dimensionen der Zustandsräume. Wenn die Hilberträume $A$ und $B$ die Dimensionen $n$ und $m$ haben, hat deren Tensorprodukt die Dimension $n\cdot m$.

Sei ein Zustand im System $A$ durch die Basis dargestellt $\ket{\Psi_A}=\sum_{i=1}^n a_i\ket{\varphi_A}$, sei analog ein Zustand $\ket{\Psi_B}$ im System $B$ definiert. Diese Darstellung ist zwar eigentlich basisabhängig, es kann aber mathematisch bewiesen werden, dass die Relation auch basisunabhängig gilt.

$$
\begin{aligned}
  \ket{\Psi_A}\otimes\ket{\Psi_B}
  &= \sum_{i=1}^n\sum_{j=1}^m a_i b_j \ket{\varphi_i}\otimes\ket{\chi_j}\\
  \ket{\Psi_{AB}} &= \sum_{ij} c_{ij} \ket{\varphi_i}\otimes\ket{\chi_j}\\
  \braket{\Psi_{AB}|\Phi_{AB}}
  &= \sum_{ij} c_{ij}d_{ij} \ket{\varphi_i}\otimes\ket{\chi_j}\\
\end{aligned}
$$

#### Tensoren
Es gibt Tensoren $n$-ter Stufe. Tensoren $0$-ter Stufe sind skalare Größen wie Masse oder Ladung. Tensoren $1$-ter Stufe sind vektorielle Größen wie ein Ort $\vec{r}$ oder Impuls $\vec{p}$, die sich unter Rotation wie ein Ortsvektor verhalten. Tensoren $2$-ter Stufe sind durch Matrizen darstellbar.

Bei dem Tensorprodukt $A\otimes B$ ist die Dimension $\dim(A\otimes B)$ das Produkt der Dimensionen der Faktoren $A$ und $B$ $(\dim(A\otimes B) = \dim(A) \cdot \dim(B))$.

## Verschränkung und Seperabilität
Ein Zustand eines zusammengesetzten Systems $\ket{\Psi_{AB}}\in\mathcal H_{AB}$ ist genau dann verschränkt, wenn er sich nicht als Tensorprodukt darstellen lässt, es also keine Zustände $\Psi_A, \Psi_B$ gibt, deren Tensorprodukt $\ket{\Psi_{AB}}$ ergibt $(\nexists \Psi_A, \Psi_B: \ket{\Psi_{AB}}=\ket{\Psi_A}\otimes \ket{\Psi_B}$). Zustände, die sich als ein solches Tensorprodukt darstellen lassen, nennt man seperabel. Dies gilt auch dann, wenn die Zustände $A$ und $B$ weit voneinander entfernt sind.

Falls die Hilberträume $\mathcal H_A$ und $\mathcal H_B$ der Systeme $A$ und $B$ sehr groß sind $(\dim \mathcal H_{A} \gg 1\land \dim \mathcal H_{B} \gg 1)$, dann ist ein zufälliger Zustand $\ket{\Psi_{AB}}\in \mathcal H_A\otimes \mathcal H_B$ sehr wahrscheinlich verschränkt. Fast alle Zustände $\ket{\Psi_{AB}}$ sind sogar sehr stark verschränkt.

### Das Einstein-Podolsky-Rosen-Paradoxon
Das Einstein-Podolsky-Rosen-Paradoxon zeigt beispielhaft, dass die Quantenmechanik gegen die Annahme der Lokalität verstößt, die eine der Grundannahmen der klassischen Physik ist.

In diesem Paradoxon werden Messungen so weit auseinander und so kurz nacheinander ausgeführt, dass nach der speziellen Relativitätstheorie keine Wechselwirkung zwischen den beiden gemessenen Systemen erfolgen darf. Demnach sollte das zweite Messergebnis unabhängig von dem ersten Messergebnis sein. Nach der Quantenmechanik ist dies jedoch nicht zwangsweise der Fall.

#### Die Experimente
Sei $\ket{\Psi_{AB}}$ ein verschränkter Zustand, bei denen die Systeme $A$ und $B$ weit voneinander entfernt liegen. Dann teilen sich $A$ und $B$ Elemente des zusammengesetzten Zustands $\ket{\Psi_{AB}}$. Beispielsweise können die Spins eines Atoms so betrachtet werden. Dann sollen zwei Experimente $I$ und $II$ betrachtet werden.

$$
\begin{aligned}
  \ket{\Psi_{AB}} = \frac{1}{\sqrt{2}} \left(
  \ket{\uparrow}_A\ket{\uparrow}_B
  + \ket{\downarrow}_A\ket{\downarrow}_B
  \right)
\end{aligned}
$$
Durch Experimente wurden die Bell'schen Ungleichungen als verletzt gemessen, es scheint daher keine verborgenen Variablen zu geben.

Im ersten Experiment wird bei $t=0$ der Spin $S_3$ in System $A$ gemessen. Das Messpostulat fordert für beide möglichen Messergebnisse die Wahrscheinlichkeit $\frac{1}{2}$. Der zusammengesetzte Zustand $\ket{\Psi_{AB}}$ ist eine vollständige Beschreibung des Zustands, daher ist der Indeterminismus fundamental, also nicht durch versteckte Abhängigkeiten beeinflusst.

Im zweiten Experiment wird der Spin eines Atoms $S_3$ im System $A$ bei $t=0$ gemessen. Anders als beim ersten Experiment wird kurz vorher bei $t=-\Delta t$ der Spin $S_3$ in System $B$ gemessen. $\Delta t$ sei dabei kleiner als die Zeit, die Licht für die Strecke zwischen $A$ und $B$ benötigt. Sei die Messung ideal, dann kollabiert die Wellenfunktion bei der Messung in $B$. Dadurch kann aber in System $A$ nur noch ein Ergebnis mit der Wahrscheinlichkeit von $100\%$ gemessen werden.

Aus der speziellen Relativitätstheorie folgt, dass Informationen nicht schneller als Lichtgeschwindigkeit übertragen werden können.

Daher darf es bei dem kurzen Zeitunterschied und dem großen Abstand der Messungen keine Wechselwirkung zwischen den Systemen $A$ und $B$ geben. Somit müssten beide Experimente das gleiche Ergebnis liefern.

Man dachte ursprünglich, dass dieses Phänomen durch eine unzureichende Beschreibung quantenmechanischer Zustände verursacht werde. Demnach müsste es "verborgene Variablen" geben. Quantitativ wird dies durch die Bell'schen Ungleichungen gefordert, die man experimentell prüfen kann.

#### Fernwirkung
Fernwirkung bedeutet in der Quantenmechanik, dass die Lokalität nicht erfüllt ist. Die andere Möglichkeit der Realisierung wären verborgene Variablen, die durch Verletzungen der Bell'schen Ungleichungen allerdings praktisch ausgeschlossen sind.

Ein Beispiel für die Notwendigkeit einer dieser Eigenschaften liefert das Einstein-Podolsky-Rosen-Paradoxon.

## Bell'sche Ungleichungen
Die Bell'sche Ungleichungen beschreiben Bedingungen, die ein Modell erfüllen muss, das nach dem Einstein-Podolsky-Rosen-Paradoxon versteckte Variablen beschreibt. Diese Ungleichungen haben nichts mit der Quantenmechanik zu tun, da sie ein besseres Modell beschreiben sollen. Experimente zeigen, dass es kein solches Modell geben kann.

Eine einfachere Formulierung der selben Idee ist die CHSH-Ungleichung.

### Die CHSH-Ungleichung
Die CHSH[^9]-Ungleichung ist eine Variante der Bell'schen Ungleichungen, die leichter gemessen werden kann.

Es wird ein korrelliertes System $AB$ mit gekoppelten Spins erzeugt. Diese Teilchen werden an zwei verschiedene Orte geschickt. In Teilsystem $A$ wird zufällig eine Eigenschaft aus der Menge $\{Q,R\}$ gemessen, wobei $q, r=\pm 1$ die möglichen Messergebnisse beschreibt. In System $B$ wird ebenso zufällig eine Eigenschaft aus der Menge $\{S,T\}$ gemessen, wobei $s,t=\pm 1$. Beispielsweise können $Q$ und $R$ die Spinkomponenten $S_3$ und $S_2$ beschreiben, während $S$ und $T$ auch Spinkomponenten beschreiben können, die nicht orthogonal zu $S_{2,3}$ sind.

Viele Messungen ergeben ein statistisches Ergebnis. Aus den Messergebnissen lassen sich Korrelationen, beispielsweise $\overline{RS}$ zwischen $R$ und $S$, berechnen. Die Annahme, dass die Messergebnisse gemäß einer Theorie mit lokalen verborgenen Variablen ausfallen, führt auf die folgende Bedingung für den Zusammenhang aller Korrelationen. Dies ist die CHSH-Ungleichung.

$$
  M \equiv {\Large |}\overline{QS} - \overline{QT} + \overline{RS} + \overline{RT}{\Large |} \le 2
$$

[^9]: Benannt nach John Clauser, Michael Horne, Abner Shimony, Richard Holt

#### Beweis der CHSH-Ungleichung nach Bell
Die CHSH-Ungleichung ist zwar eine Vereinfachung der Bell'schen Ungleichungen, nach ihrer Veröffentlichung entwickelte Bell jedoch einen einfacheren Beweis. Dieser wird hier erläutert.

Nehme an, es gebe eine Theorie mit lokalen verborgenen Variablen $\lambda=(\lambda_1,\lambda_2, \dots)\in \mathbb R^n$. Hierbei soll $Q$ eine Funktion mit Wahrscheinlichkeiten $p$ sein $Q: \lambda \mapsto \bar{q}(\lambda)=p^{(\lambda)} _ {q=+1} \cdot (+1) + p^{(\lambda)} _ {q=-1} \cdot (-1)$, die indeterministisch sein darf, aber lokal ist. Analog gebe es die Funktionen $R$, $S$ und $T$. Dies erlaubt Indeterminismus, weil Nicht-Lokalität physikalisch das größere Problem ist. Zudem sollen die Messwerte $p,q,r,s=\pm 1$ sein.

Desweiteren gebe es eine Wahrscheinlichkeitsdichte $\rho(\lambda)$. Dann gilt die Relation $\bar{Q} \overset{!}{=} \int \bar{q}(\lambda)\rho(\lambda) \mathrm d^n\lambda$. Weil die Messungen in den verschiedenen Messungen durch die geforderte Lokalität unabhängig sein müssen, müssen die Wahrscheinlichkeiten für die Messung von $q$ und $s$ unabhängig sein, also $p(q,s;\lambda)=p(q;\lambda)\cdot p(s;\lambda)$. Dann kann die Korrelationsdifferenz $|\overline{QS}-\overline{QT}|=|\int \mathrm d\lambda \rho (qs-qt) |$ berechnet werden. Da $|qs|\le 1$ und $|qt|\le 1$ gelten, kommt man auf die Ungleichung $|\overline{QS}-\overline{QT}|\le 2 + |\overline{RT}+\overline{RS}|$, was äquivalent zu der CHSH-Ungleichung ist.

### Korrelation
Die Korrelation $\overline{RS}$ zwischen den Eigenschaften $R$ und $S$ mit Messwerten $r_i$ bzw. $s_i$ ist die Summe über das Produkt der einzelnen Messwerte. Dies muss durch die Gesamtzahl der Messungen $N_{RS}$ normiert werden. Im kontinuierlichen Fall steckt die Normierung in der Wahrscheinlichkeitsdichte $\rho(\lambda)$.

$$
  \overline{RS} = \frac{1}{N_{RS}} \sum_i r_i s_i = \int \rho(\lambda) r(\lambda) s(\lambda) \,\mathrm d\lambda
$$

### Unterschied zur Quantenmechanik
Die Quantenmechanik besagt, dass die CHSH-Ungleichung in bestimmten Situationen verletzt werden darf, beispielsweise im untenstehenden Zustand $\ket{\Psi_{AB}}$, wenn die Messeigenschaften $Q=\frac{2}{\hbar}S_3=\sigma_3$, $R=\frac{2}{\hbar}S_1=\sigma_1$, $S=-\frac{1}{\sqrt{2}}(\sigma_1+\sigma_3)$ und $T=\frac{1}{\sqrt{2}}(\sigma_1-\sigma_3)$. Dieser Zustand ist so gewählt, dass der Gesamtdrehimpuls $\vec J=0$ ist.

$$
\begin{aligned}
  \ket{\Psi_{AB}} &= \frac{1}{\sqrt{2}} \left(
  \ket{\uparrow}_A\ket{\downarrow}_B
  + \ket{\downarrow}_A\ket{\uparrow}_B
  \right) \\
  \Rightarrow M &= \braket{QS}_{\Psi_{AB}} - \braket{QT}_{\Psi_{AB}} + \braket{RS}_{\Psi_{AB}} + \braket{RT}_{\Psi_{AB}} \\
  &= \frac{1}{\sqrt{2}} - \left(-\frac{1}{\sqrt{2}}\right) + \frac{1}{\sqrt{2}} + \frac{1}{\sqrt{2}} = 2\sqrt{2} > 2 \\
\end{aligned}
$$

In der Quantenmechanik wird demnach $M\ge 2\sqrt{2}$ gefordert, während lokal-klassische Theorien $M\le 2$ fordern. Da diese Forderungen sich widersprechen, kann man experimentell bestimmen, welche Theorie zutreffend ist.

### Experimentelle Ergebnisse
Es ist schwierig Experimente durchzuführen, die die CHSH-Ungleichung oder die Bell'schen Ungleichungen widerlegen. Daher werden solche Experimente auch kritisch betrachtet.

Das letzte große Experiment fand $2018$ mit Messungen im Abstand von ca. $1.5\mathrm{km}$ statt. Die Experimente zeigen eine zunehmende Evidenz für die Verletzung der CHSH-Ungleichung in Übereinstimmung mit der Quantenmechanik. Dies zeigt, dass die Theorie der versteckten Variablen vermutlich falsch ist. Für solche Experimente gab es $2022$ den Physik-Nobelpreis.

## Doppelspaltexperiment
Teilchen werden durch einen Doppelspalt geschickt und bilden auf der Bildplatte ein Interferenzmuster. Hierbei gibt es eine Superposition von den Wellen an beiden Spalten. Wenn jedoch das Teilchen mit der Umgebung wechselwirkt, beispielsweise indem es gemessen wird, gibt es keine Superposition mehr, dadurch verschwindet das Interferenzmuster. Dies ist ein Phänomen der Dekohärenz.

## Teilchen-Interferometer
Ein Neutronenstrahl wird auf zwei verschiedene Wege aufgeteilt, die sich kreuzen und in zwei verschiedene Detektoren laufen, dadurch gibt es Interferenz. Um eine Veränderung des Phasenunterschiedes in den Detektoren zu messen, wird ein leichtes Potential angelegt. Dazu kann die Gravitation genutzt werden. Die Stärke der wirkenden Kraft kann durch Rotation des Apperats variiert werden.

Zusätzlich wird ein Kontrollspin verwendet, der auf einem der Strahlen mit dem Teilchen wechselwirkt. Dadurch soll der Spin des beeinflussten Teilchens um einen Winkel $\varphi\in(0,2\pi)$ rotiert werden. Ohne Kontrollspin gibt es an beiden Detektoren ein Interferenzmuster, mit Kontrollspin wird das Interferenzmuster durch Dekohärenzeffekte gedämpft.

### Dynamik ohne Kontrollspin
Sei $\ket{\Psi}$ der initiale Zustand des Teilchens im Interferometer.

Nach dem Durchlaufen des Strahlteilers wird eine unitäre Operation $\hat U_1$ ausgeführt, die eine Superposition von Zuständen $\ket{a}$ im oberen und $\ket{b}$ im unteren Interferometerarm erzeugt, da das Teilchen mit gleicher Wahrscheinlichkeit transmissiert oder reflektiert wird. Daher gilt $\hat U_1\ket{\Psi}=\frac{1}{\sqrt{2}}(\ket{a}+\ket{b})$.

Zwischen beiden Strahlteilern wirkt ein Potential als unitärer Operator $\hat U_2$, wodurch ein Phasenunterschied $\vartheta$ zwischen den Strahlen erzeugt wird. Es sollen $\hat U_2\ket{a}=\exp[i\vartheta]\ket{a^\prime}$ und $\hat U_2\ket{b}=\ket{b^\prime}$ gelten.

Am zweiten Strahlteiler wirkt ein Operator $\hat U_3$, der jeden eingehenden Strahl mit gleicher Wahrscheinlichkeit reflektiert oder transmissiert. Dann kann der Endzustand durch $\hat U_3\ket{a^\prime}=\frac{1}{\sqrt{2}}(\ket{u}+\ket{v})$ und $\hat U_3\ket{b^\prime}=\frac{1}{\sqrt{2}}(\ket{u}-\ket{v})$ beschrieben werden, da beide Endzustände orthogonal zueinander sind.

Damit ist der Endzustand $\ket{\Psi^\prime} = \hat U_3 \hat U_2 \hat U_1 \ket{\Psi}$ durch folgende Relation dargestellt.

$$
\begin{aligned}
  \ket{\Psi^\prime} &=
  \frac{1}{2} \left(\exp[i\vartheta] + 1\right)\ket{u}
  + \frac{1}{2} \left(\exp[i\vartheta] - 1\right)\ket{v} \\
  \Rightarrow P_u &= |\braket{u|\Psi^\prime}|^2 = \frac{1}{2}\left(1 + \cos[\vartheta]\right) \\
  \Rightarrow P_v &= |\braket{v|\Psi^\prime}|^2 = \frac{1}{2}\left(1 - \cos[\vartheta]\right)
\end{aligned}
$$

Auf diese Weise ist das Messergebnis an jedem Detektor durch eine Welle beschrieben.

### Dynamik mit Kontrollspin
Der Ausgangszustand des Teilchens im Interferometer sei $\ket{\Psi}$, zudem gebe es einen Spin $\ket{\chi_0}$ am oberen Interferometerarm. Damit ist der Ausgangszustand des Gesamtsystems $\mathrm{TS}$ aus Teilchen uns Spin $\ket{\Psi}_{TS} = \ket{\Psi} \otimes \ket{\chi_0}$. Wenn das Teilchen an dem Spin vorbeiläuft, soll eine Rotation desselben erfolgen.

Der erste Strahlteiler wirkt nur auf den Zustand des Teilchens $\ket{\Psi}$, es gilt $\hat U_1\ket{\Psi}_\mathrm{TS}=\frac{1}{\sqrt{2}}(\ket{a}+\ket{b})\ket{\chi}$.

Am oberen Teilchenarm wirkt allerdings nun eine Rotation auf $\ket{\chi}$ als $\hat U_2\ket{a}{\chi}=\exp[i\vartheta]\ket{a^\prime} \hat R_\varphi \ket{\chi}$. Dies kann durch das Tensorprodukt $\exp[i\vartheta]\otimes R_\varphi$ dargestellt werden. Auf dem unteren Arm wirkt kein Kontrollspin, also gilt $\hat U_2\ket{b}=\ket{b^\prime}$. Der zweite Strahlteiler wirkt ebenfalls so, als ob es keinen Kontrollspin gebe.

$$
\begin{aligned}
  \ket{\Psi^\prime}_\mathrm{TS}
  &= \hat U_3 \hat U_2 \hat U_1\ket{\Psi}_\mathrm{TS}\ket{\chi_0} \\
  &= \frac{1}{2} \left(\exp[i\vartheta]\otimes \hat R_\varphi
  + \mathds 1_S\right)\ket{u}\ket{\chi_0}
  + \frac{1}{2} \left(\exp[i\vartheta]\otimes \hat R_\varphi
  + \mathds 1_S\right)\ket{v}\ket{\chi_0} \end{aligned}
$$

Falls die Rotation $\hat R_\varphi\neq \mathds 1$ keine Identität ist, ist $\hat R_\varphi\ket{\chi_0}\neq\ket{\chi_0}$. Damit ist der Gesamtzustand verschränkt.

Die Wahrscheinlichkeit $P_u$ ist nicht trivial, da der Spin $\ket{\chi}$ nicht gemessen werden kann. Dadurch wird die Observable als $\hat A=\ket{u}\bra{v}\otimes \mathds 1$ gewählt. Dies bedeutet, der Spin $\ket{\chi}$ ist für den Erwartungswert irrelevant.

$$
\begin{aligned}
  P_u &= _{\mathrm{TS}}\bra{\Psi^\prime}
  {\Large(}\ket{u}\bra{v}\otimes \mathds 1{\Large)}
  \ket{\Psi^\prime}_\mathrm{TS} \\
  &= \frac{1}{2} {\Large(}1
  + \Re{\large(}
  \exp[i\vartheta] \braket{\chi_0|\hat R_\varphi|\chi_0}
  {\large)}{\Large)} \\
  &= \frac{1}{2} \left(
  1
  + \cos[\vartheta]\cos\left[\frac{\varphi}{2}\right]
  + \sin[\vartheta]\sin\left[\frac{\varphi}{2}\right]
  \braket{\chi_0|\hat R_\varphi|\chi_0}
  \right)
\end{aligned}
$$

Falls $\varphi=0$ verhält sich $P_u$ so als ob es keinen Kontrollspin gebe, für $\varphi=\pi$ und $\ket{\chi_0}=\ket{\uparrow}$ folgt allerdings $P_u=\frac{1}{2}$. Dies unterscheidet sich von der Dynamik ohne Kontrollspin!

Wenn $\varphi\in(0,2\pi)$ wird die Interferenz gedämpft. Jedoch kann man sie rekonstruieren, wenn man den Kontrollspin in der Messung berücksichtigt.

# Literatur
1. [@Sakurai2020]

