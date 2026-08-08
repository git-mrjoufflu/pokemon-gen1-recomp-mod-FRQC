# Changelog

## 1.0.13

- Bug rapporte en jeu: "MAGIKARP! A steal at ¥500! Want one?" restait en
  anglais chez le vendeur de MAGICARPE du centre POKEMON du MONT
  MEGANTIC. La traduction existait deja mais etait enregistree sous le
  mauvais nom de cle (`...IGotADealText` au lieu de `...OfferText`), donc
  le jeu la trouvait jamais et retombait sur le texte anglais code en dur
  du moteur. Corrige le nom de cle, et ajoute la traduction du message de
  confirmation d'achat ("%s got a MAGIKARP!") qui manquait carrement.
- Passe en bloc sur les ~90 lignes de dialogue PNJ plus anciennes
  signalees dans la 1.0.12 comme proches ou au-dela de la limite de 18
  caracteres par ligne (surtout a cause de TREMBLAY, des noms de villes
  quebecois et de mots comme icitte/mautadine/un p'tit peu). Deplace les
  coupures de ligne sans toucher au texte lui-meme. Verifie qu'il reste
  plus aucune ligne en depassement dans le dialogue PNJ (Pokedex et
  pancartes non touches, comme d'habitude).

## 1.0.12

- Bug rapporte en jeu: "Le PROF. TREMBLAY est" (22 caracteres) debordait
  de la boite de texte, ne laissant que "est" visible sur la premiere
  ligne. Corrige en deplacant la coupure de ligne.
- "Vas-y" remplace par "Awoye" aux 2 endroits ou il apparaissait.
- Passe de correction de debordement sur les 11 lignes ou le doublage de
  la particule interrogative de la 1.0.11 ("Tu veux-tu", "T'as-tu", "Tu
  crois-tu") avait pousse la ligne au-dela des 18 caracteres surs.
- Note: un scan complet du dialogue PNJ montre encore ~90 lignes plus
  anciennes (avant la 1.0.11) proches ou au-dela de la limite de 18
  caracteres, surtout a cause de "TREMBLAY" (plus long que "OAK"), des
  noms de villes quebecois et de mots comme "icitte"/"mautadine"/"un
  p'tit peu". Pas tous casses en jeu (certains passent avec la police
  actuelle), mais a surveiller - prochaine passe dediee a prevoir.

## 1.0.11

Grosse passe de grammaire quebecoise dans le dialogue des PNJ (363 lignes),
en s'appuyant sur je-parle-quebecois.com pour valider les tournures.
N'affecte PAS les entrees Pokedex ni les pancartes (voix plus neutre) -
seulement ce que les personnages disent.

- "il"/"ils" -> "y" partout (sujet), ex. "Il est cool" -> "Y est cool"
- "elle" -> "a" (ou "al" devant voyelle), "elles" -> "y", ex. "Elle est
  cool" -> "Al est cool", "Elles sont accrochees" -> "Y sont accrochees"
- "qu'il"/"qu'ils" -> "qu'y", "s'il"/"s'ils" -> "s'y" (sauf l'idiome
  "s'il te plait" -> "s'te plait")
- Questions inversees a la forme "-il"/"-ils" -> "-tu" ("ont-ils?" ->
  "ont-tu?")
- Doublage de la particule interrogative: "Veux-tu" -> "Tu veux-tu",
  "As-tu" -> "T'as-tu", "Sais-tu" -> "Tu sais-tu", "Crois-tu" -> "Tu
  crois-tu" (mais "Qu'est-ce que" reste tel quel - c'est une question
  "quoi", pas une question oui/non, la particule -tu s'applique pas la)
- "toi"/"moi" -> "toe"/"moe" (la vraie orthographe est "toé"/"moé", mais
  la police du jeu peut pas afficher les accents - voir le fiasco TTF de
  la 1.0.8/1.0.9)

## 1.0.10

- "de cette facon" (trop France) remplace par "de meme" dans le dialogue du
  jeune sur ROUTE 1, pour matcher le "de meme" utilise partout ailleurs
  dans le mod.

## 1.0.9

- Revert de l'experiment 1.0.8 (police TTF): confirme en jeu que l'ecran de
  combat positionne le nom, le HP et les attaques a des offsets de pixels
  fixes qui assument la police tuile 8px monospace d'origine. Avec la
  police TTF a chasse variable, tout ce texte se chevauchait en combat
  (nom/HP/attaques illisibles, empiles les uns sur les autres). Les boites
  de dialogue normales allaient bien, mais le combat etait casse, donc
  retour a la police vanilla. MONTREAL/QUEBEC/PERCE reviennent en ASCII
  (sans accent) en meme temps - ils redeviendraient des glyphes manquants
  sans la police TTF pour les afficher.
- De vrais accents restent une piste a explorer (glyphes dessines a la
  main dans le style pixel carre d'origine plutot qu'une police TTF a
  chasse variable), mais pas via cette route.

## 1.0.8

EXPERIMENTAL: vrais accents (police TTF) - a tester en jeu.

- gen1recomp inclut une police TTF pixel (Plain Pixel, CC-BY 4.0) prevue
  exactement pour ca: `mod.content.font:register("ttf", {})` fait passer
  tout le texte par un rendu avec accents complets, pendant que les
  bordures de boite gardent leurs tuiles d'origine. lang/font.lua active
  maintenant cette police.
- Test visuel: MONTREAL, QUEBEC et PERCE (Cinnabar) s'affichent maintenant
  MONTRÉAL, QUÉBEC et PERCÉ - premiers vrais accents du mod, avant de
  reprendre le reste du texte au complet.
- ATTENTION: tout le texte du jeu a ete "wrappe" ligne par ligne pour la
  police tuile 8px monospace d'origine. Une police TTF a chasse variable
  peut deplacer ou l'espace disponible par ligne, causant potentiellement
  du debordement ou du texte coupe ailleurs dans le jeu. A tester en jeu
  avant d'aller plus loin avec les accents - envoie des captures d'ecran
  si quelque chose deborde.

## 1.0.7

- Correctif urgent: la 1.0.6 patchait le champ `label` du registre `maps` de
  gen1recomp pour essayer de traduire la banniere de nom de ville affichee
  en entrant quelque part ("CERULEAN CITY"). Mauvaise piste: ce champ sert
  en fait de cle interne pour retrouver le texte des pancartes, PNJ,
  magasins et dresseurs de la map (`Game.data:resolveText`), pas de texte
  affiche. Le patcher risquait de casser le texte des 11 villes/villages
  renommes. Retire lang/map_names.lua et le hook associe dans main.lua -
  retour a un etat sain le temps de trouver la bonne facon de traduire
  cette banniere (elle ne semble pas exposee par les registres de mods de
  gen1recomp pour l'instant).

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
