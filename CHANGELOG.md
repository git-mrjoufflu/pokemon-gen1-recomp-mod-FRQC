# Changelog

## 1.0.6

- MONT SELENITE (Mt. Moon) devient MONT MEGANTIC, en hommage a la vraie
  montagne astronomique du Quebec (observatoire, reserve de ciel etoile) -
  theme parfait pour un lieu associe a la lune et aux meteorites.
- "Damnation!" (le gentleman du centre POKEMON de THETFORD MINES) devient
  "Calvaire!".
- "Prof. Chen" (nom francais officiel laisse par erreur dans 2 dialogues de
  l'assistant) corrige en "PROF. TREMBLAY" pour matcher le reste du jeu.
- Nouveau: les noms de lieux affiches quand t'entres dans une ville
  (la banniere en haut de l'ecran, ex. "CERULEAN CITY") et sur la CARTE
  n'etaient jamais traduits - juste le texte des panneaux l'etait. Ajoute
  lang/map_names.lua pour corriger les 11 villes/villages renommes
  (BAIE-SAINT-PAUL, MONT-TREMBLANT, THETFORD MINES, BAIE-COMEAU,
  VAL-JALBERT, RIMOUSKI, LAVAL, HEMMINGFORD, PERCE, MONTREAL, QUEBEC).

## 1.0.5

- Passe complete de revalidation pour trainer d'autres tournures trop
  "France" et des bugs de grammaire:
  - "n'est-ce pas?" avait perdu son "n'" (devenu "est-ce pas?", incorrect) -
    remplace par "hein?".
  - Plusieurs questions inversees ("As-tu", "Sais-tu", "Crois-tu"...) avaient
    ete cassees par erreur en "As-t'une", "Sais-t'ou", etc. Corrige en gardant
    "Va-t'en" (correct, different mot) intact.
  - OPP_YOUNGSTER (TIT-GARS) renomme en KEVEUNE.
  - OPP_GAMBLER (PARIEUR) renomme en GAMBLEUR.

## 1.0.4

- Le nom du bateau (LE TRANS-SAINT-LAURENT) etait trop long et debordait de la
  boite de texte, coupant le mot suivant. Raccourci a TRANS-ST-LAURENT et
  isole sur sa propre ligne partout ou il apparait.
- Corrige "de LE TRANS-ST-LAURENT" en "du TRANS-ST-LAURENT" (grammaire).

## 1.0.3

- Parmanie (Fuchsia City, la Zone Safari) devient Hemmingford au lieu de
  Tadoussac - Hemmingford est le vrai emplacement du Parc Safari au Québec.

## 1.0.2

- POKEMON s'affiche maintenant tout en majuscules partout (au lieu du "POKeMON"
  mixte).
- Corrige plusieurs messages de combat qui restaient en anglais ("Enemy",
  "about to use") - c'etaient des gabarits separes du moteur qui manquaient a
  la traduction.
- Corrige un debordement de texte qui coupait des mots sur les messages de K.O.
- Ajoute la traduction des plats du cuisinier du bateau (poutine, tourtiere du
  Lac-Saint-Jean, pouding chomeur).
- "Je suis de l'INTERPOLICE" devient "Je suis de la SQ".
- "pioncer" (pas quebecois) remplace par "coller des buches".

## 1.0.1

- Active la verification de mise a jour automatique dans le gestionnaire de mods
  de Gen1Recomp (le jeu va maintenant te dire quand une nouvelle version est
  disponible).

## 1.0.0

Première version publique.

- Traduction complète en français québécois: dialogue, combats, menus, Pokédex,
  objets, attaques et espèces, pour Pokémon Rouge, Bleu et Jaune.
- Texte source à partir du vrai français officiel du jeu (pas de traduction
  automatique).
- Vocabulaire joual et sacres québécois ciblés sur les moments dramatiques
  (Team Rocket, le rival, Giovanni).
- Noms de personnages adaptés en québécois (ex. PROF. OAK devient PROF. TREMBLAY).
- Noms de villes remplacés par de vraies villes du Québec (Montréal, Rimouski,
  Val-Jalbert, Thetford Mines, Percé, Baie-Comeau, Baie-Saint-Paul, Laval,
  Tadoussac, Mont-Tremblant, Québec).
