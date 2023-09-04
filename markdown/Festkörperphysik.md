---
title: Festkörperphysik 2023
author:
  - Prof. Dr. Thomas Michely
  - Oliver Filla
date: 04.08.2023
keywords:
  - Physik
  - Festkörperpysik
---
# Disclaimer
Dies ist eine _inoffizielle_ Mitschrift aus der Vorlesung zur Festkörperphysik von Prof. Dr. Thomas Michely. Ich habe Prof. Michely's Erlaubnis, dies zu publizieren. Dies bedeutet jedoch nicht, dass irgendjemand Korrekturgelesen hätte. Fehler, Ungenauigkeiten etc. sind demnach zu erwarten und mir zuzuschreiben.

# Softwareempfehlung
Zum Visualisieren von Kristallstrukturen und Kristalleigenschaften wird das Programm [VESTA](http://jp-minerals.org/vesta/en) empfohlen. Zudem gibt es auf einer Seite der Universität zu Köln ein [Applet](https://ph2.uni-koeln.de/lehre/applets-solid-state-physics/phonons), das die Phononendispersion interaktiv darstellt.

# Festkörperphysik
Die Festkörperphysik beschäftigt sich mit festen Körpern, vor allem mit Kristallen. Aber auch Gele und Flüssigkristalle gehören zu ihren Aufgaben. Kennzeichnend ist, dass die Bausteine der Körper periodisch angeordnet sind. Man spricht hierbei von einer Kristallstruktur.

# 1. Strukturen von Festkörpern
## Bravaisgitter
### Bravaisgitter
Nicht alle Gitter sind für die Beschreibung von Kristallstrukturen sinnvoll. Deswegen gibt es die Gruppe der Bravaisgitter.

Ein Bravaisgitter ist definiert als eine sich unendliche erstreckende Anordnung von Punkten, die von jedem dieser Punkte aus exakt gleich aussieht.

Bravaisgitter besteht aus der Menge der Punkte mit Positionsvektoren $\vec{R}$, die durch ganzzahlige Linearkombinationen der _Primitiven Translationen_ $\vec{a}_i$ gebildet werden. Es dürfen dabei nicht alle primitiven Translationen $\vec{a}_i$ in einer Ebene liegen. Dies ist eine äquivalent zur erstgenannten Definition.

$$
  \left\{\left.
  \vec{R} = \sum_{i=1}^3 n_i\vec{a}_i \in \mathbb R^3 \right|
  n_i \in \mathbb Z \land \vec{a}_1\cdot(\vec{a}_2\times\vec{a}_3) \neq 0
  \right\}
$$

Bravaisgitter werden mittels der Kristallsysteme klassifiziert.

### Kristallstruktur
Eine Kristallstruktur besteht aus einem mathematischen Gitter und einer physikalischen / chemischen Basis.
Sie ist die Voraussetzung dafür, dass ein Stoff im Rahmen der Festkörperphysik betrachtet wird.

Es gibt nur wenige einfache Kristallstrukturen.

#### Gitter einer Kristallstruktur
Das Gitter einer Kristallstruktur ist ein mathematisches Punktgitter. An jedem Gitterpunkt ist eine Basis zu finden.

De facto werden nur Bravaisgitter zur Beschreibung einer Kristallstruktur verwendet.

#### Basis einer Kristallstruktur
Die Basis einer Kristallstruktur ist eine physikalische oder chemische Struktur, die an jedem Gitterpunkt zu finden ist.

Eine einatomige Basis besteht aus einem einzelnen Atom. Eine Basis kann aber auch aus komplexen Strukturen bestehen.

### Die primitive Einheitszelle
Wenn eine Zelle bei jeder möglichen Verschiebung um $\vec{R}$ den gesamten Raum ohne Lücke und ohne Überlapp erfüllt, wird sie _primitive Einheitszelle_ genannt. Sie hat ein festes Volumen $V_e$. Hierbei ist $\vec{R}$ ein Vektor im Bravaisgitter.

Wie auch die primitiven Translationen ist die primitive Einheitszelle ist nicht eineindeutig definiert. Jede primitive Einheitszelle enthält exakt einen Gitterpunkt, da es ansonsten Translationen gäbe, die Lücken oder Überlappe erzeugen würden.

Eine offensichtliche Wahl ist die Menge $\{\vec{r}=\sum_{i=1}^3 x_i\vec{a}_i | x_i \in [0,1] \}$. Dies beschreibt ein _Parallelepiped_ mit dem Volumen $V_e=\vec{a}_1\cdot(\vec{a}_2\times\vec{a}_3)$. Allerdings kann man die Gitterstruktur, beispielsweise Symmetrien, im Allgemeinen nicht aus der primitiven Einheitszelle schließen.

Zwei gängige Lösungen für das Problem sind, entweder eine Konventionelle Einheitszelle oder eine Wiegner-Seitz-Zelle zu betrachten.

### Die konventionelle Einheitszelle
Eine konventionelle Einheitszelle ist eine nicht-primitive Einheitszelle, die den Raum bereits mit einer Teilmenge des Bravaisgitters erfüllt. An ihr kann man die Gittersymmetrie sehen.

### Die Wiegner-Seitz-Zelle
Die Wiegner-Seitz-Zelle ist die Menge aller Punkte, die näher an einem Gitterpunkt liegen als an allen anderen Gitterpunkten liegen. Sie beschreibt die Umgebung eines Gitterpunktes und ist eine primitive Zelle.

Daher erfüllt sie wie die Primitive Einheitszelle den Raum ohne Lücke und ohne Überlapp. Durch ihre Konstruktion repräsentiert sie die volle Symmetrie des Gitters.

Im zweidimensionalen Raum wird sie konstruiert, indem die Mittelsenkrechten zwischen benachbarten Gitterpunkten eintragen, im dreidimensionalen Raum muss man entsprechende Flächen eintragen. Das auf diese Weise eingeschlossene Volumen ergibt die Wiegner-Seitz-Zelle.

Im Allgemeinen ist das Pendant im Reziproken Raum, die Brillouin-Zone, wichtiger als die Wiegner-Seitz-Zelle selbst.

### Die Koordinationszahl
Die Koordinationszahl ist der Bruchteil des direkten Raumes, der von identischen, sich berührenden Kugeln auf den Gitterpunkten einer Kristallstruktur ausgefüllt wird. Man zählt sie, indem man die nächsten Nachbarn der _selben_ Atomsorte zählt.

Für die einfachen Kristallstrukturen sind die Koordinationszahlen bekannt.

## Einfache Kristallstrukturen
Bei Metallen und Ionenkristallen wird die Packungsdichte maximiert.
Bei Nichtmetallen wird die Kristallstruktur stattdessen durch die Orbitale der Atome bzw. Modeküle bestimmt.

* simple cubic
* body centered cubic
* face centered cubic
* (double) hexagonal closed packed

### Packungsdichte
Die meisten Metalle kristallisieren so, dass sie eine hohe Packungsdichte $P$ erreichen. Es bringt das genutzte Volumen in ein Verhältnis zu dem freien Volumen. Dadurch entstehen die einfachen Kristallstrukturen.

Bei Nichtmetallen wird die Kristallstruktur durch die Orbitale der Atome/Modeküle bestimmt. Die Packungsdichte ist dabei nicht mehr entscheidend.

Für die einfachen Kristallstrukturen sind die Packungsdichten bekannt.

### Metalle
In der Metallbindung werden die Valenzelektronen delokalisiert, daher ist die Packungsdichte für die Bindung relevant. Da außer bei Alkalimetallen auch ein Bindungsanteil kovalenter Bindung auftritt, ist dies nicht immer das einzige Kriterum. Daher sind nur wenige Bravaisgitter realisiert. Die Koordinationszahlen für diese sind bekannt.

Die Bandstruktur von Metallen ist durch ein teilgefülltes Leitungsband charakterisiert.

* simple cubic
* body centered cubic
* face centered cubic
* (double) hexagonal closed packed

#### simple cubic (_sc_)
Bei einem sc-Gitter liegt immer ein Gitterpunkt an jeder Ecke eines gedachten Würfels.

* Nur Polonium kristallisiert in dieser Gitterstruktur.
* Packungsdichte $P_\mathrm{sc} \approx 0.54$
* Koordinationszahl $6$
* Primitive Translationen $\vec{a}_i$ zeigen von einer Würfelecke auf benachbarte Würfelecken.
* Das reziproke Gitter ist ebenfalls ein sc-Gitter.
* bcc-Gitter können als sc mit zweiatomiger Basis dargestellt werden.

$$
  \vec{a}_1 = a \cdot \begin{pmatrix} 1\\0\\0 \end{pmatrix}
  \land
  \vec{a}_2 = a \cdot \begin{pmatrix} 0\\1\\0 \end{pmatrix}
  \land
  \vec{a}_3 = a \cdot \begin{pmatrix} 0\\0\\1 \end{pmatrix}
$$

#### body centered cubic (_bcc_)
Bei einem bcc-Gitter liegt immer ein Gitterpunkt an jeder Ecke eines gedachten Würfels, zudem liegt ein Gitterpunkt im Zentrum ebendieses Würfels.

* 17 Metalle, u.a. Eisen und Alkalimetalle, treten in dieser Form auf.
* Packungsdichte $P_\mathrm{bcc} \approx 0.68$
* Koordinationszahl $8$
* Primitive Translationen $\vec{a}_i$ zeigen von einer Würfelecke auf benachbarte Körperzentrierte Punkte
* Das reziproke Gitter ist ein fcc-Gitter.
* Die Konventionelle Einheitszelle ist einfach-kubisch (_sc_), mit zweiatomiger Basis
  * Die Vektoren $\vec{d}_1=a/2 (0,0,0)^T$ und $\vec{d}_2=a/2 (1,1,1)^T$ weisen von einem Gitterpunkt auf die beiden Elemente der Basis.
* Der Strukturfaktor $S_{\vec{G}}$ verschwindet für viele Netzebenen

$$
  \vec{a}_1 = \frac{a}{2} \cdot \begin{pmatrix} 1\\1\\1 \end{pmatrix}
  \land
  \vec{a}_2 = \frac{a}{2} \cdot \begin{pmatrix} 1\\-1\\1 \end{pmatrix}
  \land
  \vec{a}_3 = \frac{a}{2} \cdot \begin{pmatrix} -1\\1\\1 \end{pmatrix} \\
  S_{\vec{G}} =
  \begin{cases}
  2 & \Leftrightarrow nh+nk+nl \text{ gerade}\\
  0 & \Leftrightarrow nh+nk+nl \text{ ungerade}
  \end{cases}
$$

#### face centered cubic (_fcc_)
Bei einem ffc-Gitter liegt immer ein Gitterpunkt an jeder Ecke eines gedachten Würfels, zudem liegt je ein Gitterpunkt im Zentrum der Würfeloberflächen.

* 24 Metalle kristallisieren in dieser Gitterstruktur.
* Packungsdichte $P_\mathrm{ffc} \approx 0.74$
* Dies ist die dichtestmögliche Kugelpackung
  * Vermutung von Kepler, Beweis 2017
* Es gibt 3 verschiedene "Schichten": Die Stapelfolge folgt dem Muster $A,B,C,A,B,C$
* Koordinationszahl $12$: $6$ Würfelecken und $6$ Flächenzentrierte Punkte
* Das reziproke Gitter ist ein bcc-Gitter.
* Primitive Translationen $\vec{a}_i$ zeigen von einer Würfelecke auf benachbarte Flächenzentrierte Punkte
* Verschiedene Ebenen, z.B. die $(111)$-Ebene, haben eine hexagonale Struktur.
* Der Strukturfaktor $S_{\vec{G}}$ verschwindet für einige Netzebenen

$$
  \vec{a}_1 = \frac{a}{2} \cdot \begin{pmatrix} 1\\1\\0 \end{pmatrix}
  \land
  \vec{a}_2 = \frac{a}{2} \cdot \begin{pmatrix} 1\\0\\1 \end{pmatrix}
  \land
  \vec{a}_3 = \frac{a}{2} \cdot \begin{pmatrix} 0\\1\\1 \end{pmatrix}\\
  S_{\vec{G}} =
  \begin{cases}
  4 & \Leftrightarrow h,k,l \text{ gerade}\\
  4 & \Leftrightarrow h,k,l \text{ ungerade}\\
  0 & \Leftrightarrow \text{sonst}
  \end{cases}
$$

#### hexagonal closed packed (hcp)
Auf jeder Ebene sind die Kugeln hexagonal angeordnet. Anders als bei dem fcc-Gitter gibt es hier nur zwei verschiedene Schichten. Die Stapelfolge ist $A,B,A,B$ und unterscheidet sich von der des fcc-Gitters.

Die Basis ist zweiatomig, die Vektoren $\vec{d}_1=a/2 (0,0,0)^T$ und $\vec{d}_2=a/3 (\vec{a}_1+\vec{a}_2) + \vec{a}/2$ weisen von einem Gitterpunkt auf die beiden Elemente der Basis.

* 36 Metalle kondensieren in dieser Gitterstruktur.
* Die Packungsdichte beträgt $P_\mathrm{hcp} \approx 0.74$, ebenso wie beim fcc-Gitter.
* Es gibt auch _double hexagonal closed packed_ (_dhcp_).

### Ionenkristalle
Ionenkristalle werden immer mit einer mehratomigen Basis gebildet. Die Vektoren $\vec{d}_i$ geben jeweils die Positionen der Atome an, gemessen vom zugeordneten Gitterpunkt. Eine Gitterstruktur ist genau dann energetisch sinnvoll, wenn sich die unterschiedlich geladenen Ionen berühren und die gleichgeladenen Ionen sich _nicht_ berühren. Ionische Bindung wird durch die Coulomb-Wechselwirkung bestimmt.

Seien $r_+$ der Radius der größeren Ions und $r_-$ der Radius des kleineren Ions. Bei einem Größenverhältnis von $\frac{r_+}{r_-} < \frac{1}{\sqrt{3}-1}$ wird üblicherweise die $\mathrm{CsCl}$-Struktur eingenommen. Bei $\frac{r_+}{r_-} < \frac{1}{\sqrt{2}-1}$ wird üblicherweise die $\mathrm{ZnS}$-Struktur eingenommen, ansonsten ist die $\mathrm{NaCl}$-Struktur energetisch sinnvoll.

#### Cäsiumchlorid-Struktur
Die Cäsiumchlorid-Struktur ist eine bcc-Struktur mit einer zweiatomigen Basis. Sie eignet sich für Ionen, deren Radien sich stark unterscheiden.

Die Basis wird durch die unterschiedlich geladenen Ionen gebildet. Ein Ion ist an der Position $\vec{d}_1=a/2 (0,0,0)^T$, das zweite Ion an der Position $\vec{d}_2=a/2 (1,1,1)^T$.

Seien $r_+$ der Radius der größeren Ions und $r_-$ der Radius des kleineren Ions. Dann ist die $\mathrm{CsCl}$-Struktur bei einem Größenverhältnis von $\frac{r_+}{r_-} < \frac{1}{\sqrt{3}-1}$ sinnvoll, ansonsten würden sich die größeren Ionen berühren. In diesem Fall wird üblicherweise die $\mathrm{NaCl}$-Struktur eingenommen, auch die Zinkblende-Struktur ist dann möglich.

#### NaCl-Struktur
Die Gitterstruktur von $\mathrm{NaCl}$ ist eine fcc-Struktur mit einer zweiatomigen Basis.

Die Basis wird durch die unterschiedlich geladenen Ionen gebildet. Ein Ion ist an der Position $\vec{d}_1=a/2 (0,0,0)^T$, das zweite Ion an der Position $\vec{d}_2=a/2 (1,0,0)^T$.

Seien $r_+$ der Radius der größeren Ions und $r_-$ der Radius des kleineren Ions. Bei einem Größenverhältnis von $\frac{r_+}{r_-} < \frac{1}{\sqrt{3}-1}$ wird üblicherweise die $\mathrm{CsCl}$-Struktur eingenommen. Bei $\frac{r_+}{r_-} > \frac{1}{\sqrt{2}-1}$ wird üblicherweise die $\mathrm{ZnS}$-Struktur eingenommen. Befindet sich das Größenverhältnis zwischen diesen Grenzen, ist die $\mathrm{NaCl}$-Struktur energetisch sinnvoll.

#### Zinkblendestruktur
Die Gitterstruktur einer Zinkblende $\mathrm{ZnS}$ ist eine fcc-Struktur mit einer zweiatomigen Basis. Sie ähnelt der Diamantstruktur, allerdings mit verschiedenen Basiselementen.

Die Basis wird durch die unterschiedlich geladenen Ionen gebildet. Ein Ion ist an der Position $\vec{d}_1=a/2 (0,0,0)^T$, das zweite Ion an der Position $\vec{d}_2=a/4 (1,1,1)^T$. Die Position des zweiten Ions unterscheidet die $\mathrm{ZnS}$-Struktur von der $\mathrm{NaCl}$-Struktur.

Seien $r_+$ der Radius der größeren Ions und $r_-$ der Radius des kleineren Ions. Bei $\frac{r_+}{r_-} > \frac{1}{\sqrt{2}-1}$ wird üblicherweise die $\mathrm{ZnS}$-Struktur eingenommen. wird dieses Größenverhältnis unterschritten, wird die $\mathrm{NaCl}$-Struktur eingenommen, auch die $\mathrm{CsCl}$-Struktur ist dann möglich.

### Nichtmetalle
Bei Nichtmetallen wird die Kristallstruktur durch die Orbitale der Atome/Modeküle bestimmt. Die Packungsdichte ist hier nicht entscheiden, sondern der Überlapp der Orbitale, die eine Kovalente Bindung eingehen. Ein Beispiel dafür ist die Diamantstruktur. Auch andere Bindungen können auftreten, so werden die verschiedenen Schichten von Graphit durch die Van-der-Waals-Wechselwirkung zusammengehalten, man spricht dann auch von Van-der-Waals-Materialien.

* Diamantstruktur
* Graphit

#### Diamantstruktur
Die Diamantstruktur eine fcc-Struktur mit einer zweiatomigen Basis. Neben Kohlenstoff kristallisieren auch Silizium und Germanium in der Diamantstruktur.

Ein Atom ist an der Position $\vec{d}_1=a/2 (0,0,0)^T$, ein zweites Atom an der Position $\vec{d}_2=a/4 (1,1,1)^T$. Die Positionen der Basiselemente entsprechen denen in der Zinkblende-Struktur, die allerdings verschiedene Ionen als Basiselemente besitzt.

Die Struktur wird dann eingenommen, wenn vier $\mathrm{sp}^3$-Orbitale eine Kovalente Bindung eingehen, diese ist in alle Richtungen sehr stabil.

Der Strukturfaktor $S_{\vec{G}}$ verschwindet für einige Netzebenen. Hierbei bezeichnet $n$ die Ordnung des Beugungsreflexes.

$$
  S_{\vec{G}} =
  \begin{cases}
  4 & \Leftrightarrow h,k,l \text{ gerade } \land (h+k+l)=4n\\
  4 & \Leftrightarrow h,k,l \text{ ungerade}\\
  0 & \Leftrightarrow \text{sonst}
  \end{cases}
$$

#### Graphit
Graphit bildet durch eine kovalente Bindung stabile Schichten, indem drei $\mathrm{sp}^2$-Orbitale die Bindung eingehen. Dabei ist noch ein Orbital frei, das für eine Van-der-Waals-Bindung verwendet werden kann. Deshalb zählt Graphit als Van-der-Waals-Material.

## Direkte atomar aufgelöste Abbildung von Festkörpern
### Transmissionselektronenmikroskop
Ein hochenergetischer Elektronenstrahl, der ähnlich wie Licht unterschiedlich fokussiert werden kann, schiesst auf eine dünne Probe ($<10\mathrm{nm}$). Dadurch wird ein Bild auf einem Schirm ein Bild erzeugt. Je nach Einstellung kann man ein Beugungsbild oder ein Realraumbild / Ortsraumbild erzeugen. Dies nennt man Transmissionselektronenmikroskop (TEM).

Bei einer Energie von ca $100\mathrm{keV}$ erhält man eine Wellenlänge von $\lambda_e \approx 4\cdot10^{-12}\mathrm{m}$

$$
  \lambda_e = \frac{h}{p} = \frac{4}{\sqrt{2m_eE}}
$$

Der Streuwinkel $\alpha$ ist wegen sphärischer Aberration geladener Teilchen sehr klein. Die Auflösung $\approx\frac{\lambda_e}{\sin{(\alpha)}}$ ist dafür sehr gering.

Durch abberrationskorrigierte Transmissionselektronenmikroskopen kann man inzwischen Wellenlängen von unter $0.8\AA$ erzeugen. Damit kann man einzelne Atome messen und z.B. "falsche" Atomsorten im Gitter detektieren.

Ist die Energie der Elektronen jedoch zu groß, kommt es zu Kernreaktionen.

### Rastertunnelmikroskop
Das Rastertunnelmikroskop (STM) basiert auf dem Tunneleffekt der Quantenmechanik. Über einen Piezoröhrchen kriegt man einen sehr feinen Sensor, der Oberfläche misst. Die angelegte Spannung erzeugt eine Energie $eV$, die kleiner als die Austrittsenergie $\Phi$ der gebunden Elektronen ist.

Das STM kann nur leitende Materialien messen. Das Rasterkraftmikroskop ist eine Weiterentwicklung, die auch nichtleitende Materialien messen kann.

### Rasterkraftmikroskop
Das Rasterkraftmikroskop (AFM) misst die wirkende Kraft und kann - anders als das Rastertunnelmikroskop - auch nichtleitende Materialien an der Oberfläche vermessen.

### Feldionenmikroskop
Ein Feldionenmikroskop (FIM) ionisiert ein Gas an der Spitze über der Messprobe.

## Klassifikation der Gitter und Kristallsymmetrien
### Raumgruppe
Die Raumgruppe ist die Vereinigung von Translationsgruppe und Punktgruppe.

#### Translationsgruppe
Die Gruppe der Translationen. Sie bildet zusammen mit der Punktgruppe die Raumgruppe.

#### Punktgruppe
Die Menge der Operationen in einem Raum, die mindestens _einen_ Punkt unverändert lassen.
Es gibt zwei gängige Notationen: Die Schönfliess-Notation und die Internationale Notation.

1. Drehung um $1,2,3,4,6$-zählige Achsen.
2. Inversion: $\vec{r} \mapsto - \vec{r}$
3. Spiegelung an einer Ebene
4. Drehinversion: Erst Drehung, dann Inversion
5. Drehspiegelung: Erst Drehung, dann Spiegelung senkrecht zur Drehachse

Die $5$-zählige Achse gehört nicht dazu, da es keine lückenlose Abdeckung des Raumes ermöglicht.

### Schönfliess-Notation
Wie auch die internationale Notation wird die Schönfliess-Notation zur Beschreibung von Operationen der Punktgruppe verwendet.

1. Drehung um $1,2,3,4,6$-zählige Achsen: $(c_n)$
2. Inversion: $(\mathcal I)$
3. Spiegelung an einer Ebene $(\sigma)$
4. Drehinversion: keine Notation vorhanden
5. Drehspiegelung: $(s_n)$

### Internationale Notation
Wie auch die Schönfliess-Notation wird die internationale Notation zur Beschreibung von Operationen der Punktgruppe verwendet.

1. Drehung um $1,2,3,4,6$-zählige Achsen: $n\in\{1,2,3,4,6\}$
2. Inversion $\vec{r} \mapsto - \vec{r}$: $\bar{1}$
3. Spiegelung an einer Ebene $m$
4. Drehinversion: $\bar{n}$
5. Drehspiegelung: keine Notation vorhanden

### Kristallsysteme
Für Bravaisgitter im gibt es 7 kristallographische Punktgruppen, die _Kristallsysteme_. Insgesamt gibt es 14 Bravaisgitter.

Eselsbrücke um die Reihenfolge der Symmetrien zu merken: "Katermut".

1. kubisch: P, I, F
2. tetragonal: P, I
3. rhombisch: P, I, F, C
4. monoklin: P, C
5. triklin: P
6. hexagonal: P
7. rhomboedrisch: P

Bedeutungen:

* P: primitiv
* I: raumzentriert
* F: flächenzentriert
* C: basiszentriert

fcc und bcc sind Spezialfälle des tetragonalen Gitters (bct).

#### nicht-sphärische Basis
Heftet man an diese Gruppen eine nicht-spärische Basis, verändert das die Symmetrie. Es gibt dann 32 kristallographische Punktgruppen und 230 kristallographische Raumgruppen. Hier treten auch Translationen auf, die keine Gittervektoren sind. Solche Symmetrieoperationen können z.B. eine Schraubenachse oder eine Gleitspiegelebene sein.

# 2. Defekte in Kristallen
Im thermodynamischen Gleichgewicht kann es bei endlichen Temperaturen keine defektfreien Kristalle geben.

Bei künstlich erstellen Kristallen kann man technisch planare Defekte verhindern, sogar (größtenteils) Liniendefekte. Punktdefekte kann man jedoch nicht verhindern. Zwischengitteratome und Leerstellen kann man auch athermisch durch Beschuss mit energiereichen Teilchen erzeugen.

Es gibt 3 Kategorien an Defekten:
1. Punktdefekte
2. Liniendefekte
3. Planare Defekte

## Punktdefekte
* Leerstellen
  * Bei Ionenkristallen bestimmen die Leerstellen die Leitfähigkeit
* Zwischengitteratome
* Fremdatome

Punktdefekte erhöhen den spezifischen Widerstand in Metallen.

## Liniendefekte
* Versetzungen
  * verursachen Kaltverfestigung
* Burgers-Vektor
* Stapelfehler
* Korngrenzen

## Punktdefekte
### Leerstellen
Die Kristallstruktur legt fest, wo in einem Kristall Atome sitzen sollten. Es kann sein, dass einzelne dieser Positionen nicht besetzt sind, dies nennt man Leerstellen. Es kann andererseits aber auch sein, dass an zusätzlichen Positionen Atome eingefügt sind, diese nennt man Zwischengitteratome.

Ein Schottky-Defekt ist ein fehlendes Atom im Gitter, ein Gitterpunkt ist unbesetzt.

Seien der Druck $p$ und die Temperatur $T$ konstant, dann wird das Gibbs-Potential $G = U - TS + pV$ ist im Gleichgewicht minimal. $U$ beschreibt die Energie pro Leerstelle, $S$ die Entropie. Der Term $-TS$ zeigt, dass Leerstellen die Konfigurationsentropie $S_\mathrm{konf}$ erhöhen: Man hat deutlich mehr mögliche Mikrozustände, wenn es Lücken gibt.

Typischerweise hat eine Leerstelle eine Energie $\varepsilon_0\approx 1\mathrm{eV}$, Bindungsenergien liegen bei ca $1\mathrm{eV} - 5 \mathrm{eV}$.

Durch die Temperaturabhängigkeit der Leerstellenkonzentration wachsen bzw. schrumpfen Kristalle bei Temperaturänderung.

### Wachsen und Schrumpfen von Kristallen
Die Struktur von Kristallen wächst und schrumpft bei Temperaturänderung $\Delta T$. Dies hat nichts mit der Längenausdehnung bei $\Delta T$ zu tun. In diesem Fall ändert sich der Abstand zwischen den Atomen, aber es gibt keine strukturellen Änderungen.

Ursache hierfür ist die Temperaturabhängigkeit der Leerstellenkonzentration.

Bei Temperaturerhöhung können neue Leerstellen eingebaut werden und der Kristall wächst, bei Absenkung der Temperatur wandern die Leerstellen an den Rand und der Kristall schrumpft.

Zur Erklärung dieses Phänomens ist es wichtig, dass das Gibbs-Potential minimiert wird, die Minimierung der inneren Energie erklärt das Phänomen nicht.

#### Hüpffrequenz
$$
  \nu = \nu_0 \exp[-\frac{\varepsilon_m}{k_BT}]
$$

Im B-Praktikum gibt es einen Versuch mit $\mathrm{Cu_3Au}$. Zur Erklärung ist es wichtig, dass das Gibbs-Potential minimiert wird. Minimierung der inneren Energie erklärt das Phänomen nicht.

### Leitfähigkeit
Bei Ionenkristallen wird die Leitfähigkeit größtenteils durch die Anzahl der Leerstellen bestimmt. Dadurch gibt es eine _Atommobilität_ und der Ionenkristall kann Elektrizität leiten.

Bei praktisch allen anderen anderen Kristallsorten, insbesondere bei Metallen, ist _Elektronenmobilität_ für die Leitfähigkeit verantwortlich.

### Zwischengitteratome
Die Kristallstruktur legt fest, wo in einem Kristall Atome sitzen sollten. Es kann sein, dass einzelne dieser Positionen nicht besetzt sind, dies nennt man Leerstellen. Es kann andererseits aber auch sein, dass an zusätzlichen Positionen Atome eingefügt sind, diese nennt man Zwischengitteratome (ZGA).

ZGA führen zu einer großen Gitterverzerrung und damit zu einer hohen Energie $\varepsilon_0\approx 3\mathrm{eV}$ für diesen Defekt. Daher sind die Konzentrationen von Zwischengitteratomen deutlich geringer als die von Leerstellen ($n_\mathrm{ZGA}\ll n_\mathrm{Leer}$).

Auch kleine Fremdatome können ZGA sein.

### Fremdatome
Die Kristallstruktur legt fest, welche Atome an welcher Position sein sollten. Es kommt vor, dass ein falsches Atom eingefügt wurde. Dies ist ein Punktdefekt.

Diese Fremdatome können _substitionell_ sein, d.h. sie substituieren ein Atom an einem regulären Gitterplatz. Alternativ sind sie _intersubstitionell_, d.h. es sind Zwischengitteratome. Dies funktioniert nur, wenn die Fremdatome klein sind.

Fremdatome können Versetzungsquellen sein.

## Versetzungen
Versetzungen sind Liniendefekte, bei denen eine Gitterstörung längs einer Linie auftritt.

* Stufenversetzung
* Schraubenversetzung
* Versetzungsquellen

Die Energie, um eine Versetzung zu erzeugen, ist größer als die Bindungsenergie eines Atoms, aber in einer ähnlichen Größenordnung. Die Verschiebbarkeit hängt von der Orientierung des Burgersvektors ab.

### Operative Definition
1. Schneide mit einem "magischen" Volterra-Messer entlang einer Kristallebene auf.
2. Schiebe eine der getrennten Volumina um eine Gitterlänge $\vec{b}$. Dort, wo geschnitten wurde, wird der Kristall um eine Ebene verschoben, sodass dort eine überflüssige Ebene entsteht. $\vec{b}$ ist der Burgersvektor.
3. Setze den Kristall wieder zusammen.
4. Relaxiere den Kristall durch leichte Schwingungen, sodass die Bindungsenergien wieder minimiert werden.

Dadurch ist eine Versetzunglinie entstanden: Eine Ebene des Kristallgitters endet an dem Punkt, wo beide Ebenen getrennt waren.

### Stufenversetzung
Eine Schraubenversetzung ist ein Liniendefekt, dessen Burgersvektor senkrecht zur Versetzungslinie ist.

#### Verschiebungen
Verschiebungen sind damit quasi gequantelt im $\vec{b}$, da die Gitterstruktur erhalten bleiben muss. Die aufzuwendende Arbeit $W$ ist kann für die Stufenversetzung durch die Verformungsarbeit ermittelt werden.

$$
  W = A\cdot\sigma\cdot\underbrace{\frac{2\pi rb}{A} b}_\text{mittlere Verformung}
  = 2\pi rb^2 \sigma\ .
$$

### Schraubenversetzung
Versetzungen sind Liniendefekte, bei denen eine Gitterstörung längs einer Linie auftritt.

* Stufenversetzung
* Schraubenversetzung
* Versetzungsquellen

Die Energie, um eine Versetzung zu erzeugen, ist größer als die Bindungsenergie eines Atoms, aber in einer ähnlichen Größenordnung. Die Verschiebbarkeit hängt von der Orientierung des Burgersvektors ab.

### Burgersvektor
Der Burgersvektor[^1] $\vec{b}$ ist der Schließungswinkel beim Umlauf um eine Versetzung.

Bei einer Stufenversetzung ist $\vec{b}$ immer senkrecht zur Gleitebene, bei einer Schraubenversetzung parallel zur Gleitebene.

[^1]: Benannt nach dem Niederländischen Wissenschaftler Jan Burgers.

### Frank-Read-Quelle (Versetzungsquelle)
Eine Versetzung ist zwischen 2 Punkten im Gitter fixiert, beispielsweise zwischen zwei Fremdatomen.

Durch eine äußere Schubspannung wird die Versetzung vergrößert und wächst zu einem Ring. Sobald diese ringförmige Linie sich berührt, wird sie als Ring abgelöst und ein neuer Versetzungsring kann entstehen. Auf diese Weise können Versetzungen wachsen. Schrumpfen können sie allerdings nicht.

### Stapelfehler
Es treten in der Realität immer wieder Stapelfehler auf, die die Kristallstruktur in einer Ebene verschieben. Dies ist ein Liniendefekt.

### Kaltverfestigung
Wird ein weiches Material mit wenigen Versetzungen verformt, entstehen üblicherweise neue Versetzungen. Die Versetzungslinien "verhaken" sich und machen Verformungen schwierig bis unmöglich. Auf Dauer wird das Material spröde und es bricht. Dabei wird ein weiches Material durch plastische Verformung fest. Diesen Prozess nennt man Kaltverfestigung (eng. _work hardening_).

Metalle sind _duktil_, also formbar; Keramiken sind _spröde_.

#### Elastische Verformung
Durch Kraft wird ein Stoff verformt. Ohne weitere Kraft wird die ursprüngliche Form wieder angenommen, im Gegensatz zu Plastischer Verformung.

#### Plastische Verformung
Durch Kraft wird ein Stoff verformt. Auch ohne weitere Kraft bleibt diese neue Form erhalten, im Gegensatz zu Elastischer Verformung.

Durch Gleiten scheren dichtgepackte Kristallebenen aneinander ab. Auf einem Bild sieht dies ähnlich wie ein Röntgenbild eines Knochenbruchs aus.

Beim Scheren des Kristalls wird nicht die kompletten Scherebene, sondern nur die Linie der Versetzung verschoben. Diese kann aus dem Kristall herausgeschoben werden. Dadurch entsteht plastische Verformung.

Die Gleitebenen sind senkrecht zur den Versetzungslinien, daher gibt es spezielle Scherlinien, an denen der Kristall geschert werden kann. Dies geht nicht in alle Richtungen, sondern nur parallel zum Burgers-Vektor $\vec{b}$.

# 3. Beugung
Für passende Strahlung wirkt ein Kristall als Beugungsgitter. Röntgenstrahlung ist die häufigste verwendete Strahlung.

Oft nimmt man vereinfachend an, das bei der Streuung keine Energieverluste auftreten.

Die Erklärung nach Laue beschreibt dieses Phänomen dadurch, dass jedes Atom einfallende Strahlung isotrop abstrahlt und als Punktstrahler angenommen werden kann.

Die Erklärung nach Bragg nimmt dagegen an, dass an jeder Netzebene ein kleiner Teil der Strahlung gestreut wird.

Es gibt verschiedene praktikable Verfahren, um Messungen durchzuführen.

## Das reziproke Gitter
### Das reziproke Gitter
Eine gitterperiodischen Funktion $f(\vec{r}) = f(\vec{r} + \vec{R})$ kann auch als als Fourierreihe $\mathcal F(f(\vec{r}))$ dargestellt werden. Die Menge aller $\vec{G}$ erfüllt $\mathrm e^{i\vec{G}\vec{R}}=1$ und definiert somit reziprokes Gitter.

$$
  f(\vec{r}) = \mathcal F(f(\vec{r})) = \sum_{\vec{G}} f_{\vec{G}}\mathrm e^{i\vec{G}\vec{R}}=1 \\
  f_{\vec{G}} = \frac{1}{V} \int_V f(\vec{r}) \mathrm e^{-i\vec{G}\vec{R}}
$$

Dieses ist ein Bravaisgitter, da $\vec{G}$ durch ganzzahlige $k_i$ und Basisvektoren $\vec{b_i}$ dargestellt werden kann. Die Basisvektoren sind die Entsprechung zu Primitiven Translationen im direkten Gitter. $V$ ist hier das Volumen einer Einheitszelle. Die Vektoren $\vec{b}_i$ haben die Einheit $\mathrm m^{-1}$, da sie Wellenvektoren $k=\frac{2\pi}{\lambda}$ entsprechen, und können aus den primitiven Translationen $\vec{a}_i$ ermittelt werden.

$$
\begin{aligned}
  \vec{G} = &k_1 \vec{b}_1 + k_2 \vec{b}_2 + k_3 \vec{b}_3\\
  \vec{b}_1 = &\frac{2\pi}{V_\mathrm{Zelle}}(\vec{a}_2 \times \vec{a}_3)\\
  \vec{b}_2 = &\frac{2\pi}{V_\mathrm{Zelle}}(\vec{a}_3 \times \vec{a}_1)\\
  \vec{b}_3 = &\frac{2\pi}{V_\mathrm{Zelle}}(\vec{a}_1 \times \vec{a}_2)\\
  \forall i,j\in\{1,2,3\}: &\ \vec{a}_i \vec{b}_j = \delta_{ij}
\end{aligned}
$$

Das Gitter im Realraum wird zur Unterscheidung vom reziproken Gitter direktes Gitter genannt.

* sc ist reziprok ebenfalls reziprok sc
* fcc ist reziprok bcc und umgekehrt
* Die 1. Brillouinzone ist das Äquivalent der Wiegner-Seitz-Zelle im reziproken Raum
* Zu jedem reziproken Gittervektor $\vec{G}$ gibt es eine Netzebenenschar, die senkrecht zu $\vec{G}$ steht und den Abstand $d$ haben. Der kürzeste zu $\vec{G}$ parallele Gittervektor ist $\vec{G}_\mathrm{min}$ mit $|\vec{G}_\mathrm{min}| = \frac{2\pi}{d}$.
* Die ganzzahligen Komponenten von $\vec{G}_\mathrm{min}$ sind die Millerschen Indizes.

#### Literatur
1. Vorlesung: Festkörperpysik
2. [@Gross2012Festkörper]
3. [@Hunklinger2011Festkörper]
### Das direkte Gitter
Das direkte Gitter ist das Gitter im reale Raum. Dieser Begriff wird zur Unterscheidung zum reziproken Gitter verwendet. Die primitiven Translatoren $\vec{a}_i$ sind im direkten Gitter definiert.

### Die Brillouinzone
Die 1. BZ ist die Menge aller Punkte im reziproken Gitter, die näher an einem Gitterpunkt liegen als an allen anderen Gitterpunkten liegen. Sie beschreibt die Umgebung eines Gitterpunktes und ist eine primitive Zelle. Sie entspricht der Wiegner-Seitz-Zelle im direkten Raum.

Daher erfüllt sie wie die primitive Einheitszelle den Raum ohne Lücke und ohne Überlapp. Durch ihre Konstruktion repräsentiert sie die volle Symmetrie des Gitters.

Im zweidimensionalen Raum wird sie konstruiert, indem die Mittelsenkrechten zwischen benachbarten Gitterpunkten eintragen, im dreidimensionalen Raum muss man entsprechende Flächen, die Bragg-Ebenen, eintragen. Das auf diese Weise eingeschlossene Volumen ergibt die 1. BZ.

Wird eine Welle an einem Punkt im reziproken Gitter gestreut, so wird sie dann reflektiert wenn sie auf dem Rand der 1. BZ enden.

#### Literatur
1. Vorlesung: Festkörperpysik
2. [@Gross2012Festkörper]
3. [@Hunklinger2011Festkörper]
### Netzebenen
Eine Netzebene ist eine Ebene durch 3 Gitterpunkte eines Bravaisgitters, die nicht auf einer Linie liegen. Eine Netzebene entält unendlich viele Gitterpunkte. Netzebenen werden durch die Millerschen Indizes beschrieben.

#### Netzebenenschar
Eine Netzebenenschar ist eine Menge äquidistanter und paralleler Netzebenen, die alle Gitterpunkte enthalten.

#### Klassifizierung von Netzebenenscharen
Für jede Netzebenenschar mit Ebenenabstand $d$ gibt es reziproke Gittervektoren senkrecht auf diesen Ebenen. Der kürzeste dieser reziproke Gittervektoren $\vec{G}_\mathrm{min}$ hat die Länge $|\vec{G}_\mathrm{min}|=\frac{2\pi}{d}$.

Umgekehrt gibt es zu jedem reziproken Gittervektor $\vec{G}$ eine Netzebenenschar, die senkrecht zu $\vec{G}$ steht und den Abstand $d$ haben. Der kürzeste zu $\vec{G}$ parallele Gittervektor ist $\vec{G}_\mathrm{min}$ mit $|\vec{G}_\mathrm{min}| = \frac{2\pi}{d}$.

### Millersche Indizes
Die Millerschen Indizes sind die Komponenten des kürzesten reziproken Gittervektors auf einer Netzebenenschar. Sie sind ganze Zahlen ohne gemeinsamen Teiler. Eine Ebene mit Millerschen Indizes $(hkl)$ steht also senkrecht auf $\vec{G} = h \vec{b}_1 + k \vec{b}_2 + l \vec{b}_3$. $\{\vec{b}_i\}$ sind dabei Gittervektoren, die reziprok zu den Kristallachsen $\{\vec{a}_i\}$ der konventionellen Einheitszelle sind.

Eine äquivalente Definition im direkten Gitter nutzt die Netzebenen:

1. Bestimme Achsenabschnitte einer Netzebene mit den Kristallachsen in Einheiten von $\{\vec{a}_i\}$.
2. Bilde Kehrwerte dieser Zahlen und erweitere Brüche auf kleinste ganze Zahlen.
3. Das Ergebnis $(hkl)$ sind die Millerschen Indizes dieser Ebene.

### Notation von Ebenen
Netzebenen sowie Richtungen in Kristallen werden durch die Millerschen Indizes beschrieben.

Einen negativen Achsenabschnitt kennzeichnet man durch einen Strich über der Zahl, z.B. $(\bar{1}00)$. Ein Achsenabschnitt im Unendlichen wird durch $0$ indiziert, da $\frac{1}{\infty}\rightarrow 0$. Für hohe Zahlen schreibt man z.B. $(12\ 13\ 24)$, Sonderzeichen werden nicht verwendet.

Im kubischen Gitter stehen die Ebenen $(hkl)$ und die Richtungen $[hkl]$ senkrecht aufeinander, in anderen Kristallsystemen gilt dies nicht. Die Richtungen $[110]$, $[100]$ und $[111]$ werden zudem durch besondere Punkte wie dem $\Gamma$-Punkt bezeichnet.

#### Ebenen
Eine einzelne Ebene wird durch runde Klammern, z.B. $(100)$, dargestellt. Meint man alle äquivalenten Ebenen, nutzt man geschweifte Klammern, beispielsweise $\{100\}$.

$n(111)$ oder $(nnn)$ beschreibt die $n$-te Beugungsebene in der $(111)$-Ebene.

#### Richtungen
Richtungen im Kristall werden durch die kleinsten ganzen Zahlen $[n_1,n_2,n_3]$ angegeben, die dasselbe Verhältnis wie die selben Komponenten des Richtungsvektors $\vec{R} = n_1 \vec{a_1} + n_2 \vec{a_2} + n_3 \vec{a_3}$ haben. Einen Satz äquivalenter Richtungen stellt man in spitzen Klammern, z.B. $\braket{100}$, dar.

#### Merkhilfe
* Ebenen haben keine Kanten, daher werden zur Notation runde oder geschweifte Klammern verwendet.
* Richtungen sind Vektoren, deswegen werden zur Notation eckige oder spitze Klammern verwendet.

## Beugungsbedingungen
### Beugungsbedingung nach Laue
Ein Beugungsbild entsteht durch Interferenz von streuenden Atomgruppen, die Basis, die an die Gitterpunkte angeheftet sind. Jedes Atom strahlt einfallende Strahlung isotrop ab und kann als Punktstrahler angenommen werden.

Der Gangunterschied zwischen verschiedenen reflektierten Strahlen ist durch $d\cos\theta + d\cos\theta^\prime = \vec{d}\cdot(\vec{n}-\vec{n}^\prime)$, wobei $\theta$ der Winkel zwischen dem Strahl und der Verbindungslinie zwischen beiden Punktstrahlern ist.

Damit es Streureflexe gibt, müssen alle Punktstrahler konstruktiv interferieren. Dies ist gegeben, falls das Skalarprodukt des Ortsvektors $\vec{R}$ (des Gitterpunktes) und der Differenz der Wellenvektoren ein Vielfaches von $2\pi$ ist, also wenn $\vec{R}\cdot(\vec{k}-\vec{k}^\prime)=2\pi m$. $\vec{k}$ ist hierbei der Wellenvektor des einfallenden Strahls und $\vec{k}^\prime$ der des am hinteren Atoms reflektierte Strahl.

Dies ist äquivalent zu $\exp[i(\vec{k}-\vec{k}^\prime)\vec{R}]=1$, die Differenz der Wellenvektoren muss also ein reziprokes Gitter $\vec{G}=\vec{k}-\vec{k}^\prime$ beschreiben. Dies bedeutet, dass die Projektion des einfallenden Wellenvektors $\vec{k}$ auf den Gittervektor $\vec{G}$ der halbe Gittervektor $\frac{\vec{G}}{2}$ sein muss. Im zweidimensionalen Fall liegen $\vec{G}_\parallel$ und $\vec{R}_\parallel$ in einer Ebene, daher sind nur die parallelen Komponenten interessant.

$$
\begin{aligned}
  && \vec{G} &= \vec{k}-\vec{k}^\prime \\
  2\mathrm D: && \vec{G}_\parallel &= \vec{k}_\parallel-\vec{k}_\parallel^\prime \\
  && \vec{k}\cdot\frac{\vec{G}}{|\vec{G}|} &= \frac{|\vec{G}|}{2}
\end{aligned}
$$

Daher werden alle Wellenvektoren, die auf den Bragg-Ebenen enden, reflektiert. Dies ist äquivalent zu der Aussage, dass alle Wellenvektoren, die auf der Grenze der Brillouinzone enden, reflektiert werden.

Diese Bedingung kann mit der Evald-Konstruktion besonders anschaulich beschrieben werden.

Die Bragg-Bedingung kann man aus der Laue-Bedingung herleiten.

### Bragg-Ebenen
Die senkrechten Ebenen in der Mitte zwischen zwei Netzebenen im reziproken Gitter werden Bragg-Ebenen genannt. Sie bilden die Grenzflächen der 1. Brillouinzone.

Alle Wellenvektoren, die an einem Gitterpunkt starten und auf einer Bragg-Ebene enden, werden reflektiert. Dies geht aus der Laue-Bedingung für Reflektion hervor.

### Evald-Konstruktion
Die Evald-Konstruktion ist eine besonders anschauliche Darstellung der Laue-Bedingung für Reflektion.

* Der einfallende Wellenvektor $\vec{k}$ endet am Ursprung.
* Schlage Kreis vom Radius $k$ um Anfangspunkt von $\vec{k}$.
* Schneidet der Kreis neben dem Ursprung einen weiteren Gitterpunkt, so gibt es fúr diesen Streuvektor einen Beugungsreflex mit $\vec{k}^\prime$. Verbindet ein reziproker Gittervektor $\vec{G}$ diesen Punkt mit dem Ursprung $0$, so ist $\vec{G}=\vec{k} -\vec{k}^\prime$.

### Beugungsbedingung nach Bragg
Ein scharfer Röntgenreflex entsteht dann, wenn die Strahlung jeweils zu einem kleinen Bruchteil an Netzebenen einer Schar mit Ebenenabstand $d$ reflektiert wird und die reflektierte Strahlung verschiedener Ebenen konstruktiv interferiert.

Für polychromatische Strahlung treten im Allgemeinen viele Reflexe und höhere Beugungsordnungen auf.

Die Braggsche Beugungsbedingung lautet $n\cdot \lambda = 2d\sin\theta$ mit dem Einfallswinkel $\theta$ des Strahls.

Dies ist nicht vollständig physikalisch erklärbar, da sich nicht notwendigerweise auf jeder Netzebene ein Atom "unterhalb" der Atome der 1. Ebene befindet. Man kann die Bragg-Bedingung allerdings aus Laues Erklärung herleiten.

###### Herleitung der Bragg-Bedingung aus der Laue-Bedingung
Der Streuvektor $\vec{G}$ sei ein ganzzahliges Vielfaches des kürzesten reziproken Gittervektors $\vec{G}_\mathrm{min}$, d.h. $\vec{G}=n\cdot\vec{G}_\mathrm{min}$. Dieser Gittervektor steht senkrecht auf der Netzebenenschar, an der reflektiert wird. Es soll konstruktive Interferenz geben, also gilt nach der Laue-Bedingung $n\vec{G}_\mathrm{min} = 2k\sin\theta$. Da $k=\frac{2\pi}{\lambda}$ und $|\vec{G}_\mathrm{min}|=\frac{2\pi}{d}$ folgt die Bragg-Bedingung $n\lambda=2d\sin\theta$.

## Streuintensität
Der zu betrachtende Ort ist der Ort der Elektronen, da Röntgenstrahlung an den Elektronen gestreut wird. Dies wiederum ist die meistverwendete Strahlung für Beugungsexperimente.

Die messbare Streuintensität eines Kristalls ist $I_{\vec{G}} \propto |S_{\vec{G}}|^2$. Sei $\vec{r}$ der Ort, der betrachtet wird, $\tilde{\vec{r}}$ der Vektor von einem Atomkern zu ebendiesem Punkt und $\vec{r}_1$ der Vektor zum Atomkern. Dann schreiben wir die Elektronendichte in einer Elementarzelle als

$$
  \rho(\vec{r}) = \sum_j \rho_j(\vec{r}-\vec{r}_j) = \sum_j \rho_j(\tilde{\vec{r}}) .
$$

Damit wird der Strukturfaktor $S_{\vec{G}} = \int_{V_\mathrm{Zelle}} \sum_j \rho_j(\tilde{\vec{r}}) \cdot \mathrm e^{i\vec{G}(\vec{r}+\tilde{\vec{r}_j})} \mathrm dV$. Da $\vec{r}_j$ konstant ist, können die Terme mit $\vec{r}_j$ aus dem Integral gezogen werden.

$$
  S_{\vec{G}} = \sum_j \mathrm e^{i\vec{G}\vec{r}_j}
  \int_{V_\mathrm{Zelle}} \rho_j(\tilde{\vec{r}}) \cdot \mathrm e^{i\vec{G}\tilde{\vec{r}_j}} \mathrm dV
$$

Unter Verwendung der Atomformfaktoren $f_j$ kann man den Strukturfaktor einfacher darstellen.

$$
  S_{\vec{G}} = \sum_j \mathrm e^{-i\vec{G}\vec{r}_j} \cdot f_j
$$

Die Temperaturabhängigkeit der Streuintensität wird durch den Debye-Waller-Faktor $D(T)$ beschrieben. Je größer der reziproke Gittervektor $\vec{G}$ oder Temperatur $T$ sind, desto kleiner sind $D(T)$ und die Streuintensität $I(T)$. Dadurch sind Streuungen höherer Ordnung schwächer.

### Strukturfaktor
Bei der Beschreibung der Beugungsbedingungen wurden punktförmige Streuer an Gitterpunkten angenommen und nur die Richtungen der möglichen Streureflexe betrachtet. Die Intensität dieser Reflexe wurden nicht betrachtet. Dies soll nun korrigiert werden.

Der Strukturfaktor ist die Fouriertransformierte der Elektronendichte einer Elementarzelle.

Die Streuamplitude in Richtung $\vec{k}^\prime$ wird bestimmt durch Superposition der Teilwellen von Streuvolumina $\mathrm dV$ mit Elektronendichten $\rho(\vec{r})$, Phasen $\varphi(\vec{r})$ und Phasenfaktoren $\mathrm e^{i\varphi(\vec{r})}$. $\vec{G}$ ist ein reziproker Gittervektor. Dafür ist es hilfreich, die Atomformfaktoren $f_j(\vec{G})$ zu nutzen.

$$
\begin{aligned}
  S_{\vec{G}} &=
  \int_{V_\mathrm{Zelle}} \rho(\vec{r})\mathrm e^{i\varphi(\vec{r})} \mathrm dV\\
  S_{\vec{G}} &= \sum_j f_j(\vec{G}) \cdot \exp[-i\vec{G}\vec{r}_j] \\
\end{aligned}
$$

An Gitterpunkten $\vec{R}$ gilt $\varphi(\vec{r})=-\vec{G}\cdot\vec{R}=2\pi n$ für ganze Zahlen $n\in\mathbb Z$. Die Phase der gestreuten Teilwelle ist $-\vec{G}\cdot\vec{r} = \varphi(\vec{r})$. Daraus folgt die Streuamplitude.

$$
  S_{\vec{G}} = \int_{V_\mathrm{Zelle}} \rho(\vec{r})\mathrm e^{i\vec{G}\vec{r}} \mathrm dV
$$

###### Beispiel
Sei das bcc-Gitter als sc-Gitter mit zweiatomiger Basis beschrieben. Dann werden die Ebenen $\{hkl\}$ reflektieren, die einen Strukturfaktor ungleich $0$ haben. Für gerade $n$ ist dies für alle Ebenen $\{nh\ nk\ nl\}$ gegeben. Beispielsweise gibt es keinen $(100)$-Reflex, aber einen $(200)$-Reflex.

Im fcc-Gitter gibt es deutlich mehr reflektierende Ebenen. In der Diamantstruktur gibt es zwar mehr als im bcc-Gitter, aber weniger als im fcc-Giter.

### Atomformfaktor
Der Atomformfaktor ist die Fouriertransformierte der Elektronendichte eines Atoms und gibt das Streuvermögen desselben als Funktion des Streuvektors $\vec{G}$ an. Dieser ist dabei ein reziproker Gittervektor.

$$
  f = \int_{V_\mathrm{Atom}} \rho(\vec{r}) \cdot \mathrm e^{i\vec{G}\vec{r}} \mathrm dV
$$

Die gesamte Elektronendichte $\rho$ kann man sehr gut annähern, indem man die Elektronendichte des einzelnen Atoms annimmt. Die Veränderung durch Wechselwirkung bei Atombindungen ist vergleichsweise gering. Je größer der Streuvektor $\vec{G}$, desto kleiner der Atomformfaktor $f_{\vec{G}}$.

Wären sämtliche Elektronen am Ort $\vec{r}=0$ konzentriert, so wäre $\rho(\vec{r}) = Z\delta(\vec{r})$. Dann wäre $f=Z$, was das maximale Streuvermögen eines Atoms darstellt. Hierbei sind $Z$ die Anzahl der Protonen und $\vec{r}$ der Verbindungsvektor von Atomzentrum zu dem jeweiligen Elektron.

Die geringste Beugungsordnung hat die höchste Streuintensität.

### Debye-Waller-Faktor
Der Debye-Waller-Faktor $D(T)$ beschreibt in der Festkörperphysik das Verhalten der Streuintensität $I(T)$ als Funktion der Temperatur. $M$ ist die Masse der schwingenden Atome bzw. Modeküle, $\omega$ die Schwingungsfrequenz.

$$
  D(T) = \exp\left[-\frac{k_bT}{M\omega^2}\cdot |\vec{G}|^2\right] < 1 \\
  I(T) = D(T)\cdot I_0 \\
$$

Je größer der reziproke Gittervektor $\vec{G}$ oder Temperatur $T$ sind, desto kleiner sind $D(T)$ und die Streuintensität $I(T)$.

## Experimentelle Beugungsverfahren
Es gibt verschiedene Verfahren, mit denen Beugungsexperimente an Festkörpern vorgenommen werden. Als Strahlung eignen sich v.a. Röntgenstrahlung, Synchrotronstrahlung und manche Teilchenstrahlen.

* Laue-Verfahren
* Drehkristallverfahren
* Debye-Scherrer-Verfahren

### Laue-Verfahren
Das Laue-Verfahren ist eine Methode, um mithilfe von Beugung Festkörper zu untersuchen. Es wird vor allem zur Orientierung von Kristallen verwendet.

Ein polychromatischer Röntgenstrahl mit einer Wellenlänge $\lambda$ im Interval $[\lambda_1, \lambda_0]$ bzw. Wellenvektoren $k\in[k_0, k_1]$ wird längs der Symmetrieachse eines Kristalls eingestrahlt. Dies führt zu einem Beugungsbild, das die Symmetrie des reziproken Gitters zeigt.

### Drehkristallverfahren
Das Drehkristallverfahren ist ein Verfahren um Beugungsexperimente an Kristallen durchzuführen. Es wird für die Suche nach Reflexen parallel zur Kristalloberfläche in der $\theta-2\theta$-Geometrie durchgeführt, wobei $2\theta$ der Winkel zwischen dem einfallenden und dem ausfallendem Strahl ist.

Ein monochromatischer Röntgenstrahl wird auf den Kristall gestrahlt. Dann wird der Kristall gedreht, was die reziproken Gitterpunkte des Kristalls auf einer Kreisbahn bewegt. Sobald der Betrag des reziproken Gitter kleiner als der doppelte Wellenvektor ist ($|\vec{G}|\le 2k$), gibt es Reflexe.

Beispielsweise wird auf diese Weise die Textur von Stoffen untersucht.

### Debye-Scherrer-Verfahren
Das Debye-Scherrer-Verfahren ist ein Verfahren um Beugungsexperimente an einem Pulver aus Kristalliten durchzuführen, die etwa $1\mathrm{\mu m}$ groß sind.

Auf diese Weise sind gleichzeitig alle Orientierungen des reziproken Raums vorhanden. Der Beugungsreflex zur Netzebene $(hkl)$ ist ein Kreis, der durch die Rotation des Wellenvektors $\vec{k}$ um die $\vec{k}$-Achse beschrieben wird.

Hier gilt die Beugungsbedingung $|\vec{G}|=2k\sin\theta$. Daher gibt Kreisreflexe für jede Netzebene, da es immer alle Netzebenen in jeder Orientierung gibt. Da die Intensität abhängig von der Beugungsordnung abhängt, wird nicht alles gleich stark reflektiert. Höhere Beugungsordnungen verschwinden.

Der große Vorteil dieser Methode ist, dass keine makroskopischen Kristalle benötigt werden. Diese sind oft nicht einfach herstellbar.

### Strahlung für Beugungsexperimente
Für passende Strahlung wirkt ein Kristall als Beugungsgitter. Röntgenstrahlung ist die häufigste verwendete Strahlung. Die Wellenlänge der Strahlung $\lambda$ muss die Größenordnung der Gitterkonstante $a$ haben.

#### Synchrotronstrahlung
Die Röntgenbeugung hat einen großen Aufschwung durch den Bau von Synchrotronstrahlungsquellen erfahren. Sie liefern eine Auflösung mit $10^{10}$-mal größerer Brillianz (Intensität pro Fläche) als Laborgeräte mit herkömmlicher Röntgenstrahlung.

Die Abstrahlcharakteristik eines im Kreis rotierenden Elektrons hat in seinem Ruhesystem Dipolcharakteristik. Im Laborsystem tritt eine scharfe Fokussierung in Vorwärtsrichtung auf, da das Elektron relativistisch schnell ist.

#### Teilchenstrahlen
Neben Photonen können auch Teilchen mit Ruhemasse an Kristallen gebeugt werden. Die De-Broglie-Wellenlänge ist für nichtrelativistische Teilchen $\lambda=\frac{h}{p}=\frac{h}{\sqrt{2mE}}$.

Beispielsweise kann man mit Heliumatomen die Oberfläche von Kristallen messen.

Mit Neutronen kann man dagegen auch tiefere Netzebenen erreichen. Diese werden an den Atomkernen gestreut, haben aber eine geringe Wechselwirkungswahrscheinlichkeit, weshalb große Kristalle notwendig sind. Da der Neutronenspin mit Elektronenspins wechselwirkt, kann man auch magnetische Informationen erhalten.

Elektronen kann man ebenfalls gut für Beugungsexperimente nutzen. Hochenergetische Elektronen erzeugen Beugungsbilder im Transmissionselektronenmikroskop. Bei zu hoher Energie gibt es jedoch Kernreaktionen.

Niedrigenergetische Elektronen (LEED) werden u.a. in der Oberflächenkristallographie verwendet.

# 4. Bindungen in Kristallen
Man kann Kristalle nach Symmetrien klassifizieren, ebenso auch nach Bindungsart bzw. Elektronenverteilung klassifizieren. Im Allgemeinen treten Mischformen von verschiedenen Bindungsarten auf.

Gravitation und Magnetismus sind für die Bindung in Kristallen praktisch irrelevant, nur die elektrostatische Coulomb-Wechselwirkung zwischen Atomrümpfen und Elektronen ist ausschlaggebend. Durch Minimierung der Coulomb-Energie können Spins geordnet werden, dadurch kann Magnetismus entstehen.

Aus der Bindungsenergie und der Paulirepulsion entsteht ein Potential $V$, das eine attraktive und eine repulsive Komponente hat. Es gibt immer einen Abstand $a$, bei dem die Kräfte im Gleichgewicht sind, weshalb $\frac{\mathrm d}{\mathrm dr}V_\mathrm{total}\overset{!}{=}0$ gilt. Diesen Abstand nennt man _Gleichgewichtsgitterkonstante_.

* Die Van-der-Waals-Bindung ist nur dann relevant, wenn es ansonsten keine Bindungen gibt.
* Die Ionische Bindung verbindet durch die Coulomb-Wechselwirkung.
* Bei der kovalenten Bindung überlagern sich Orbitale von Atomen.
* Bei der Metallbindung sind die Valenzelektronen delokalisiert.
* Die Wasserstoffbrückenbindung bindet Modeküle mit Dipolmoment.

Insbesondere die Ionenbindung und die kovalente Bindung treten nur selten in Reinform aus, oft gibt es eine Mischung aus beidem. Auch die Metallbindung ist oft in in Kombination mit der kovalenten Bindung anzutreffen. Übergangsmetalle haben stehts auch einen Antail an kovalenter Bindung.

## Kohäsivenergie (Bindungsenergie)
Die Kohäsivenergie $E_\mathrm{coh}$ ist die Arbeit pro Atom, um einen Kristall in Atome zu zerlegen. Sie ist für die Bindungen in Kristallen verantwortich.

$$
  E_\mathrm{coh} =
  \frac{E_\mathrm{frei}}{n_\mathrm{Atome}}
  - \frac{E_\mathrm{Kristall}}{n_\mathrm{Atome}}
$$

Beispielsweise haben Neon $E_\mathrm{coh}=0.02\mathrm{eV}$, Silizium $E_\mathrm{coh}=4.63\mathrm{eV}$ und Wolfram $E_\mathrm{coh}=8.95\mathrm{eV}$. Außer bei Edelgasen ist diese Energie in der Größenordnung von Elektronenvolt und können im Periodensystem um den Faktor $400$ variieren, die Schmelztemperaturen in Kelvin variieren dagegen um den Faktor $150$.

Das bindende Potential besteht üblicherweise aus der Kohäsivenergie und der Paulirepulsion. Es kann durch das Lennard-Jones-Potential beschrieben werden.

## Paulirepulsion
Paulirepulsion ist eine statistische repulsive Wechselwirkung, die aus dem Pauli-Prinzip herrührt. Da sich keine Fermionen im selben Zustand befinden dürfen, muss es eine repulsive Wechselwirkung geben, die genau dies verhindert.

Es gibt verschiedene Potentiale um Paulirepulsion darzustellen.

1. Born-Mayer-Potential: $V(r)_\mathrm{rep} = \lambda \exp\left[-\frac{r}{\rho}\right]$
2. der repulsive Teil des Lennard-Jones-Potentials mit $B>0$: $V(r)_\mathrm{rep} = \frac{B}{r^{12}} = 4\varepsilon \left( \frac{\sigma}{r} \right)^{12}$

Bei Ionenkristallen verringert die Paulirepulsion die Bindungsenergie im Gleichgewichtszustand um ca. $15\%$.

## Van-der-Waals-Bindung
Die VdW-Wechselwirkung ist eine sehr schwache interatomare oder intermodekulare Wechselwirkung, die immer anwesend ist. Sie ist jedoch nur relevant, wenn keine andere Wechselwirkungen vorhanden sind, ansonsten wirken sie nur zusätzlich. Bei Edelgasen tritt nur diese Bindungsart auf.

Dadurch, dass die Elektronen fluktuieren, gibt es in Atomen immer verschiedene Dipolmomente. Diese Dipolmomente können eine attraktive Wechselwirkung verursachen. Es gibt sowohl eine Coulomb-Wechselwirkung als auch Paulirepulsion. Dadurch gibt es ein Gleichgewicht zwischen attraktiver und repulsiver Wechselwirkung.

Materialien, bei denen Schichten durch die Van-der-Waals-Bindung zusammengehalten werden, nennt man Van-der-Waals-Materialien.

#### Gleichgewichtsgitterkonstante
Die Gleichgewichtsgitterkonstante von Van-der-Waals-Materialien kann folgendermaßen ermittelt werden.

Die Gesamtenergie eines Van-der-Waals-Kristalls kann als Funktion des nächsten Nachbarabstandes $a$, mit $r_{ij}=\alpha_{ij}a$ und der Gesamtzahl der Atome $N$, dargestellt werden. Damit jedes Paar nur einfach gezählt wird, muss das Lennard-Jones-Potential $V_i$ mit $\frac{N}{2}$ multipliziert werden, um alle Bindungskombinationen zu ermitteln. $A_{12}$ und $A_6$ sind Gittersummen.

$$
\begin{aligned}
  V_\mathrm{total}(a) &= 4\varepsilon\frac{N}{2} V_i \\
  V_\mathrm{total}(a) &= 2N\varepsilon(A_{12} - A_{6})
\end{aligned}
$$

Dies geht in dieser Form nur für einatomige Kristalle, da in den Variablen $\varepsilon$ und $\sigma$ von der genauen Bindung abhängen. Für Modekülkristalle kann man diese Rechnung nutzen, wenn man die Bindungen innerhalb der Modeküle vernachlässigt.

Diese Funktion wird nach $a$ minimiert, d.h. $\frac{\mathrm d}{\mathrm da}V_\mathrm{total}\overset{!}{=}0$. Dies ist erfüllt, folgende Relation gilt.

$$
  \Rightarrow \left(\frac{a}{\sigma}\right)^6 = \frac{12A_{12}}{6A_6} \ .
$$

### Van-der-Waals-Materialien
Materialien, bei denen Schichten durch die Van-der-Waals-Bindung zusammengehalten werden, nennt man Van-der-Waals-Materialien. Diese werden z.B. in der Computertechnik verwenden, wie als Lithium-Ionen-Akku.

#### Nullpunktsschwingungen im Kristall
Auch Edelgase können durch die Van-der-Waals-Wechselwirkung Kristalle bilden, sie zählen daher zu den Van-der-Waals-Materialien. Durch Nullpunktsschwingungen wird allerdings
Für Helium ist dieser Effekt so groß, dass kein kristalliner Zustand existiert.

Für die Gittersummen einer fcc-Struktur erhält man für z.B. Edelgase eine Gleichgewichtsgitterkonstante von $\frac{a}{\sigma}\approx 1.09$. Im Experiment erhält man leicht höhere Werte,[^2] die potentielle Energie ist dafür etwas kleiner. Es gibt also einen systematischen Fehler. Dies liegt an quantenmechanischen Nullpunktsschwingungen, die Energie binden.

Die Nullpunktsenergie ist $E_0=\frac{1}{2}\hbar\omega$. Interpretiert man dies als Potential einer Federkraft, erhält man $E_0=\frac{1}{2}\hbar\sqrt{\frac{D}{M}}=\frac{1}{2} D\hat{x}^2$, wobei die Federkonstante $D$ von der Elektronenzahl des Atoms abhängt und $\hat{x}$ die Auslenkung ist.

Wegen der Anharmonizität des Lennard-Jones-Potentials ist der Erwartungswert der Position für höhere $E_0$ größer als die Gleichgewichtsgitterkonstante. Daher ist potentielle Energie schwächer als berechnet.

[^2]: Für Xenon stimmt der Wert ungefähr, für Neon liegt er bei $1.14$.

### Lithium-Ionen-Akku
Ein Lithium-Ionen-Akku besteht zur Hälfte aus einem Ionenkristall, der Lithium beinhaltet, und zur anderen Hälfte aus Graphit-Schichten. Diese sind durch einen Seperator getrennt.

Weil Graphit ein Van-der-Waals-Material ist, können Lithiumionen zwischen den Graphitschichten gelagert werden. Das Lösen aus dem Kristall kostet Energie und findet daher beim Laden des Akkus statt. Beim Entladen fließen die Lithiumionen wieder in den Ionenkristall. Bläht sich der Akku auf, haben sich normalerweise die Graphitschichten verschoben.

## Ionische Bindung
Ionenkristalle bestehen aus positiv und negativ geladenen Ionen. Die Bindung erfolgt durch elektrostatische Anziehung zwischen den Ionen.

Die Ionisationsenergie $E_I$ wird aufgewendet um das Elektron aus dem gebenden Atom zu lösen. Die Elektronenaffinität $E_\mathrm{aff}$ wird durch die Aufnahme dieses Elektrons beim anderen Atom freigesetzt. Da die Ionen sich anziehen, wird zudem die Coulombenergie $E_C$ verringert. Ohne den Term der verringerten Coulombenergie würde der Gesamtprozess Energie kosten und demnach nicht ablaufen. Es muss gelten $E_C - E_I + E_\mathrm{aff} >0$.

Beispielsweise gibt ein Natriumatom ein Elektron an ein Chloratom ab. Bei Natrium ist $E_I=5.1\mathrm{eV}$, bei Chlor ist $E_a=3.61\mathrm{eV}$, die Coulombenergie wird bei der Gitterkonstante $a=2.8\AA$ etwa $E_C=5\mathrm{eV}$.

Die Paulirepulsion die Bindungsenergie im Gleichgewichtszustand um $15\%$.

### Bindungsenergie
Die Bindungsenergie im Ionenkristall ist die gesammelte Coulombenergie für alle Ionenpaare, die Van-Der-Waals-Bindung kann vernachlässigt werden. Den Abstand $r_{ij}$ zwischen zwei Ionen kann man mit dem nächsten Nachbarabstand $a$, als $r_{ij}=\alpha_{ij}a$ darstellen.

Das Coulomb-Potential wird über alle Ionen summiert. Das Potential ist jedoch für jedes Ion betragsmäßig gleich, da alle Ionen betragsmäßig die selbe Ladung haben. Die Vorzeichen unterscheiden sich jedoch, daher gibt es in der Summe wechselnde Vorzeichen. Die Abstände $r=\alpha_{ij}\cdot a$ sind immer ein Vielfaches der Gitterkonstante $a$. Deswegen kann man alle kristallspezifischen Faktoren aus der Summe herausziehen und erhält die Madelungskonstante $\alpha$.

$$
\begin{aligned}
  V_\mathrm{total} &= 2\frac{N}{2} \sum_j \frac{\pm e^2}{4\pi\varepsilon_0a\alpha_{ij}} \\
  &= -N\frac{e^2}{4\pi\varepsilon_0a}
  \left(
  -\sum\pm\frac{1}{\alpha_{ij}}
  \right) \\
  V_\mathrm{total} &= -N\frac{e^2}{4\pi\varepsilon_0a}\alpha
\end{aligned}
$$

Die Bindungsenergie kann mit dem Born-Haber-Kreisprozess gemessen werden.

### Gleichgewichtsgitterkonstante
Die Bindungsenergie und die Paulirepulsion sorgen zusammen für einen Gleichgewichtszustand. Die Paulirepulsion wird nun durch das Born-Meyer-Potential dargestellt. Da dieses sehr kurzreichweitig ist, werden nur die nächsten Nachbarn betrachtet, die durch die Koordinationszahl $K$ dargestellt ist. Hierbei ist $N$ nach wie vor die Anzahl der Ionenpaare.

$$
  V_\mathrm{total} = -N
  \left[
  \frac{e^2}{4\pi\varepsilon_0a}\alpha - K\cdot\lambda\exp\left[-\frac{a}{\rho}\right]
  \right]
$$

Diese Funktion wird nach $a$ minimiert, d.h. $\frac{\mathrm d}{\mathrm da}V_\mathrm{total}\overset{!}{=}0$. Die abgeleitete Gleichung kann man so umstellen, dass man auf der einen Seite wieder das Potential erhält.

$$
  V_\mathrm{total} = -\frac{Ne^2\alpha}{4\pi\varepsilon_0a}
  \left(
  1-\frac{\rho}{a}
  \right)
$$

### Gültigkeitesintervalle für Kristallstrukturen
Bei einer ionischen Bindung ist eine Kristallstruktur dann energetisch günstig, wenn sie die unterschiedlich geladenen Ionen berühren können, die gleichgeladenen aber nicht. Wenn der Größenunterschied zwischen den Ionen so groß ist, dass sich die gleichgeladenen Ionen berühren, ist die Struktur energetisch ungünstig. Diese Grenze kann beispielsweise für die $\mathrm{NaCl}$-Struktur ermittelt werden.

#### Beispiel: NaCl
Die $\mathrm{NaCl}$-Struktur ist eine fcc-Struktur mit einer zweielementigen Basis. Dadurch beträgt der minimale Abstand zwischen den Gitterpunkten zweier unterschiedlich geladener Ionen $\sqrt{2}\frac{a}{2}$, da beide diagonal auf der Oberfläche liegen. Der Abstand zwischen den Gitterpunkten zweier unterschiedlich geladener Ionen beträgt $\frac{a}{2}$.

Sei $r_+$ der Radius des Chloratoms und $r_-$ der Radius des Natriumions. Dann dürfen sich die Chloratome nicht berühren, ein Chloratom und ein Natriumion dürfen es jedoch. Aus beiden Bedingungen lassen sich Einschränkungen für das Größenverhältnis beider Atome berechnen.

1. Die Chloratome dürfen sich nicht berühren.
2. Die Chloratome und die Natriumatome sollen sich berühren.

$$
\begin{aligned}
  1. &\Rightarrow& r_+ &< \sqrt{2}\frac{a}{2} \\
  2. &\Rightarrow& r_+ + r_- &= \frac{a}{2} \\
  &\Rightarrow& r_+ &< \sqrt{2} (r_+ + r_-) \\
  &\Leftrightarrow& r_+ (1-\sqrt{2}) &< \sqrt{2} r_- \\
  &\Leftrightarrow& \frac{r_+}{r_-} &< \frac{\sqrt{2}}{1-\sqrt{2}} = \frac{1}{\sqrt{2}-1}
\end{aligned}
$$

Wird $r_+$ zu groß, so ist die $\mathrm{NaCl}$-Struktur nicht mehr stabil. Typischerweise entsteht dann eine Zinkblendestruktur. Diese ist ebenfalls nur für gewisse Größenverhältnisse stabil, falls $r_+ < \frac{r_-}{\sqrt{3}-1}$ gilt, entsteht die $\mathrm{CsCl}$-Struktur.

### Born-Haber-Kreisprozess
Mit dem Born-Haber-Kreisprozess kann man die Bindungsenergie innerhalb eines Ionenkristalls gemessen werden.

$$
  E_b = -\frac{V_\mathrm{total}}{N}
$$

## Kovalente Bindung
Im Unterschied zu der Van-der-Waals-Bindung oder der Ionenbindung befinden sich die Atome in der Kovalenten Bindung nicht in der Edelgaskonfiguration. Stattdessen überlagern sich die Orbitale, dies gehört in den Bereich der Quantenchemie. Die Ursache dafür ist die Quantenmechanische Austauschwechselwirkung. Die Molekülwellenfunktion der Elektronen muss die die Schrödingergleichung $\hat{H}\Psi=E\Psi$ erfüllen.

Beispielsweise Diamant, Silizium und Germanium treten in dieser Bindungsform auf. Modekularer Wasserstoff kann sogar analytisch gut berechnet werden.

### magnetische Ordnung
Die kovalente Bindung führt zur Erhöhung der Valenzelektronendichte zwischen den Kernen. Dies verursacht eine elektrostatische Anziehung.

Durch das Pauliprinzip ist gefordert, dass die Gesamtwellenfunktion für mehrere Fermionen antisymmetrisch unter Vertauschung ist. Die Gesamtwellenfunktion ist das Produkt aus Ortswellenfunktion und Spinwellenfunktion.

Wenn beide Elektronen im niedrigeren Energieniveau sind, das die symmetrische Ortswellenfunktion voraussetzt, muss die Spinwellenfunktion antisymmetrisch sein. Werden beide Elektronen auf verschiedene Energieniveaus verteilt, muss die Spinwellenfunktion symmetrisch sein. Daher bestimmt die Energetik der Ortswellenfunktion die Spinwellenfunktion, was die magnetsche Ordnung bestimmt.

## Metallbindung
Die Metallbindung entsteht durch Valenzelektronen, die am Ort der Nachbaratome noch eine erhebliche Aufenthaltswahrscheinlichkeit besitzen. Die Elektronen werden von allen Atomen geteilt. Dadurch treten Metalle als Festkörper auf.

Ein Musterbeispiel sind die Alkalimetalle. Übergangsmetalle haben stehts auch einen Antail an kovalenter Bindung.

Die Delokalisierung der Elektronen erhöht die Ortsungenauigkeit $\Delta x$, dadurch kann die Impulsungenauigkeit $\Delta p$ sinken. Dies senkt die kinetische Energie, was die Energieeffizienz der Metallbindung bestimmt. Hierzu kann das bindende Potential als Potentialtopf angenommen werden.

## Wasserstoffbrückenbindung
Die Wasserstoffbrückenbindung tritt vor allem bei Wasser ($\mathrm{H_2O}$) zwischen den Modekülen. Sie allein kann keine Festkörper erzeugen.

Das Rumpfion des Wasserstoffs ist besonders. Das Rumpfion $\mathrm H^-$ ist ein reines Proton, die elektrostatische Energie in Höhe der Ionisierungsenergie $E_i=13.59\mathrm{eV}$ wird nicht durch andere Elektronen abgeschirmt. In der kovalenten Bindung mit dem Sauerstoffatom $\mathrm O$ sitzt das Bindungselektron zwischen dem $\mathrm H^-$ und dem $\mathrm O$. Daher entsteht eine schwache Bindung zwischen dem $\mathrm H^-$ und den Elektronen des $\mathrm {H_2O}$-Atoms. Die Bindungsenergie ist eher schwach ($0.2-1.0\mathrm{eV}$).

# 5. Gitterschwingungen
In einigen Modellen werden die Atome eines Festkörpers als ortsfest betrachtet. Diese Modelle sind für manche Beschreibungen gut, versagen jedoch bei Gleichgewichtseigenschaften, wie der Längenausdehnung bei Temperaturerhöhung. Auch Wärmeleitung von Isolatoren, Schallübertragung und Supraleitung können nur mit bewegten Atomen beschrieben werden, ebenso wie Wechselwirkung von Strahlung mit Festkörpern und die Temperaturabhängigkeit der Beugungsreflexe.

Auch in Modellen, die schwingende Atome betrachten, werden Annahmen getätigt. Hierzu zählen die adiabatische und die harmonische Approximation.

Die Ausbreitung von elastischen Wellen in Hochsymmetrierichtungen wie $[100]$ oder $[111]$ werden durch die eindimensionale Kette beschrieben. Hierzu nimmt man an, dass die kompletten Netzebenen anstelle einzelner Atome schwingen. Ebenso können die Begriffe der Dispersionsrelation und ihr Zusammenhang mit der Schallgeschwindigkeit auf diese Weise beschrieben werden, ebenso Schwingungsmoden.

Da Kristalle nicht unendlich groß sind, müssen Randbedingungen betrachtet werden. Dadurch wird die Anzahl der möglichen Wellen eingeschränkt, somit ergibt es auch Sinn, eine Zustandsdichte zu ermitteln.

Zur quantitativen Beschreibung ist die Theorie der kleinen Schwingungen mit und eine Darstellung mittels Normalkoordinaten sinnvoll.

## Adiabatische und harmonische Approximation
### Adiabatische Approximation
Die Adiabatische Approximation wird verwendet, um Gitterschwingungen in Festkörpern zu beschreiben. Hierbei wird davon ausgegangen, dass ein elektronisches System dem Kern instantan folgt. Dies bedeutet, dass alle Elektronen sofort ihre Bewegung entsprechend verändern, wenn der Kern bewegt wird. Weiterhin gibt es in dieser Annährung keine Anregungen von Elektronen.

### Harmonische Approximation
Die harmonische Approximation zur Beschreibung von Gitterschwingungen nähert ein gegebenes Potential durch ein harmonisches Potential an. Dadurch wird angenommen, dass die Schwingungen von Teilchen durch einen harmonischen Oszillator beschrieben werden können.

Dazu wird das Potential $V(x)$ durch eine Taylor-Entwicklung um die Gleichgewichtslage $x_0$ angenährt. Für kleine Auslenkungen sind die Rückstellkräfte $\vec{F} = -\nabla V$ linear. Sie können daher als Federkraft interpretiert werden.

$$
\begin{aligned}
  V(x) &= V(0)
  + \left.\frac{\partial V}{\partial x}\right|_{x_0=0} \cdot (x-x_0)
  + \left.\frac{\partial^ V}{\partial x^2}\right|_{x_0=0} \cdot (x-x_0)^2
  + \mathcal O((x-x_0)^3) \\
  \Rightarrow V(x) &\approx ax^2 \\
  \Rightarrow F&=-cx
\end{aligned}
$$

## Klassische Theorie der eindimensionalen Kette
### Dispersionsrelation
Eine Dispersionsrelation beschreibt den Zusammenhang zwischen dem _Ablauf_ eines physikalischen Prozesses (wie Frequenz oder Energie) und den _Eigenschaften_ der ihn beschreibenden Größen (wie Wellenzahl, Ausbreitungsgeschwindigkeit oder Impuls).

Beispielsweise in Festkörpern sind Frequenz und Wellenvektoren beschränkt. Dies kann man beispielsweise bei der klassischen eindimensionalen Kette sehen, bei der die Wellenvektoren auf die der ersten Brillouinzone beschränkt sind. Dadurch kann man viele Rechnungen auf diese Zone beschränken.

#### akustische und optische Zweige
Betrachtet man Kristalle mit mehratomiger Basis, so ergeben sich unterschiedliche Zweige in der Dispersionsrelation, die unterschiedliche Moden verursachen. So wie man zwischen akustischen und optischen Moden unterscheidet, unterscheidet man auch zwischen akustischen und optischen Zweigen der Dispersionsrelation.

#### Schallgeschwindigkeit
Die Schallgeschwindigkeit $v_s$ ist betragsmäßig die Amplitude der Gruppengeschwindigkeit einer Welle.

Die Gruppengeschwindigkeit $v_G$ ist die Ableitung der Dispersionsrelation $\omega(k)$, ihre Amplitude ist die Schallgeschwindigkeit $v_s$.

$$
  v_G(t) = \frac{\mathrm d\omega(k)}{\mathrm dk} \propto v_s
$$

Es bestimmte Wellenvektoren, für die die Gruppengeschwindigkeit unabhängig von $v_s$ verschwindet $(v_G=0)$, dann gibt es stehende Wellen. Dies ist insbesondere am Rand der ersten Brillouinzone der Fall und kann beispielsweise anhand der eindimensionalen Kette ermittelt werden. Dies gilt auch im dreidimensionalen Fall.

### Schwingungsmoden
Bei einem eindimensionalen Kristall im dreidimensionalen Raum gibt es drei Richtungen, entlang derer die Teilchen schwingen können. Es gibt eine akustische Mode und zwei optische Moden.

Aus der eindimensionalen Kette mit zweiatomiger Basis kann man herleiten, dass akustische Moden haben immer eine kleinere Frequenz als die optischen Moden haben. Dies liegt daran, dass eine Scherung immer einfacher als eine Kompression ist.

#### longitudinale / akustische Moden
Bei einem eindimensionalen Kristall im dreidimensionalen Raum gibt es drei Richtungen, entlang derer die Teilchen schwingen können, die Moden.

Eine dieser Richtingen ist longitudinal, d.h. die Teilchen schwingen in Ausbreitungsrichtung der Welle. Ein Beispiel dafür sind Schallwellen, deswegen werden longitudinale Moden auch als akustische Moden bezeichnet.

#### transversale / optische Moden
Bei einem eindimensionalen Kristall im dreidimensionalen Raum gibt es drei Richtungen, entlang derer die Teilchen schwingen können, die Moden.

Zwei dieser Richtungen sind transversal, sie stehen senkrecht zu der Ausbreitungsrichtung der Welle. Ein Beispiel dafür sind Lichtwellen, weshalb transversale Moden auch optische Moden genannt werden.

### Eindimensionale Kette
In der Festkörperphysik wird die eindimensionale Kette benutzt, um Gitterschwingungen eines eindimensionalen Kristalls zu beschreiben.

Die Ausbreitung von elastischen Wellen in Hochsymmetrierichtungen wie $[100]$ oder $[111]$ werden bereits durch die eindimensionale Kette beschrieben. Hierzu nimmt man an, dass die kompletten Netzebenen anstelle einzelner Atome schwingen.

Im Folgenden bestehe die Basis der eindimensionalen Kette aus einem einzelnen Atom, eine Kette mit zweiatomiger Basis ist eine weitere Verallgemeinerung. Zudem werden Normalkoordinaten $u$ verwendet.

#### Differentialgleichung
Im Folgenden bestehe die Basis der eindimensionalen Kette aus einem einzelnen Atom, eine Kette mit zweiatomiger Basis ist eine weitere Verallgemeinerung. Zudem werden Normalkoordinaten $u$ verwendet.

Sei $a$ der Abstand zwischen den Atomen, dann befinde sich die Ruhelage des $n$-ten Atoms an der Position $x_n=n\cdot a$. Von dieser Position $x_n$ sei das Atom um eine kleine Strecke $u$ verschoben. Zwischen benachbarten Atomen wirke eine Federkraft $F(x)=Cx$. Daraus ergibt sich die Differentialgleichung $F=M\ddot{u}$ für Atome der Masse $M$.

$$
\begin{aligned}
  M\ddot{u}(na) = F(na)
  &= -C{\large [} u(na) - u((n-1)a) + u(na) - u((n+1)a) {\large ]} \\
  &= -C{\large [} 2u(na) - u((n-1)a) - u((n+1)a) {\large ]}
\end{aligned}
$$

#### Dispersionsrelation
Im Folgenden bestehe die Basis der eindimensionalen Kette aus einem einzelnen Atom, eine Kette mit zweiatomiger Basis ist eine weitere Verallgemeinerung. Zudem werden Normalkoordinaten $u$ verwendet.

Der Ansatz zur Lösung der Differentialgleichung kann als laufende, auf Gitterpunkten definierte Welle $u(ua, t) = A\exp[i(kna - \omega t)]$ gewählt werden. Dadurch kann die Schwingungsfrequenz (durch Einsetzen in die Differentialgleichung) bestimmt werden. Daraus erhält man die folgende Dispersionsrelation $\omega(k)$, die mit der Relation $\frac{1-\cos(2\alpha)}{2} = \sin^2(\alpha)$ vereinfacht werden kann.

$$
\begin{aligned}
  \omega(k) &= \sqrt{\frac{2C}{M} [1-\cos(ka)]} \\
  \omega(k) &= 2\sqrt{\frac{C}{M}}
  \left|
  \sin\left(
  \frac{ka}{2}
  \right)
  \right|
\end{aligned}
$$

Hierbei muss der Wellenvektor $k$ muss aus der ersten Brilloinzone stammen. Dadurch sind die Frequenzen der Wellen auf $\omega\in\left[0, 2\sqrt{\frac{C}{M}} \right]$ beschränkt.

Der Wellenvektor kann beide Vorzeichen haben, da die Wellen in beide Richtungen laufen dürfen. An der Zonengrenze schwingen die Atome gegenphasig, was durch $u(na, t)_{\frac{a}{2}}=(-1)^n A\exp[-i\omega t]$ beschrieben wird.

#### Beschränkung von $k$ und $\omega$
Weil $\omega(k)$ periodisch ist, ist auch die Auslenkung $u(x, t)$ an der Stelle $x_n=na$ periodisch. Phasendifferenzen von benachbarten Atomen sind nur physikalisch sinnvoll sind, wenn sie kleiner als $\pi$ sind, ansonsten weist man Schwingungen in einem Raum zu, an denen keine Atome sitzen. Daraus folgt eine Einschränkung der Wellenlänge.

Da $\lambda=\frac{2\pi}{|k|}$ gilt folgt mit dem kürzestmöglichen reziproken Gittervektor $G_0$ eine Einschränkung von $2k\in[-G_0, G_0]$, da dies äquivalent zu der Forderung $ka \in [-\pi, \pi]$ ist. Folglich muss $k$ ein Wellenvektor aus der ersten Brillouinzone sein.

##### Schallgeschwindigkeit
Die Gruppengeschwindigkeit $v_G$ ist die Ableitung der Dispersionsrelation $\omega(k)$ nach dem Wellenvektor $k$, ihre Amplitude ist die Schallgeschwindigkeit $v_s$ der eindimensionalen Kette. Es gibt Wellenvektoren $k=\frac{\pi}{a}$, für die die Gruppengeschwindigkeit $v_G$ verschwindet. Dies nennt man stehende Wellen, sie treten am Rand der ersten Brillouinzone auf.

$$
\begin{aligned}
  v_G &= v_s \left|\cos\left(\frac{ka}{2}\right)\right| \\
  \Rightarrow v_s &= \sqrt{\frac{C}{M}}
\end{aligned}
$$

Für kleine Frequenzen ist die Dispersionsrelation linear $\omega(k) \approx\sqrt{\frac{C}{M}} |ka|$, dann ist die Gruppengeschwindigkeit $v_G=v_s$ ist konstant, insbesondere unabhängig von der Wellenlänge.

##### Moden
Es gibt eine akustische und zwei optische Moden. Die akustische Mode hat immer eine geringere Frequenz als die optischen Moden. Dies liegt daran, dass eine Scherung immer einfacher als eine Kompression ist. Die Kraftkonstanten der Moden unterscheiden sich, ansonsten gelten die gleichen Dispersionsrelationen.

#### Schallgeschwindigkeit
Die Gruppengeschwindigkeit $v_G$ ist die Ableitung der Dispersionsrelation $\omega(k)$ nach dem Wellenvektor $k$, ihre Amplitude ist die Schallgeschwindigkeit $v_s$ der eindimensionalen Kette. Es gibt Wellenvektoren $k=\frac{\pi}{a}$, für die die Gruppengeschwindigkeit $v_G$ verschwindet. Dies nennt man stehende Wellen, sie treten am Rand der ersten Brillouinzone auf.

$$
\begin{aligned}
  v_G &= v_s \left|\cos\left(\frac{ka}{2}\right)\right| \\
  \Rightarrow v_s &= \sqrt{\frac{C}{M}}
\end{aligned}
$$

Für kleine Frequenzen ist die Dispersionsrelation linear $\omega(k) \approx\sqrt{\frac{C}{M}} |ka|$, dann ist die Gruppengeschwindigkeit $v_G=v_s$ ist konstant, insbesondere unabhängig von der Wellenlänge.

#### Schwingungsmoden
Es gibt schon in der eindimensionalen Kette eine akustische und zwei optische Moden. Die akustische Mode hat immer eine geringere Frequenz als die optischen Moden. Dies liegt daran, dass eine Scherung immer einfacher als eine Kompression ist. Die Kraftkonstanten der Moden unterscheiden sich, ansonsten gelten die gleichen Dispersionsrelationen.

### Eindimensionale Kette mit zweiatomiger Basis
Es wird eine eindimensionale Kette betrachtet, die eine zweiatomige Basis hat. Dies führt dazu, dass die Dispersionsrelation zwei verschiedene Zweige hat. Dies ist genau so lange der Fall, wie die Massen der beiden Teilchen unterschiedlich sind; ansonsten bilden beide Basisatome eine neue Einheitszelle.

$$
  \omega^2 =
  \frac{C+D}{M} \pm \frac{1}{M}\sqrt{C^2+D^2+2CD\cos(ka)}
$$

Der Zweig mit der geringeren Frequenz, der mit dem Minus, ist der _akustische Zweig_. Der Zweig mit der höheren Frequenz, der mit dem Plus, ist der _optische Zweig_. Der akustische Zweig verschwindet bei $k=0$ und verändert sich im Interval $\pm \frac{\pi}{a}$ sehr stark. Der optische Zweig dagegen hat bei $k=0$ ein Maximum, verändert sich im selben Interval allerdings vergleichsweise gering.

#### Beweis der Dispersionsrelation
Die Dispersionsrelation der Eindimensionale Kette mit zweiatomiger Basis soll bewiesen werden.

Sei an jedem Gitterpunkt eine zweiatomige Basis. Sei der Abstand zwischen den Atomen der Basis $d$ und die Gitterkonstante $a$. Dann ist das linke der beiden Atome an der Position $na$ und das rechte an der Position $na+d$.

Sei $u_1(na)$ die Auslenkung des linken Atoms und $u_2(na)$ die Auslenkung des rechten Atoms an der Position $na+d$. $na$ bezeichnet damit die Elementarzelle Zwischen den Atomen der Basis sei die Federkonstante $C$ kleiner als die Federkonstante $D$ der Kraft zwischen den verschiedenen Basen. Seien die Massen der beiden Basisatome gleich.

Die wirkende Kraft $F_i=M\ddot{u}_i$ besteht jeweils aus der Federkraft zum linken und zum rechten Atom. Eines der beiden ist das andere Basiselement, das andere aus der benachbarten Zelle. Dieses System an Differentialgleichungen kann mit dem Ansatz $u(na, t)=A_i\exp[i(kna-\omega t)]$ gelöst werden.

$$
\begin{aligned}
  M\ddot{u}_1(na) &= -C[u_1(na) - u_2(na)] - D[u_1(na) - u_2((n-1)a)] \\
  M\ddot{u}_2(na) &= -C[u_2(na) - u_1(na)] - D[u_2(na) - u_1((n+1)a)]
\end{aligned}
$$

## Klassische Theorie im dreidimension Fall
### Darstellung der Dispersionsrelation
Üblicherweise wird der Wellenvektor $\vec{k}$ in Einheiten von $\frac{\pi}{a}$ geplottet, sodass die erste Brillouinzone (BZ) durch das Interval $[-1, 1]$ dargestellt wird. Hierbei gibt es mehrere Möglichkeiten der Darstellung, die meistgenutzte ist die reduzierte Darstellung.[^3] Alle drei Darstellungen der Dispersionsrelation enthalten die komplette Information.

In der _ausgedehnten_ Darstellung wird die komplette Dispersionsrelation über den gesamten Raum geplottet, sie wird dabei nicht auf die erste BZ beschränkt. In der _periodischen_ Darstellung werden die Dispersionsrelationen aller reziproken Gitterpunkte nebeneinander geplottet.

In der _reduzierten_ Darstellung wird die komplette Dispersionsrelation auf die erste BZ reduziert dargestellt. Dazu wird die Funktion gespiegelt, sobald sie den Rand der ersten BZ überschreiten würde. Das Ergebnis sieht wie ein Ausschnitt aus der periodischen Darstellung aus.

Dispersionsrelationen werden üblicherweise in Hochsymmetrierichtungen geplottet. Im dreidimensionalen Fall werden normalerweise alle Messungen zwischen den Punkten $\Gamma$, $X$, $K$ und $L$ in dem selben Diagramm reduziert dargestellt. Dies sieht ohne Übung unübersichtlich aus.[^4]

[^3]: siehe Abbildung 8.6 in [@Gross2012Festkörper, p. 345]
[^4]: siehe Abbildung 8.22 in [@Gross2012Festkörper, p. 370]

### Schwingungsmoden
Für jede Welle mit Wellenvektor $\vec{k}$ gibt es $3$ Moden, von denen eine Mode akustisch und zwei Moden optisch sind. Für eine Basis mit $j$ Atomen gibt es $3$ akustische Zweige und $3j-3$ optische Zweige der Dispersionsrelation.

In Hochsymmetrischen Kristallrichtungen[^5] sind die transversalen Moden entartet. Das bedeutet, beide transversalen Moden sind identisch und man kann nur eine transversale Mode messen.

[^5]: beispielsweise $[100]$ im kubischen System

### Schallgeschwindigkeit
Die Schallgeschwindigkeit $v_s$ ist betragsmäßig die Amplitude der Gruppengeschwindigkeit einer Welle.

Die Gruppengeschwindigkeit $v_G$ ist die Ableitung der Dispersionsrelation $\omega(k)$, ihre Amplitude ist die Schallgeschwindigkeit $v_s$.

$$
  v_G(t) = \frac{\mathrm d\omega(k)}{\mathrm dk} \propto v_s
$$

Es bestimmte Wellenvektoren, für die die Gruppengeschwindigkeit unabhängig von $v_s$ verschwindet $(v_G=0)$, dann gibt es stehende Wellen. Dies ist insbesondere am Rand der ersten Brillouinzone der Fall und kann beispielsweise anhand der eindimensionalen Kette ermittelt werden. Dies gilt auch im dreidimensionalen Fall.

### Hochsymmetrierichtungen in Kristallen
Manche Richtungen in Kristallen weisen besonders hohe Symmetrie auf. Um diese zu bezeichnen und um beispielsweise Dispersion oder Bandstrukturen zu messen, werden die Punkte $\Gamma$, $X$, $K$ und $L$ festgelegt. Dann kann beispielsweise entlang der $\Gamma X$-Richtung gemessen werden.

Die Punkte $\Gamma$, $X$, $K$ und $L$ liegen im Abstand $\sqrt{i}\frac{\pi}{a}$ mit $i=0,1,2,3$ vom Zentrum der ersten Brillouinzone entfernt. Die Richtungen $\Gamma X$, $\Gamma K$ und $\Gamma L$ bezeichnen die $[110]$, $[100]$ und die $[111]$-Richtung.

#### Gammapunkt
Der $\Gamma$-Punkt ist der Punkt im Zentrum der ersten Brillouinzone, an dieser Stelle gilt $\vec{k}=0$.

#### X-Punkt
Der Punkt $X$ liegt an der Stelle mit $k=\frac{\pi}{a}$, wobei $\Gamma X$ die $[110]$-Richtung im Kristall beschreibt.

#### K-Punkt
Der Punkt $K$ liegt an der Stelle mit $k=\sqrt{2}\frac{\pi}{a}$, wobei $\Gamma K$ die $[100]$-Richtung im Kristall beschreibt.

#### L-Punkt
Der Punkt $L$ liegt an der Stelle mit $k=\sqrt{3}\frac{\pi}{a}$, wobei $\Gamma L$ die $[111]$-Richtung im Kristall beschreibt.

## Randbedingungen
### Born-von-Karmann-Randbedingungen
Da in der Realität jeder Körper endlich ist, ist es essentiell, Randbedingungen zu verwenden. Weil die Anzahl der Oberflächenatome gegen die Gesamtzahl der Atome verschwindet, ist es jedoch praktisch irrelevant, welche Randbedingungen man wählt. Üblicherweise wählt man periodische Randbedingungen, weil sie mathematisch einfacher sind und besser zum Prinzip der Translationsinvarianz passen als feste Enden an der Oberfläche. Diese nennt man Born-von-Karmann-Randbedingungen.

Da solche Randbedingungen nur noch bestimmte Wellen erlauben, kann man dann die Zustandsdichte ermitteln.

#### 1D
Hier soll die eindimensionale Betrachtung der Born-von-Karmann-Randbedingungen hergeleitet werden.

Alle Randatome bilden einen geschlossenen Ring an Atomen, die durch einzelne Federkräfte verbunden sind. Demnach das $0$-te Atom identisch mit dem $N$-ten, es gilt also $u(0) = u(Na)$. Daraus folgt mit dem Ansatz für die eindimensionale Kette $\exp[ikNa]=1$, was mit ganzen Zahlen $n\in\mathbb Z$ durch $kNa=2\pi n$ erfüllt ist.

Man erhält $N$ verschiedene $k$-Werte mit verschiedenen Eigenfrequenzen $\omega$ für $N$ eindimensionale Oszillatoren. Da $\vec{k}$ in der ersten Brillouinzone liegen muss,[^6] gilt $ak\in(-\pi, \pi]$. Daraus ergibt sich folgende Relation für $N$ und $n$, was die möglichen Wellenvektoren definiert. Dadurch gibt es $Na$ erlaubte Zustände.

$$
\begin{aligned}
  k &= \frac{2\pi}{a} \cdot \frac{n}{N} \\
  \Rightarrow - \frac{N}{2} &< n \le \frac{N}{2}
\end{aligned}
$$

[^6]: vgl. eindimensionale Kette

#### 3D
Hier soll die dreidimensionale Betrachtung der Born-von-Karmann-Randbedingungen hergeleitet werden.

Die Auslenkung $u$ soll auf gegenüberliegenden Seiten des Festkörpers gleich sein. Für einen Ortsvektor $\vec{R}$, der auf eine Oberfläche zeigt, soll dann für $j\in\{1,2,3\}$ die Relation $u(\vec{R}) = u(\vec{R}+N_i\vec{a}_i)$ gelten. Hierbei sind die $\vec{a}_i$ die primitiven Translationen und $N_i$ die Anzahl der Basiselemente in der Richtung $\vec{a}_i$. Damit ist $L_i=N_i |\vec{a}_i|$ die Länge des Festkörpers.

### Zustandsdichte
Die Zustandsdichte ist die Anzahl der Zustände im $\vec{k}$-Raum pro $\vec{k}$-Raum-Einheitslänge. Analog kann eine Zustandsdichte im Fourierraum definiert werden.

$$
\begin{aligned}
  Z(k) &= \frac{\#\mathrm{Zustände}}{k\mathrm{-Raum-Intervall}} \\
  Z(k) &= \frac{V}{(2\pi)^2}
\end{aligned}
$$

#### Beweis
Durch Randbedingungen sind im eindimensionalen Fall nur $Na$ verschiedene Wellenvektoren erlaubt, demnach gilt $Z(k) = \frac{Na}{2\pi}$. Da $Na$ die Länge der Kette ist gilt $Z(k) = \frac{L}{2\pi}$.

Im dreidimensionalen Fall erhält man mit den primitiven Translationen des reziproken Gitters $\vec{b}_i$, der Kantenlängen $N_i|a_i|$ und $- \frac{N_i}{2} < l_i \le \frac{N_i}{2}$ die folgenden Relationen.

$$
\begin{aligned}
  \vec{k} &= \frac{l_1}{N_1}\vec{b}_1 + \frac{l_2}{N_2}\vec{b}_2 + \frac{l_3}{N_3}\vec{b}_3 \\
  Z(k) &= \frac{L_1\cdot L_2\cdot L_3}{(2\pi)^3} = \frac{V}{(2\pi)^3}
\end{aligned}
$$

Damit ist die Zustandsdichte proportional zum Volumen $V$.

## Quantisierung der Gitterschwingungen
### Theorie der kleinen Schwingungen
Bei Festkörpern geht man davon aus, dass die Schwingungen um die Gitterpunkte klein sind.

Dadurch kann man von dem korrekteren Modell von $3N_j$ gekoppelten Oszillatioren mit diskreten Wellenvektoren $\vec{k}$ und Frequenzen $\omega(\vec{k})$ zu einem Modell von $3N_j$ entkoppelten Oszillatoren übergehen. Dazu gibt es die Eigenfrequenzen $\omega_p(\vec{k})$. Dazu sind Normalkoordinaten hilfreich.

Die Schwingungen haben eine Energie $E$.

#### Normalkoordinaten
Bei Festkörpern geht man davon aus, dass die Schwingungen um die Gitterpunkte klein sind.

Zur quantitativen Beschreibung sind Normalkoordinaten hilfreich, die eine Auslenkung $\vec{u}$ um den jeweiligen Gitterpunkt beschreiben. Dazu wird der Ortsvektor $\vec{r}(t)$ eines Atoms durch eine Abweichung $\vec{u}$ vom Gitterpunkt an der Position $\vec{R}$ beschrieben.

$$
  \vec{r}(t) = \vec{R} + \vec{u}(\vec{R},t)
$$

#### Energie
Bei Festkörpern geht man davon aus, dass die Schwingungen um die Gitterpunkte klein sind.

Sei $E_p$ die Eigenenergie zum Impuls $p\in\{1, \dots, 3N_j\}$, die aufgrund der harmonischen Approximation der eines harmonischen Oszillators entspricht. Da die Besetzungszahlen $n_{\vec{k}, p}$ den dynamischen Zustand des gesamten Systems bestimmen, ist die Gesamtenergie $E$ die Summe aller Eigenenergien $E_p$.

$$
\begin{aligned}
  E_p &= \left(n_{\vec{k}}, p+\frac{1}{2}\right)\hbar\omega_p(\vec{k}) \\
  E &= \sum_{\vec{k}, p}
  \left(
  n_{\vec{k}, p} + \frac{1}{2}
  \right)
  \cdot \hbar \omega_p(\vec{k})
\end{aligned}
$$

### Phononen
Phononen sind Quasiteilchen, die den Energiequanten der Normalschwingungen in einem Festkörper zugeteilt werden. Sie können erzeugt und vernichtet werden. Die Phononenbesetzungszahlen $n_{\vec{k}, p}$ steigen mit der Temperatur $T$. Phononen haben eine Energie $\hbar \omega_p(\vec{k})$ und einen Kristallimpuls $\hbar\vec{k}$, dies ist formal analog zum Impuls eines freien Teilchens.

Interessant sind Stoßprozesse der Phononen. Auch können sie mit Elektronen stoßen, was den spezifischen Widerstand des Kristalls erhöht. Das chemische Potential ist $\mu=0$.

Auf einer Seite der Universität zu Köln gibt es ein [Applet](https://ph2.uni-koeln.de/lehre/applets-solid-state-physics/phonons), das die _Phononendispersion_ interaktiv darstellt.

### Kristallimpuls
Während die Translationsinvarians des Raumes die Impulserhaltung erzeugt, so erzeugt die diskrete Translationsinvarianz im einem (Kristall-)Gitter den _Kristallimpuls_.

Der Kristallimpuls ist nur bis auf reziproke Gittervektoren $\vec{G}$ erhalten, das heißt die Wellenvektoren $\vec{k}$ und $\vec{k}^\prime$ haben genau dann den selben Kristallimpuls, wenn $\vec{k}^\prime=\vec{k}+\vec{G}$. Dadurch ist der Kristallimpuls nicht linear. Dadurch kann es zu Umklappprozessen kommen.

Die Träger und Übermittler des Kristallimpulses sind die Phononen, Photonen können nur einen sehr geringen Kristallimpuls erzeugen.

## Messung der Phononendispersionsrelation
Man kann die Energien und die Wellenvektoren der einfallenden und ausfallenden Strahlung messen, um Wellenvektoren und die Energien der Phononen ermitteln. Dadurch kann man die Dispersionsrelation messen.

Dazu sind der Energiesatz und der Kristallimpulssatz wichtig. Oft wird ein 3-Achsen-Spektrometer für die Messung verwendet, alternativ wird Raman-Spektroskopie verwendet.

Auf einer Seite der Universität zu Köln gibt es ein [Applet](https://ph2.uni-koeln.de/lehre/applets-solid-state-physics/phonons), das die _Phononendispersion_ interaktiv darstellt.

### Energiesatz
Für die inelastische Streuung eines Teilchens am Kristall müssen für die Erzeugung bzw. Vernichtung eines Phonons folgende Relationen für die Energie und den Kristallimpuls gelten. Damit kann man die Dispersion der Phononen messen.

$$
\begin{aligned}
  E_{\vec{k}} - E_{\vec{k}^\prime} &= \pm \hbar \omega_\mathrm{Phonon} \\
  \vec{k} - \vec{k}^\prime &= \pm \vec{k}_\mathrm{Phonon} + \vec{G}
\end{aligned}
$$

Der Term mit der größeren Differenz $(+)$ beschreibt die Erzeugung eines Phonons. Analog wird bei der geringeren Differenz $(-)$ ein Phonon vernichtet. Wird kein Teilchen erzeugt oder vernichtet, ist der Kristallimpulssatz identisch mit der Beugungsbedingung nach Laue.

### Kristallimpulssatz
Für die inelastische Streuung eines Teilchens am Kristall müssen für die Erzeugung bzw. Vernichtung eines Phonons folgende Relationen für die Energie und den Kristallimpuls gelten. Damit kann man die Dispersion der Phononen messen.

$$
\begin{aligned}
  E_{\vec{k}} - E_{\vec{k}^\prime} &= \pm \hbar \omega_\mathrm{Phonon} \\
  \vec{k} - \vec{k}^\prime &= \pm \vec{k}_\mathrm{Phonon} + \vec{G}
\end{aligned}
$$

Der Term mit der größeren Differenz $(+)$ beschreibt die Erzeugung eines Phonons. Analog wird bei der geringeren Differenz $(-)$ ein Phonon vernichtet. Wird kein Teilchen erzeugt oder vernichtet, ist der Kristallimpulssatz identisch mit der Beugungsbedingung nach Laue.

### Sondenstrahlung
Man kann die Energien und die Wellenvektoren der einfallenden und ausfallenden Strahlung messen, um Wellenvektoren und die Energien der Phononen ermitteln. Dadurch kann man die Dispersionsrelation messen.

Dazu sind der Energiesatz und der Kristallimpulssatz wichtig. Oft wird ein 3-Achsen-Spektrometer für die Messung verwendet, alternativ wird Raman-Spektroskopie verwendet.

Auf einer Seite der Universität zu Köln gibt es ein [Applet](https://ph2.uni-koeln.de/lehre/applets-solid-state-physics/phonons), das die _Phononendispersion_ interaktiv darstellt.

### 3-Achsen-Spektrometer
Zur Messung der Phononendispersionsrelation wird meist ein 3-Achsen-Spektrometer mit inelastischer Neutronenstreuung verwendet.

Der Streuwinkel $2\theta$ kann durch die Energie des einfallenden Strahls $E_i$ und die des gestreuten Strahls $E_f$ ermittelt werden. Alternativ können die Wellenvektoren $\vec{k}_i$ verwendet werden. Hierbei ist $\vec{Q}$ der Impulsübertrag der Sonde an den Kristall, $m$ ist die Masse der Sonde. $p_i$ und $p_f$ sind die Impulse der einfallenden Strahlung, wobei für nichtrelativistische Sonden $p=\sqrt{2mE}$ gilt.

$$
\begin{aligned}
  E_i + E_f -\frac{Q^2\hbar^2}{2m} &= p_i p_f \cos(2\theta) \\
  &= 2\sqrt{E_iE_f} \cos(2\theta) \\
  \Leftrightarrow 2\theta &= \arccos\left[
  \frac{
  -\frac{Q^2\hbar^2}{2m} + E_i + E_f
  }{2\sqrt{E_i E_f}}
  \right] \\
  \Leftrightarrow 2\theta &= \arccos\left[
  \frac{
  -Q^2 + k_i^2 + k_f^2
  }{2 k_i k_f}
  \right]
\end{aligned}
$$

### Raman-Spektroskopie
In der Raman-Spektroskopie wird optisches Licht zur Streuung in Kristallen verwendet, um die Phononendispersion zu messen. Allerdings können dabei nur Phononen mit verschwindender Energie messen, bei denen zwischen optischen und akustischen Phonen unterschieden wird.

Die Differenzen der Frequenzen des einfallenden Lichtes $\Omega$ und des ausfallenden Lichtes $\Omega^\prime$ muss der Frequenz des erzeugten Phonons $\omega_\mathrm{Phonon}$ entsprechen.

$$
  \frac{\Omega-\Omega^\prime}{\Omega} = \frac{\Delta \Omega}{\Omega} = \frac{\omega_\mathrm{Phonon}}{\Omega}
$$

Bei der Phononenerzeugung entsteht Stokes-Streuung, bei der Phononenvernichtung Anti-Stokes-Streuung. Bei Energien um $E\approx 3\mathrm{eV}$ gilt $\vec{k}=\vec{k}^\prime$, daher sollte eigentlich keine Strahlung entstehen. Durch Defekte im Kristall entsteht jedoch Reyleigh-Strahlung.

#### Reyleigh-Strahlung
In der Raman-Spektroskopie wird optisches Licht zur Streuung in Kristallen verwendet, um die Phononendispersion zu messen. Aufgrund der Erhaltungssätze sollte man für $\vec{k}=\vec{k}^\prime$ keine Streuung beobachtbar sein, aufgrund von Defekten sieht man aber auch dafür Streuung. Dies nennt man Rayleigh-Strahlung.

Bei Energien um $E\approx 3\mathrm{eV}$ ist der Wellenvektor $k$ in der ersten Brillouinzone. Daher verschwindet in diesem Energiebereich der reziproke Gittervektor $(\vec{G}=0)$.

#### Stokes-Streuung
Bei der Erzeugung oder Vernichtung von Phononen entsteht Strahlung, die man mit der Raman-Spektroskopie messen kann. Die bei der Erzeugung entstehende Strahlung nennt man die Strahlung Stokes-Streuung, die bei der Vernichtung nennt man Anti-Stokes-Streuung.

Wird ein Phonon erzeugt, so bleibt das angeregte Elektron nach der Anregung in einem angeregten Zustand, nachdem es abgestrahlt hat. Deswegen hat das emittierte Photon eine geringere Energie als das absorbierte, diese geht in das erzeugte Phonon.

Umgekehrt wird dann ein Phonon vernichtet, wenn dessen Energie verwendet wird um von dem angeregten Zustand in den vorherigen Zustand zu gelangen. Dies ist weniger wahrscheinlich als der erzeugende Fall, weshalb eine gemessene Stokes-Streuung eine höhere Intensität als die Anti-Stokes-Streuung hat.

Das Verhältnis zwischen den beiden Streuungen ist stark Temperaturabhängig, damit kann man Kristalle als Thermometer nutzen.

#### Anti-Stokes-Streuung
Bei der Erzeugung oder Vernichtung von Phononen entsteht Strahlung, die man mit der Raman-Spektroskopie messen kann. Die bei der Erzeugung entstehende Strahlung nennt man die Strahlung Stokes-Streuung, die bei der Vernichtung nennt man Anti-Stokes-Streuung.

Wird ein Phonon erzeugt, so bleibt das angeregte Elektron nach der Anregung in einem angeregten Zustand, nachdem es abgestrahlt hat. Deswegen hat das emittierte Photon eine geringere Energie als das absorbierte, diese geht in das erzeugte Phonon.

Umgekehrt wird dann ein Phonon vernichtet, wenn dessen Energie verwendet wird um von dem angeregten Zustand in den vorherigen Zustand zu gelangen. Dies ist weniger wahrscheinlich als der erzeugende Fall, weshalb eine gemessene Stokes-Streuung eine höhere Intensität als die Anti-Stokes-Streuung hat.

Das Verhältnis zwischen den beiden Streuungen ist stark Temperaturabhängig, damit kann man Kristalle als Thermometer nutzen.

# 6. Thermische Eigenschaften des Kristallgitters
## Wärmekapazität
Die Wärmekapazität $C$ ist der Quotient aus der zugeführten Wärme $\Delta Q$ und der Temperaturänderung $\Delta T$.

Nach dem 1. Hauptsatz der Thermodynamik ist das Differential der inneren Energie $\mathrm dU$ durch das Differential der Wärme $\mathrm dQ$ sowie das Produkt aus Druck $p$ und Volumendifferential $\mathrm dV$ darstellbar ($\mathrm dU = \mathrm dQ - p\mathrm dV$). $C_V$ ist die isochore Wärmekapazität mit $\mathrm dV=0$, $C_p$ ist die isobare Wärmekapazität mit $\mathrm dp=0$.

$$
  C_x = \frac{\Delta Q}{\Delta T} = \left.\frac{\partial U}{\partial T}\right|_x
$$

Mithilfe des Volumenausdehnungskoeffizienten $\alpha$ und des Kompressionsmoduls $\beta$ gilt die Relation $C_p-C_V = TV\alpha^2\beta$. In der harmonischen Näherung gilt $\alpha=0$, daraus folgt $C_p=C_V$. Tatsächlich gibt es allerdings eine Abweichung von unter $1\%$.

Bei Metallen liefert jedes Valenzelektron eine mittlere Energie von $\braket{E}=\frac{1}{2}k_BT$. Daraus folgt für die mittlere innere Energie $\braket{U}=N\braket{E}$, wodurch $C_V$ sehr klein ist, nämlich proportional zu der Breite der aufgeweichten Fermikante. Die freien Elektronen liefern demnach einen geringen Beitrag zur Wärmekapazität.

### hohe Temperaturen
Für hohe Temperaturen wird $C_V$ durch das Dulong-Petit-Gesetz beschrieben. In Kristallen ist die Bose-Einstein-Verteilung notwendig, um das mittlere Potential $\braket{U}=\braket{n}\hbar \omega$ zu beschreiben.

### Dulong-Petit-Gesetz
Das Dulong-Petit-Gesetz besagt, dass die molare Wärmekapazität eines aus einzelnen Atomen zusammengesetzten Festkörpers einen universalen und konstanten Wert habe, nämlich das Dreifache der universellen Gaskonstante $R=\frac{pV}{Nk_b}$.[^7] Diese Näherung gilt für hohe Temperaturen $T$, für niedrige Temperaturen gilt sie nicht.

$$
  C_V = 3N_j k_b = 3R
$$

#### Herleitung
Der Klassischen Gleichverteilungssatz (der Statistischen Physik) besagt, dass jede quadratischen Komponente in der Gesamtenergie die mittlere Energie $\frac{1}{2}k_bT$ erzeugt. In drei Dimensionen hat man je drei Orts- und Impulskoordinaten, die die Gesamtenergie bezeichnen. Für die mittlere Energie gilt daher $\braket{U}=3k_BT$. Aus der Definition der isochoren Wärmekapazität folgt das Dulong-Petit-Gesetz.

Alternativ kann das Dulong-Petit-Gesetz aus der Einstein-Nährung hergeleitet werden, wenn diese für große Temperaturen verwendet wird.

[^7]: [Dulong-Petit-Gesetz](https://de.wikipedia.org/wiki/Dulong-Petit-Gesetz), Abruf am 2023-06-09

### niedrige Temperaturen
Da die Eigenenergie eines harmonischen Oszillators eine konstante Nullpunktsenergie hat, kann man die mittlere innere Energie $\braket{U_\mathrm{th}}$ als Summe einer Nullpunktsenergien $U_0$ und einer temperaturabhängigen mittleren Energie $\braket{U}$ darstellen ($\braket{U_\mathrm{th}}=U_0+\braket{U}$). Damit bestimmt nur noch $\braket{U}$ die Wärmekapazität, was die Bose-Einstein-Verteilung zur Darstellung benötigt.

$$
\begin{aligned}
  \braket{U} &= \sum_{\vec{k},p} \braket{n} \hbar \omega_p(\vec{k}) = \sum_{\vec{k},p}
  \frac{\hbar \omega_p(\vec{k})}
  {\exp\left[\hbar\omega(\vec{k})k_bT\right]-1} \\
  C_V &= \left.\frac{\partial U}{\partial T}\right|_x
  = \frac{\partial}{\partial T}
  \left[
  \sum_{\vec{k},p}
  \frac{\hbar \omega_p(\vec{k})}
  {\exp\left[\hbar\omega(\vec{k})k_bT\right]-1}
  \right]
\end{aligned}
$$

Bei tiefen Temperaturen $T$ wird die Quantisierung der Energieniveaus relevant. Nicht jede Schwingung hat die richtige Energie um ein Phonon erzeugen, daher gibt es Schwingungen, die eingefroren sind.

## Bose-Einstein-Verteilung
Die Bose-Einstein-Verteilung beschreibt die Verteilung der Teilchenzahl von Bosonen. In diesem Fall ist die Zahl der Phononen durch die Energie bestimmt, daher sind die Energie der Phononen $\hbar\omega$ und die thermische Energie $k_BT$ ausschlaggebend für den Erwartungswert der Phononenzahl $\braket{n}$.

$$
  \braket{n} = \frac{1}{
  \exp\left[
  \frac{\hbar\omega-\mu}{k_bT}
  \right]
  - 1
  }
$$

$\mu$ ist das chemische Potential, für Phononen ist $\mu_\mathrm{Phonon}=0$. Für andere Bosonen gilt dagegen $\mu\neq 0$. Bei $T=0$ gilt allgemein $\mu=E_F$, d.h. $\mu$ ist die Fermienergie.

Die Bose-Einstein-Verteilung ist u.a. für die Berechnung der Wärmekapazität relevant.

## Zustandsdichte im Fourierraum
Die Zustandsdichte $D(\omega)$ im Fourierraum ist die Anzahl der Zustände in einem Frequenzinterval, ähnlich wie die Zustandsdichte in Kristallen im Ortsraum definiert ist. Damit kann man einen Kontinuitätsübergang für die innere Energie $U$ durchführen. Hierbei ist $\frac{V}{(2\pi)^3}$ die Zustandsdichte im Fourierraum und das Integral das Volumen des Frequenzintervals im Fourierraum. Die Innere Energie wird maßgeblich durch die Bose-Einstein-Verteilung beschrieben.

$$
\begin{aligned}
  \braket{U_\mathrm{th}} &= U_0 + \braket{U} = U_0 + \sum_{\vec{k},p} \braket{U_p} \\
  \braket{U_p} &= \braket{n_p(\vec{k})} \hbar \omega_p(\vec{k}) = \frac{\hbar \omega_p(\vec{k})}
  {\exp\left[\hbar\omega(\vec{k})k_bT\right]-1} \\
  \braket{U_p} &= \int \frac{\hbar\omega}{\exp[\hbar\omega k_BT]} D(\omega)\mathrm{d}\omega \\
  D(\omega)\mathrm d\omega &=
  \frac{V}{(2\pi)^3}
  \int_{\omega(\vec{k})}^{\omega(\vec{k})+\mathrm d\omega(\vec{k})} \mathrm d^3 k
\end{aligned}
$$

## Debye-Näherung
Die Debye-Näherung beschreibt das Verhalten bei niedrigen Temperaturen durch eine lineare Beschreibung der Dispersionsreleation $\omega(\vec{k})=vk$.

In der Debye-Näherung kann die Zustandsdichte $D(\omega)$ durch das Volumen $V$, die Frequenz $\omega$ und die Steigung der Dispersionsreleation $v$ beschrieben werden. Für sehr niedrige Temperaturen folgt das $T^3$-Gesetz.

$$
  D(\omega) = 3\frac{V}{2\pi^2}\frac{\omega^2}{v^3}
$$

Insbesondere bei Kristallen mit vielen Basisatomen wird die Zustandsdichte $D(\omega)$ für akustische Zweige durch die Debye-Näherung beschrieben. Für optische Zweige wählt man die Einstein-Näherung.

### Debye'sches $T^3$-Gesetz
Für niedrige Temperaturen, d.h. $T\ll \theta_D$ deutlich kleiner als die Debye-Temperatur $\theta_D$ gilt in der Debye-Näherung $\frac{\hbar\omega_D}{k_bT}\gg 1$ und $\braket{n}\approx 0$. Damit kann die Wärmekapazität berechnet werden.

$$
  C_V = \frac{12\pi^2}{5} Nk_B \left(\frac{T}{\theta_D}\right)^3
$$

## Einstein-Näherung
Die Einstein-Näherung beschreibt die Zustandsdichte unter der Annahme, dass alle $N$ Oszillatoren die selbe Frequenz $\omega_E$ teilen. Sie beschreibt die Wärmekapazität $C_V$ für alle Temperaturen $T$ recht gut.

Bei der Einstein-Temperatur $\theta_E$ soll die thermische Energie gleich der Energie der Schwingung sein $(k_B\theta_E = \hbar\omega_E)$.

$$
\begin{aligned}
  D(\omega) &= 3N\delta(\omega-\omega_E) \\
  \braket{U} &= 3N\hbar\omega_E\braket{n}
  = \frac{3N\hbar\omega_E}{
  \exp\left[
  \frac{\hbar\omega}{k_bT}
  \right]
  - 1
  }\\
  C_V &= 3Nk_B\left(\frac{\theta_E}{T}\right)^2
  \frac{\exp\left[\frac{\theta_E}{T}\right]}
  {\left(\exp\left[\frac{\theta_E}{T}\right]-1\right)^2}
\end{aligned}
$$

Für große Temperaturen $T\gg \theta_E$ folgt das Dulong-Petit-Gesetz. Insbesondere bei Kristallen mit vielen Basisatomen wird die Zustandsdichte $D(\omega)$ für optische Zweige durch die Einstein-Näherung beschrieben. Für akustische Zweige wählt man die Debye-Näherung.

## Anharmonische Näherung
In der harmonischen Approximation kann man einige Beobachtungen in Festkörpern beschreiben, jedoch nicht alle. Dies entspricht nicht der Realität, deswegen muss man Anharmonizitäten berücksichtigen.

So kann man weder Längenausdehnung oder Wärmeleitfähigkeit noch Wechselwirkungen zwischen Gitterwellen beschreiben. Desweiteren gilt in dieser Näherung $C_p=C_V$ und elastische Konstanten sind unabhängig von Druck und Temperatur.

### Längenausdehnung
Die Längenausdehnung $\alpha_L$ ist die relative Änderung der Länge $L$ unter Änderung der Temperatur $T$. Um sie zu erklären, benötigt man die anharmonische Näherung.

$$
  \alpha_L = \frac{1}{L} \frac{\mathrm dL}{\mathrm dT}
$$

### Wärmeleitfähigkeit
Die Wärmeleitfähigkeit ist proportional zum Temperaturgradienten $\nabla T$, der Faktor $\kappa$ hängt von der Gruppengeschwindigkeit der Phononen $v$ und der Länge $l$ ab sowie von der spezifischen Wärmekapazität $\frac{C_V}{V}$ ab. Man kann die Wärmeleitung durch Umklappprozesse beschreiben.

$$
\begin{aligned}
  \vec{j}_Q &= -\kappa\nabla T \\
  \kappa &= \frac{1}{3} vl\frac{C_V}{V}
\end{aligned}
$$

# 7. Freies Elektronengas
## Freies Elektronengas
Beim freien Elektronengas geht man von einem starren Gitter aus, bei dem Phononen nicht mit Elektronen wechselwirken. Zudem wird die Einelektronnäherung verwendet. Das freie Elektronengas ist ein Fermigas.

Eine Beschreibung der freien Elektronen in einem Festkörper ist notwendig, um die elektrische Leitfähigkeit, Supraleitung, Magnetismus und elektromagnetische Bauelemente zu beschreiben.

Die Besetzungswahrscheinlichkeit der Zustände mit Energie $E_n$ durch die Fermi-Dirac-Verteilung beschrieben. Die Zustandsdichte wird durch die Elektronenspins verdoppelt, die Dispersionsrelation ist durch die Energie $E_n(k_n)$ beschrieben.

### Einelektronnäherung
Die Einelektronnäherung wird genutzt, um das freie Elektronengas zu beschreiben. Dabei geht man davon aus, dass ein einzelnes Elektron durch ein zeitabhängiges Potential beschrieben werden kann, das von Atomrümpfen und anderen Elektronen aufgestellt wird.

Oft kann man dieses Potential durch einen Potentialkasten darstellen.

### Dispersionsrelation des freien Elektronengases
Die Dispersionsrelation des freien Elektronengases beschreibt die Abhängigkeit der Energie von dem Wellenvektor.

Die Besetzungswahrscheinlichkeit der Zustände mit Energie $E_n$ durch die Fermi-Dirac-Verteilung beschrieben. Die klassische Zustandsdichte wird durch die Elektronenspins verdoppelt.

$$
\begin{aligned}
  E_n &= \frac{\hbar^2k_n^2}{2m} \\
  k_n^2 &= \left(\frac{2\pi}{L}\right)^2 \left[n^2_x + n^2_y + n^2_z \right]
\end{aligned}
$$

In Kristallen sind die Elekronen nur quasifrei, dadurch entstehen Energiebänder.

### Zustandsdichte des freien Elektronengases
Die Zustandsdichte $Z$ des freien Elektronengases ist doppelt so hoch wie im klassischen Fall, dies kommt durch den Elektronenspin.

$$
\begin{aligned}
  Z(k) &= 2\frac{V}{(2\pi)^3} \\
  D(E) \mathrm dE &= \frac{V}{2\pi^2} \left(\frac{2m}{\hbar^2}\right)^{\frac{3}{2}} \sqrt{E}
\end{aligned}
$$

Besonders interessant sind die Elektronen mit der Fermienergie $E_F$, da diese angeregt werden können. Die anderen können ihren Zustand praktisch nicht ändern, da alle Zustände innerhalb der Fermikugel besetzt sind.

Die quantenmechanische Energie ist $\braket{E_\mathrm{QM}} = \frac{3}{5} k_BT \gg \braket{E_\mathrm{klass}}=\frac{3}{2}k_BT$ ist für Temperaturen $T\ll T_F$, die kleiner als die Fermitemperatur $T_F$ sind. Da $T_F$ extrem hoch sind, sind herrschen in Festkörpern immer deutlich geringere Funktionen vor.

## Fermigas
Bei einem Fermigas geht man davon aus, dass die meisten niederenergetischen Zustände besetzt sind. Beim der Temperatur $T=0$ kann man die Energie ermitteln, die der höchste besetzte Zustand hat. Diese Energie wird als Fermienergie $E_F$ bezeichnet.

Die Fermienergie bildet im Wellenraum eine Kugelschale, das eingeschlossene Volumen nennt man Fermikugel. Die inneren Zustände sind dabei praktisch eingefroren: Sie können sich nicht verändern, weil alle erreichbaren Zustände schon besetzt sind. Daher ist nur die Oberfläche der Fermikugel für Wechselwirkungen, Anregungen etc. interessant.

Die Besetzungszahl ist durch die Fermi-Dirac-Verteilung beschrieben. $\frac{N}{V}$ ist die Elektronendichte. Die Fermitemperatur $T_F$ ist die Temperatur, die $E_F$ entspricht. Analog werden der Fermiwellenvektor $k_F$, die Fermi-Wellenlänge $\lambda_F$, der Fermi-Impuls $p_F$ und Fermi-Geschwindigkeit $v_F$ definiert.

$$
\begin{aligned}
  E_F &= \frac{p_F^2}{2m} \\
  p_F &= \hbar k_F \\
  k_F &= \sqrt[3]{3\pi^2 \frac{N}{V}} \\
  k_BT_F &= E_F \\
  \lambda_F &= \frac{2\pi}{k_F} \\
  p_F &= m v_F
\end{aligned}
$$

Beispielsweise das freie Elektronengas ist ein Fermigas.

### Exkurs: Potentialkasten
Das Potential $V(\vec{r})$ sei außerhalb eines Kastens der Länge $L$ ein Wert von $V_0$, oft wählt man zur Vereinfachung $V_0=\infty$. Damit kann man die stationäre Schrödinger-Gleichung aufstellen, die mit dem unten angegebenen Ansatz gelöst werden kann.

$$
\begin{aligned}
  V(\vec{r}) &=
  \begin{cases}
  0 &: x,y,z \in [0, L] \\
  V_0 &: x,y,z \notin [0, L] \\
  \end{cases} \\
  E \Psi(\vec{r}) &=
  \left[
  -\frac{\hbar^2}{2m} \nabla^2 + V(\vec{r})
  \right] \Psi(\vec{r}) \\
  \Psi(\vec{r}) &= \frac{1}{\sqrt{V}} \exp[i\vec{k}\vec{r}]
\end{aligned}
$$

Der Normierungsfaktor $\frac{1}{\sqrt{V}}$ kann aus der Forderung zur Normierung mittels $\int \Psi^*(\vec{r}) \Psi(\vec{r}) \mathrm dV = 1$.

### Fermi-Dirac-Verteilung
Die Fermi-Dirac-Verteilung beschreibt die Verteilung der Teilchenzahl von Fermionen. Die Zahl der Fermionen ist durch die Energie bestimmt, daher sind die Energie $E$ und die thermische Energie $k_BT$ ausschlaggebend für den Erwartungswert der Phononenzahl $\braket{n}$, $\mu$ ist das chemische Potential. Ein Anwendungsfall ist das freie Elektronengas.

$$
  \braket{n} = \frac{1}{
  \exp\left[\frac{E-\mu}{k_BT}\right] + 1
  }
$$

Bei $T=0$ sind alle Zustände mit einer Energie bis zu der Fermi-Energie besetzt. Dann ist die Besetzungswahrscheinlichkeit für alle Zustände mit einer Energie bis zur Fermi-Energie $1$ und für alle größeren Energien $0$. Diese Kante nennt man Fermikante. Bei Temperaturen $T>0$ schmilzt diese Kante ab.

### Chemisches Potential
Stehen zwei Systeme in Kontakt, sodass Wärme und Teilchen ausgetauscht werden können, so müssen ihre Temperaturen $T$ und chemische Potentiale $\mu$ gleich sein. $\mu$ ist die Freie Energie $F=E-TS$, die notwendig ist, um einem System ein Teilchen hinzuzufügen. Dies kann auch durch die freie Enthalpie $G$ pro Teilchen dargestellt werden.

$$
  \mu=\frac{G}{N}
$$

Bei $T=0$ ist $\mu$ gleich der Fermienergie $E_F$. Mithilfe der Somerfeld-Näherung kann man $\mu$ für Temperaturen oberhalb der Fermienergie berechnen. Bei typischen Temperaturen (auf der Erde) nimmt die Temperatur nur minimal ab, es gilt auch dann $\mu\approx E_F$.

$$
\mu(T) = E_F\left[1 - \frac{\pi^2}{12}\left(\frac{T}{T_F}\right)^2 \right]
$$

### Abschmelzen der Fermikante
Am absoluten Nullpunkt $T=0$ sind exakt die Zustände besetzt, deren Energie geringer als die Fermienergie sind. Bei steigender Temperatur (mit $T\ll T_F$) weicht diese scharfe Fermikante auf. Die Standardabweichung der Fermikante liegt dann in der Größenordnung $\Delta E=k_BT$.

Für eine gegebene Temperatur $T$ soll die Standardabweichung der Fermikante ermittelt werden. Diese Aufweichung ist proportional zu $k_BT$, es gelten $\braket{n(E_F+k_BT)} =\frac{1}{e+1} \approx 0.25$ und $\braket{n(E_F-k_BT)}=\frac{1}{e^{-1}+1}\approx 0.75$. Bei $E_F+k_BT$ ist die Aufenthaltswahrscheinlichkeit damit sehr gering, bei $E_F-k_BT$ ziemlich groß.

Auf beispielsweise Silberatom-Gas hat dieser Effekt allerdings kaum einen Einfluss. Die Fermitemperatur $T_{F,\mathrm{Ag}}$ für Silberatome liegt bei ca. $5\mathrm{mK}$, weswegen bei annährender Raumtemperatur mit $T\gg T_{F,\mathrm{Ag}}$ keine Quanteneffekte auftreten.

Bei der Beschreibung von Transporteigenschaften von Elektronen wird diese aufgeweichte Kante auch als thermische Haut bezeichnet.

## Transporteigenschaften des Elektronengases
Um die Transporteigenschaften von Elektronen in Metallen mithilfe des Elektronengases zu beschreiben, wird davon ausgegangen, dass Stöße die Impulse der Elektronen instantan ändern. Die Stoßwahrscheinlichkeit wird durch die Relaxationszeit $\tau$ beschrieben. Durch diese Prozesse kommen die Elektronen in ein lokales Gleichgewicht.

Hierbei kommt es zu drei Sorten an Streuprozessen. Einerseits können die Elektronen mit Phononen wechselwirken, andererseits mit Defekten oder mit dem Rand (Oberfläche) des Kristalls. Dadurch haben defektarme Kristalle eine höhere Leitfähigkeit. Um diese zu beschreiben, wird die Relaxationszeitnäherung verwendet.

Früher dachte man, dass auch an Ionenrümpfen gestreut werde, dies ist inzwischen widerlegt. Stattdessen gibt es nur Stöße mit der geschmolzenen Fermikante, die man in diesem Kontext auch als thermische Haut bezeichnet.

### Relaxationszeit
Die Relaxationszeit $\tau$ ist die mittlere Zeit, die zwischen zwei Stößen im Elektronengas verstreicht. Dadurch ist die Stoßwahrscheinlichkeit pro Zeiteinheit durch $\frac{1}{\tau}$ bestimmt, was die Transporteigenschaften von Elektronen beeinflusst.

### Driftgeschwindigkeit im Elektronengas
Die Driftgeschwindigkeit $\vec{v}_D$ ist die durchschnittliche Geschwindigkeit eines Elektrons im Elektronengas und beeinflusst die Transporteigenschaften. Im Gleichgewicht ist $\vec{v}_D=0$ und variiert, wenn ein elektronisches Feld $\vec{E}$ anliegt.

Wenn eine Spannung anliegt, erhöht sich die Driftgeschwindigkeit, bis sie durch einen Stoß reduziert wird. Daraus ergeben sich folgende Relationen. Dabei ist $e$ die Elementarladung, $m$ die Elektronenmasse und $\tau$ die Relaxationszeit. Daraus ergibt sich die Stromdichte $\vec{j}$.

$$
\begin{aligned}
  \vec{v}_D &= - \frac{e\tau}{m} \vec{E} \\
  \vec{j} &= -ne\vec{v}_D \\
\end{aligned}
$$

### Stromdichte
Die Stromdichte kann im Elektronengas durch die Driftgeschwindigkeit $v_D$ der Elektronen bestimmt werden. Alternativ kann sie direkt über das anliegende elektrische Feld $\vec{E}$ und der spezifische Leitfähigkeit $\sigma$ ermittelt werden.

$$
\begin{aligned}
  \vec{j} &= -ne\vec{v}_D \\
  \vec{j} &= \sigma \vec{E}
\end{aligned}
$$
#### Spezifische Leitfähigkeit
Die spezifische Leitfähigkeit ist ein Proportionalitätsfaktor zwischen einem elektrischen Feld $\vec{E}$ und der daraus resultierenden Stromdichte $\vec{j}$. Sie ist invers zum spezifischen Widerstand.

$$
  \vec{j} = \sigma \vec{E}
$$

#### Spezifischer Widerstand
Der spezifische Widerstand $\sigma$ ist der Proportionalitätsfaktor zwischen einem elektrischen Feld $\vec{E}$ und der daraus resultierenden Stromdichte $\vec{j}$. Er ist invers zur spezifischen Leitfähigkeit.

$$
  \vec{E} = \rho \vec{j}
$$

### Relaxationszeitnäherung
Die Relaxationszeitnäherung beschreibt die Stöße von Elektronen, die die Transporteigenschaften beeinflussen. Diese Stöße bremsen Elektronen ab, durch ein existierendes Potential $V$ werden sie allerdings wieder beschleunigt, wobei die Kraft $\vec{F}=-\nabla V$ wirkt. Hierbei ist $\tau$ die Relaxationszeit.

$$
  \frac{\mathrm d\vec{p}}{\mathrm dt} = \vec{F}(t) - \frac{\vec{p}(t)}{\tau}
$$

### Wiedemann-Franz-Gesetz
Das Wiedemann-Franz-Gesetz nähert reale Metalle an, indem man berücksichtigt, dass die elektronische Wärmeleitung die phononische Wärmeleitung bei nicht zu kleinen Temperaturen fast immer übersteigt. Es besagt, dass die Wärmeleitfähigkeit $\kappa$ proportional zu dem Produkt aus Temperatur $T$ und der spezifischen Leitfähigkeit $\sigma$ der Elektronen ist. Der Proportionalitätsfaktor ist die Lorentzzahl $L$.

$$
\begin{aligned}
  L &= \frac{\kappa}{\sigma T} \\
\end{aligned}
$$

#### Lorenzzahl
Die Lorenzzahl $L$ kann unter Berücksichtigung der Fermistatistik hergeleitet werden. Sie ist relevant für das Wiedemann-Franz-Gesetz.

$$
  L = \frac{\pi^2}{3} \left(\frac{k_B}{e}\right)^2 \approx 2.45 \cdot 10^{-8} \frac{\mathrm W\Omega}{\mathrm K^2}
$$

### Halleffekt
Eine Stromdichte in $x$-Richtung $j_x$ wird durch ein elektrisches Feld $\vec{B}\propto \vec{e}_z$ in $z$-Richtung durch die Lorentzkraft $\vec{F}=-e\vec{v}\times \vec{B}$ in $y$-Richtung abgelenkt. Dadurch entsteht im Gleichgewicht eine Hallspannung $U_H$ in der $y$-Richtung, die der Lorentzkraft entgegen wirkt.

$$
\begin{aligned}
  \rho_{xy}(\vec{B}) &= \frac{E_y}{j_x} = B_z \cdot A_H \\
  A_H &= -\frac{1}{ne}
\end{aligned}
$$

$A_H$ ist die Hallkonstante, wobei $n$ die Anzahl der Elektronen in einer gegebenen Zeit bezeichnet. Allerdings hat die klassiche Theorie für viele Metalle das falsche Vorzeichen und ist auch sonst nicht akkurat. Daher ist eine quantenmechanische Betrachtung notwendig.

# 8. Theorie der Energiebänder
Manche Phänomene kann man mit dem Modell des freien Elektronengases erklären, für andere muss man die Energiebänder betrachten. Beispielsweise die Transparenz von manchen Materialien kann auf diese Weise nicht erklärt werden.

Dazu wird die Beschreibung der Elektronen verbessert, die Periodizität im Gitter. Wechselwirkungen zwischen Elektronen werden vernachlässigt. Da die Elektronen quasifrei bzw. quasigebunden sind, entstehen bei diesem Ansatz Energiebänder und Energielücken. Zur Beschreibung wird das Bloch-Theorem verwendet.

## Energiebänder und Energielücken
Auch in Metallen überlagern sich die Orbitale der Valenzelektronen. Da sich die Orbitale von diversen Atomen überlagern, wird ein quasikontinuierliches Kontinuum von Zuständen gebildet. Dadurch entstehen zusammenhängende Energiebänder, die durch Energielücken voneinander getrennt sein können. Bei Metallen überlagern sich diese Bänder, bei Halbleitern und Isolatoren gibt es Energielücken. Diese Eigenschaft wird zur Beschreibung von Festkörpern verwendet.

Aus dem Bloch-Theorem folgt, dass der Kristallimpuls $\hbar \vec{k}$ nur bis auf einen reziproken Gittervektor $\vec{G}$ erhalten ist. Weiterhin ist $\vec{k}$ daher ein quasikontinuierlicher Parameter. Dadurch ist die Energie $E_n(\vec{k})$ des Elektronengases quasikontinuierlich und periodisch. Diese breiten Energieniveaus werden Energiebänder genannt. Verschiedene Energiebänder können sich einerseits überlappen, andererseits können zwischen ihnen Lücken sein.

## Bloch-Theorem
Das Bloch-Theorem beschreibt Wellenfunktionen in einem periodischen Potential, wodurch Energiebänder erklärt werden können. Die dabei beschriebenen Wellen werden auch Bloch-Wellen genannt. Blochelektronen streuen nicht an Ionenrümpfen, da sie dort keine Aufenthaltswahrscheinlichkeit haben.

Durch die Periodizität des Potentials $U$ muss auch die Wellenfunktion $\Psi$ periodisch sein. Dazu muss $u$ ebenfalls eine entsprechend periodische Funktion sein. Mit dem Gittervektor $\vec{R}$ ergeben sich folgende Relationen.

$$
\begin{aligned}
  \Psi &= \Psi(\vec{r} + \vec{R}) \\
  u &= u(\vec{r} + \vec{R}) \\
  \Psi &= u \cdot \exp[i\vec{k}\vec{r}]
\end{aligned}
$$

### Blochwellen
Durch die Forderungen des Bloch-Theorems ist die Aufenthaltswahrscheinlichkeit der Elektronen ausgedehnt, weshalb sich ein Elektron gleich wahrscheinlich in jeder Zelle aufhält. Daher darf die Wellenfunktion $\Psi(\vec{r})$ nur um eine Phase von der in einer anderen Zelle $\Psi(\vec{r}+\vec{R})$ unterscheiden. Durch periodische Randbedingungen sind die möglichen Wellenvektoren eingeschränkt. Hierbei sind $\vec{b_i}$ die Basisvektoren im reziproken Gitter, $\vec{G}$ ein reziproker Gittervektor und $m_i\in \mathbb Z$ ganze Zahlen.

$$
\begin{aligned}
  \Psi_{n,\vec{k}}(\vec{r}+\vec{R}) &= \exp[i\vec{k}\vec{R}] \cdot \exp[i\vec{k}\vec{r}] \\
  \vec{k} &= \sum_{i=1}^3 m_i \vec{b_i} \\
  \Rightarrow \Psi_{n,\vec{k}}(\vec{r}) &= \sum_{\vec{G}} c_{n, \vec{k}-\vec{G}} \exp[i(\vec{k}-\vec{G})\vec{r}]
\end{aligned}
$$
Daraus folgt, dass der Kristallimpuls $\hbar \vec{k}$ nur bis auf einen reziproken Gittervektor $\vec{G}$ erhalten ist, er ist insbesondere kein Eigenwert des Impulsoperators. Weiterhin ist $\vec{k}$ ein quasikontinuierlicher Parameter.

### Gruppengeschwindigkeit der Elektronen
Analog zu der Gruppengeschwindigkeit von Phononen kann man die Gruppengeschwindigkeit $\vec{v}_n(\vec{k})$ der Elektronen im Bloch-Modell bestimmen. Diese ist wiederum die Ableitung der Dispersionsrelation.

$$
  \vec{v}_n(\vec{k}) = \frac{1}{\hbar} \nabla_k E_n(\vec{k})
$$

Quantenmechanisch wird dies durch Wellenpakete beschrieben mit der Energie $E_n(\vec{k})$ beschrieben.

### Valenzband und Leitungsband
Das Leitungsband ist das Energieband, in denen Elektronen sich frei bewegen, wodurch Strom fließt. Das Energieband darunter ist das Valenzband.

### Bandstrukturen
Die Struktur der Energiebänder legt fest, ob ein Festkörper ein Metall, ein Halbleiter oder ein Isolator ist.

#### Metalle
Die Bandstruktur von Metallen ist durch ein teilgefülltes Leitungsband charakterisiert.

Metalle haben immer mindestens ein halb-gefülltes Leitungsband, die Fermi-Energie liegt im Leitungsband. Das Valenzband und das Leitungsband dürfen sich überlagern, müssen es aber nicht.

#### Halbmetalle
Die Bandstruktur von Halbmetallen ist durch ein unvollständig gefülltes Valenzband charakterisiert.

Halbmetalle haben eine Fermi-Energie, die am oberen Ende des Valenzbandes und am unteren Ende des Leitungsbandes liegt. Beide Bänder überlagern sich leicht, sodass das Valenzband nicht vollständig gefüllt ist, dafür ist ein Teil des Leitungsbandes gefüllt.

#### Isolatoren und Halbleiter
Die Bandstruktur von Isolatoren und Halbleitern ist durch eine Bandlücke charakterisiert. Diese kann direkt oder indirekt sein. Es wird zwischen intrinsischen und extrinsischen Halbleitern unterschieden, die dotiert sein können.

Bei Isolatoren und Halbleitern liegt die Fermi-Energie in einer Lücke zwischen Valenzband und Leitungsband. Die Größe dieser Lücke legt fest, ob es sich um einen Isolator oder einen Halbleiter handelt.

Es gibt auch Halbleiter mit einer "Bandlücke" von $0\mathrm{eV}$.

##### direkte Bandlücke
Eine direkte Bandlücke gibt es bei einer Bandstruktur, bei der das Maximum eines Energieniveaus im Valenzband und das Minimum eines Niveaus im Leitungsband beim selben Wellenvektor $\vec{k}$ liegen, ansonsten ist sie indirekt.

Bei direkten Bandlücken reicht ein Photon aus, um ein Elektron in das Valenzband anzuregen. Deswegen müssen Halbleiter, die beispielsweise Licht emittieren sollen, eine direkte Bandlücke haben.

##### indirekte Bandlücke
Eine indirekte Bandlücke gibt es bei einer Bandstruktur, bei der das Maximum eines Energieniveaus im Valenzband und das Minimum eines Niveaus im Leitungsband bei unterschiedlichen Wellenvektoren $\vec{k}$ liegen, ansonsten ist sie direkt.

Bei einer indirekten Bandlücken wird zusätzlich zu einem Photon ein Phonon benötigt, um ein Elektron in das Valenzband anzuregen.

##### intrinsische Halbleiter
Bei intrinsischen Halbleitern wird die Leitfähigkeit vollständig durch die thermische Anregung von Elektronen aus dem Valenzband in das Leitungsband erklärt.

##### extrinsische Halbleiter
Bei extrinsischen Halbleitern werden Elektonen aus Donatoren benutzt, um die Leitungsbänder zu befüllen. Alternativ kann man ein Elektronenloch aus einem Akzeptor nehmen, um damit das Valenzband zu füllen und ein Elektron in das Leitungsband zu verdrängen.

##### Donatoren
Donatoren sind Fremdatome in einem Kristall, die ein zusätzliches Elektron spenden. Sie werden für Dotierung verwendet, das Gegenstück ist der Akzeptor.

##### Akzeptoren
Akzeptoren sind Fremdatome in einem Kristall, die ein Elektron binden und damit ein Elektronenloch spenden. Sie werden für Dotierung verwendet, das Gegenstück ist der Donator.

##### Dotierung
Halbleiter können mit Donatoren oder Akzekptoren dotiert werden, um spezifische elektronische Eigenschaften zu erhalten.

### Transparenz
Festkörper sind dann transparent, wenn es zwischen dem Valenzband und dem Leitungsband eine Energielücke gibt, die größer als die Energie der betreffenden Strahlung ist. Dadurch kann die Strahlung nicht absorbiert werden, um ein Elektron von dem Valenzband in das Leitungsband anzuregen.

Da optisches Licht im Energiebereich von $1.59 \mathrm{eV}$ (Rot) und $3.26 \mathrm{eV}$ (Violett) liegt,[^8] sind Materialien mit Bandlücken in dieser Größe transparent für optisches Licht.

[^8]: Quelle: [Wikipedia](https://de.wikipedia.org/wiki/Elektromagnetisches_Spektrum), Abruf 2023-07-30

# Literatur
1. [@Gross2012Festkörper]
2. [@Hunklinger2011Festkörper]
3. Software: [VESTA](http://jp-minerals.org/vesta/en)
