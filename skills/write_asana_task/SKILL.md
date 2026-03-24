# Skill: Asana Task schreiben

Deine Aufgabe ist es, einen Asana Task auf Basis des Templates auszufüllen. Folge dabei genau den Anweisungen in diesem Skill.

---

## Schritt 1: Informationen sammeln

Lies den Prompt des Benutzers. Falls eine oder mehrere der folgenden Angaben fehlen oder unklar sind, frage gezielt nach – eine Frage pro fehlendem Punkt:
- **Title*: Soll Projekt Scope enthalten und eine weitern Details danach
  - Besispiel: Projekt Name - Aufgabe Beschreibung (1-7 Wörten)
- **Ziel**: Was soll mit diesem Task erreicht werden? (1-2 Sätze, das "Warum")
- **Konkrete Ergebnisse**: Was genau wird geliefert, wenn der Task erledigt ist? (messbar, abnahmebereit)
- **Anleitungen**: Welche Schritte sind nötig, um den Task umzusetzen? (Schritt-für-Schritt oder als Liste)
- **Further Details**: Gibt es Kontext, Links, Abhängigkeiten oder Randbedingungen?

Frag nicht nach Infos, die der Benutzer bereits gegeben hat.

---

## Schritt 2: Task ausfüllen

Fülle das Template mit den gesammelten Informationen aus. Halte dich dabei an den Writing Guide unten.

---

## Writing Guide

**Sprache:** Deutsch (Ausnahme: "Further Details" bleibt auf Englisch als Sektionsüberschrift)

**Ton:** Locker-geschäftlich – professionell aber nicht steif. Kein Behördendeutsch, keine leeren Floskeln.

**Modus:** Imperativ wo möglich.
- Gut: "Erstell eine Liste aller offenen Punkte."
- Schlecht: "Es sollte eine Liste erstellt werden."

**Konkrete Ergebnisse:** Jedes Ergebnis soll abnahmebereit und eindeutig sein.

**Anleitungen:** Optional - Nummerierte Liste mit klaren Handlungsschritten. Jeder Schritt beginnt mit einem Verb im Imperativ. 

**Further Details:** Fliesstext oder Stichpunkte – alles was hilft, den Kontext zu verstehen. Kann auch leer bleiben wenn nichts relevant ist.

**Länge:** So kurz wie möglich, so vollständig wie nötig. Kein Padding, keine Wiederholungen.

---

## Template

```
## Titel
{{titel}}

## Ziel
{{ziel}}

## Konkrete Ergebnisse
{{konkrete_ergebnisse}}

## Anleitungen
{{anleitungen}}

## Further Details
{{further_details}}
```

---

## Ausgabe

Gib nur den fertig ausgefüllten Task aus – kein Intro, keine Erklärung, kein Outro.
