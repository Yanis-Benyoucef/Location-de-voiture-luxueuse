# Projet PHP - Site de Location dans les Voitures Luxueuse

Salut ! Alors, dans mon projet de site de location de voitures luxueuses, j'ai mis en place plusieurs fonctionnalités pour rendre l'expérience utilisateur vraiment sympa. Permettez-moi de vous présenter quelques-unes des pages clés et de vous expliquer comment certaines de ces fonctions importantes fonctionnent.

Vous devez récupérer la base de donnée ([luxury_cars.sql]) pour pouvoir débuter. 

! Ne commencez pas sans faire cette étape !
Vous devez supprimer temporairement dans votre SGBD la value (ONLY_FULL_GROUP_BY) dans la variable 'sql_mode', ceci est requis permettre la fonctionnalité d'affichages des véhicules. Le problème viens d'une restriction SQL et non de mon projet.


# Présentation des pages :

1. Page d'Accueil (index.php)

Sur la page d'accueil, vous verrez une liste des superbes voitures disponibles à la location. Chaque voiture est accompagnée de photos réelles, et si vous cliquez dessus, vous serez redirigé vers une page détaillée spécifique à chaque véhicule.


2. Page Individuelle de Chaque Véhicule (vehicle.php)

Chaque véhicule a sa propre page avec des détails approfondis, y compris une description et une galerie d'images. Vous pouvez y accéder pour obtenir toutes les infos nécessaires sur la voiture qui vous intéresse, et bien sûr, il y a un lien pour la réserver.


3. Calendrier de Réservations (reservation.php)

La page de réservations propose un calendrier interactif pour que vous puissiez planifier et réserver la voiture de vos rêves. C'est vraiment pratique pour organiser vos déplacements avec style.


4. Connexion et Déconnexion (login.php et logout.php)

La page de connexion (login.php) permet aux utilisateurs de se connecter à leur compte. Une fois connectés, ils peuvent accéder à des fonctionnalités spécifiques tels que la modification de profil et le changement de mot de passe. La fonction de déconnexion (logout.php) garantit une gestion sécurisée de la session utilisateur.

- (Un compte de test est mis à disposition pour les utilisateurs. Ne modifiez pas les données de ce compte pour permettre à d'autres bêta-testeurs de l'utiliser.)

- Identifiant : 'test'
- Mot de passe: '1234'. 


5. Gestion des Avis (avis.php, submit_review.php, review_form.php)

La page d'avis rassemble tous les retours clients. Vous pouvez partager votre expérience via le formulaire de retour client, qui est traité par la page submit_review.php. C'est là que tout se passe !


6. Calendrier de Réservations (reservation.php)

La page de réservations propose un calendrier interactif permettant aux utilisateurs de planifier et de réserver des véhicules. Cette fonctionnalité offre une approche conviviale pour la gestion des réservations.


7. Commentaires 

J'ai ajouté des commentaires détaillés dans le code pour vous faciliter la vie. Ces petits messages expliquent ce que fait chaque partie du code, rendant le projet plus accessible si vous voulez y jeter un œil.



# Description de l'approche de certaines fonctions inclus dans le projet


# 'UpdateProfile.php' 
![reservation](/codesnap/reservation.png)

1. Ajout d'une Réservation : 
Pour la partie intéressante : ajouter une nouvelle réservation. 
J'ai mis en place un formulaire où vous entrez la date de début et de fin de la réservation. 
Pour éviter les duplications, j'ai mis en place une vérification pour voir si ces dates sont disponibles. Si elles le sont, la réservation est ajoutée à la base de données. Sinon, un petit message vous informe qu'il y a déjà une réservation pour ces dates.

2. Suppression des Réservations : 
Tout d'abord, parlons de la possibilité de supprimer toutes les réservations d'une voiture. J'ai créé une option où si vous le souhaitez, vous pouvez effacer toutes les réservations d'un seul coup. J'ai utilisé une requête SQL pour accomplir cela, en vérifiant d'abord que tout se passe bien et en réinitialisant même l'auto-incrémentation de la table. Simple, efficace, et c'est le genre de truc que je me suis assuré de bien tester.

3. Affichage des Réservations :
Pour vous permettre de voir toutes les réservations effectuées pour une voiture, j'ai inclus une liste sous le formulaire. Chaque réservation indique la période concernée. C'est pratique pour vous donner une idée rapide de la disponibilité du véhicule.

C'est ça, en gros ! Une gestion des réservations simple et efficace pour rendre l'expérience de location aussi fluide que possible. Si vous avez des questions, n'hésitez pas à demander !


# 'ChangePassword.php'
![handlePasswordChange()](/codesnap/password.png)

1. Maintenant, passons à la gestion du changement de mot de passe. Quand vous décidez de changer votre mot de passe, le code vérifie d'abord si l'ancien mot de passe que vous avez donné correspond bien à celui stocké dans la base de données. Si c'est le cas, il met à jour votre mot de passe et vous redirige vers votre page de profil. Simple et sécurisé !

