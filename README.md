# Traduction Québécoise pour Pokémon Rouge/Bleu/Jaune (Gen1Recomp)

Une traduction complète en français québécois pour Pokémon Rouge, Bleu et Jaune,
à utiliser avec [Gen1Recomp](https://github.com/bryanthaboi/gen1recomp).

Basée sur le vrai texte français officiel du jeu (pas de Google Translate), avec
du vocabulaire joual, des sacres ciblés sur les moments dramatiques, et les noms
de villes remplacés par de vraies villes du Québec (Montréal, Rimouski, Val-Jalbert,
Thetford Mines, Percé...).

Créé par [MrJoufflu](https://twitch.tv/mrjoufflu) ([mrjoufflu.com](https://mrjoufflu.com)).

## Ce qui est traduit

- Tout le dialogue du jeu (PNJ, combats, menus, Pokédex)
- Les noms d'objets, d'attaques et d'espèces (terminologie française officielle)
- Les noms de villes, remplacés par de vraies villes du Québec
- Les sacres québécois (tabarnak, câlisse, calvaire...) sur les moments dramatiques
  seulement (Team Rocket, le rival, Giovanni) - pas partout, pour garder le punch

Certains caractères accentués ne s'affichent pas correctement en jeu (limitation
de la police vanilla), donc le texte est volontairement sans accents.

## ⚠️ Limitation connue: la bannière de nom de ville

Quand t'entres dans une nouvelle ville, la bannière du haut de l'écran (ex.
"CERULEAN CITY") reste en anglais - c'est une limitation du moteur Gen1Recomp,
pas un oubli. Ce champ ne sert pas juste d'affichage: c'est aussi la clé
interne qui relie chaque map à ses pancartes, PNJ, magasins et dresseurs. Le
patcher casserait le texte de 11 villes/villages (voir la 1.0.7 dans le
[CHANGELOG](CHANGELOG.md) pour les détails). En attendant de trouver une façon
sûre de le faire, voici le comparatif entre ce que tu vois dans la bannière et
le vrai nom québécois utilisé partout ailleurs dans le jeu (pancartes,
arènes, dialogue):

| Bannière (pas traduite) | Nom québécois (dans le jeu) |
|---|---|
| PALLET TOWN | BAIE-SAINT-PAUL |
| VIRIDIAN CITY | MONT-TREMBLANT |
| PEWTER CITY | THETFORD MINES |
| CERULEAN CITY | BAIE-COMEAU |
| LAVENDER TOWN | VAL-JALBERT |
| VERMILION CITY | RIMOUSKI |
| CELADON CITY | LAVAL |
| FUCHSIA CITY | HEMMINGFORD |
| CINNABAR ISLAND | PERCÉ |
| SAFFRON CITY | MONTRÉAL |
| INDIGO PLATEAU | QUÉBEC |
| MT. MOON | MONT MÉGANTIC |
| POKÉMON TOWER | TOUR DE VAL-JALBERT |
| S.S. ANNE | TRANS-ST-LAURENT |

## Installation

1. Télécharge le dernier `.zip` depuis la page
   [Releases](https://github.com/git-mrjoufflu/pokemon-gen1-recomp-mod-FRQC/releases).
2. Dans Gen1Recomp, va dans **MODS > Import mod .zip** et choisis le fichier
   téléchargé.

Tu peux aussi extraire le `.zip` manuellement dans le dossier des mods de
Gen1Recomp (`mods/` à côté de l'exécutable, ou l'équivalent sur ta plateforme).

## Mises à jour

Les nouvelles versions apparaissent sur la page
[Releases](https://github.com/git-mrjoufflu/pokemon-gen1-recomp-mod-FRQC/releases) -
télécharge le nouveau `.zip` et réimporte-le par-dessus l'ancien.

## Rapporter un problème

Une ligne encore en anglais, une expression bizarre, un bug d'affichage? Ouvre une
[issue](https://github.com/git-mrjoufflu/pokemon-gen1-recomp-mod-FRQC/issues) avec
une capture d'écran si possible.

## Crédits

- Texte source: [pret/pokered](https://github.com/pret/pokered),
  [pret/pokeyellow](https://github.com/pret/pokeyellow),
  [einstein95/pokered-fr](https://github.com/einstein95/pokered-fr),
  [Narishma-gb/pokeyellow-fr](https://github.com/Narishma-gb/pokeyellow-fr)
- Moteur: [gen1recomp](https://github.com/bryanthaboi/gen1recomp)
