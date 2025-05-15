# AfrikDoc

AfrikDoc est une application conçue pour faciliter la gestion des médecins, patients et rendez-vous. Ce projet propose une plateforme simple et intuitive permettant de créer, organiser et retrouver une base de données des rendez-vous medicaux. Nous nous intéressons ici aux
fondamentaux des `models` et des `migrations`.

## Prérequis

- **Version de Ruby** : 3.0 ou supérieure recommandée
- **Base de données** : PostgreSQL (modifiable selon vos besoins)
- **Systèmes d'exploitation supportés** : Linux, MacOS, Windows

## Dépendances système

Avant d'installer le projet, assurez-vous d'avoir installé :

- [Ruby](https://www.ruby-lang.org/fr/downloads/)
- [Bundler](https://bundler.io/) (`gem install bundler`)
- [PostgreSQL](https://www.postgresql.org/download/) ou la base de données choisie

## Installation

Clonez ce repository puis installez les dépendances Ruby :

```bash
git clone <URL_du_repository>
cd AfrikDoc
bundle install
```

## Configuration

Modifiez les fichiers de configuration si besoin, notamment `config/database.yml` pour adapter la base de données à votre environnement.

## Création et initialisation de la base de données

Assurez-vous que PostgreSQL est en service, puis créez et initialisez la base :

```bash
rails db:create
rails db:migrate
rails db:seed
```

## Lancement de l'application

Démarrez le serveur Rails avec :

```bash
rails server
```

Accédez ensuite à l'application via [http://localhost:3000](http://localhost:3000)

## Exécution de la suite de tests

Pour vérifier que tout fonctionne correctement :

```bash
bundle exec rspec
```
ou (selon votre configuration) :
```bash
rails test
```

## Services additionnels

Si votre application utilise des services externes comme Sidekiq, Redis, ou Elasticsearch, référez-vous à leurs documentations respectives pour la configuration et le démarrage.

## Déploiement

Pour déployer AfrikDoc en production, suivez ces étapes générales (à adapter selon votre hébergeur) :

1. Préparer l'environnement sur le serveur distant (Ruby, base de données…)
2. Cloner ce repository
3. Exécuter `bundle install`
4. Paramétrer la base de données et les variables d'environnement
5. Lancer les migrations (`rails db:migrate`)
6. Démarrer le serveur applicatif (`puma`, `passenger`, etc.)

## À propos

Développé dans le cadre d'un projet d'apprentissage de la programmation orientée objet en Ruby.
Ce code est fourni à titre d'exemple et peut nécessiter des ajustements pour fonctionner

## Auteurs
- [THIAM](https://github.com/thaliou)
- [ASSY](https://github.com/AssyaJalo)
- [SOUARE](https://github.com/bbkouty)
- [FANAR](https://github.com/fanarbandia)
- [MAIGA](https://github.com/Fadelion)

## Licence

Ce projet est sous licence MIT. Consultez le fichier [LICENSE](LICENSE) pour plus de détails.

---

Pour toute question ou suggestion, vous pouvez ouvrir une issue sur le dépôt GitHub du projet.
