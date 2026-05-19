# Exercice mis en place du dashboard power Bi avec la base de données SQL du magasin run-and-win-rdc

## Contexte

Grâce à tes requêtes SQL, la base de données de "Run & Win RDC" est enfin propre et parfaitement liée. Mais Mr Jhon a un nouveau problème : il fixe un tableau de résultats SQL de 15 000 lignes avec les yeux rougis. Il est frustré : "C'est super d'avoir les noms au lieu des codes, mais je n'arrive pas à voir si on progresse ! Je veux piloter mon entreprise en un coup d'œil, pas lire un annuaire téléphonique !". Il a essayé de faire quelques graphiques sur Excel, mais le résultat est figé, peu esthétique, et impossible à filtrer rapidement par région. **Ta mission** : En tant que Data Analyst, tu dois prouver que Power BI est l'outil ultime pour la prise de décision. Tu vas importer ces données, créer un modèle robuste et construire un tableau de bord interactif pour offrir à Mr Jhon une vision stratégique et visuelle de son business.



## MLD Magasin de sport run and win

![MLD Magasin de sport run and win](./magasin-sport-run-and-win-mld.png "MLD Magasin de sport run and win")



## Objectifs pédagogiques

À la fin de cet exercice, tu seras capable de :

* **Importer et transformer des données** : Utiliser Power Query pour nettoyer et préparer les tables.

* **Créer des mesures DAX** : Écrire des formules de base (SUM, COUNT) pour calculer des indicateurs clés (KPIs).

* **Concevoir des visualisations** : Choisir le bon graphique (courbe, barre, carte) en fonction du message à faire passer.

* **Rendre le rapport interactif** : Utiliser des segments (slicers) pour permettre à l'utilisateur d'explorer la donnée.




## Modalités pédagogiques

* **Méthode** : Data Visualisation & Modélisation (Power BI Avancé).

* **Durée** : 2 jours.

* **Outils** : Power BI Desktop.

* **Collaboration** : Échangez sur le canal : "Est-ce qu'il vaut mieux utiliser une colonne calculée ou une mesure DAX pour le Chiffre d'Affaires ici ?".




## Travail à réaliser

Pour sauver les yeux de Mr Jhon, il t'a laissé cette liste de vues à générer sur une seule et même page de rapport (Dashboard).

1. **Les Fondations (Le Modèle en Étoile)** "Avant de dessiner, il faut que l'outil comprenne nos données. Importe les fichiers (ou connecte la base) et relie tout correctement."

* **Compétence testée** : Import Power Query et Vue Modèle (Création de relations actives entre la table des Ventes et les tables de dimension : Produits, Magasins, Dates).

2. **Les KPIs "Big Picture" (Les Cartes)** "Quand j'ouvre mon ordinateur le matin, je veux voir deux chiffres immédiatement : Combien on a gagné, et combien d'articles on a vendu au total."

* **Compétence testée** : Création de mesures DAX (`SUM`) et utilisation du visuel "Carte" (Card).

3. **La Dynamique Temporelle (Le graphique en courbes)** "Est-ce qu'on vend plus en fin d'année ? Montre-moi l'évolution de notre Chiffre d'Affaires mois par mois."

* **Compétence testée** : Hiérarchie de dates (Axe X) et Visuel en Courbes.

4. **L'exploration Géographique (La carte et le graphique en barres)** "Je veux voir sur une carte de la RDC quels magasins performent le mieux, et je veux un classement (Top 5) de nos magasins par Chiffre d'Affaires."

* **Compétence testée** : Visuel "Carte" (taille des bulles selon le CA) et Visuel "Graphique à barres groupées" trié par ordre décroissant.

5. **L'interactivité (Les Segments)** "Et si je veux analyser uniquement la catégorie 'Running' ou uniquement les ventes du 'Grand Kivu' ? Ajoute des boutons pour que je puisse filtrer tout le tableau de bord d'un clic !"

* **Compétence testée** : Ajout de visuels "Segment" (Slicer) sur les colonnes Catégorie et Ville, et vérification des interactions entre les visuels.

## Astuces de Data Analyst

* **Le DAX plutôt que les colonnes** : Privilégie toujours les "Mesures" (Measures) DAX pour tes calculs (comme le Chiffre d'Affaires Total) plutôt que de créer de nouvelles colonnes. Cela rend ton fichier plus léger et plus rapide.

* **La règle des 3 secondes** : Un bon tableau de bord doit être compris en 3 secondes. Aligne tes graphiques, choisis des couleurs cohérentes (utilise le thème "Run & Win"), et ne surcharge pas l'écran.

* **Vérifie tes types de données** : Dans Power Query, assure-toi que tes prix sont en format "Nombre décimal fixe", tes dates en "Date" et tes villes en "Catégorie de données : Ville".

## Livrables

* **Le fichier Power BI** : `run-and-win-dashboard.pbix`.

* **Capture d'écran** : Une belle capture d'écran de ton Dashboard final (exporté en PDF ou en image).

* **Dépôt GitHub** : Dossier `powerbi-run-and-win` (contenant le PDF/Image et un fichier explicatif de ton modèle).

**Note pour la soumission** :

Le lien vers le repos Github sur lequel vous allez retrouver les fichiers de base sur lesquels travailler et ensuite déposer votre travail :

Pour la classe 2026-janvier-da-soir-b.

Pour la classe 2026-janvier-da-midi-c.

Après avoir déposé votre travail sur Github, veuillez copier l'url du repos Github et finaliser votre soumission en le soumettant sur Canvas.

