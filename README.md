# Atlas Géographique 🌍

Application mobile développée avec Flutter pour explorer les informations géographiques des pays du monde.

## 📱 Fonctionnalités

- **Page d'Accueil** : Interface de bienvenue avec navigation vers l'atlas
- **Liste des Pays** : Affichage de tous les pays avec drapeaux et capitales
- **Détails du Pays** : Informations complètes (capitale, population, superficie, langue)
- **Menu Latéral** : Navigation facile entre les pages
- **Page À Propos** : Informations sur l'application

## 🛠️ Technologies Utilisées

- **Framework** : Flutter
- **Langage** : Dart
- **Architecture** : MVC (Model-View-Controller)

## 📂 Structure du Projet

```
lib/
├── main.dart                 # Point d'entrée de l'application
├── models/
│   └── country.dart          # Modèle de données Pays
├── pages/
│   ├── welcome_page.dart     # Page d'accueil
│   ├── countries_page.dart   # Liste des pays
│   ├── country_detail_page.dart  # Détails d'un pays
│   └── about_page.dart       # Page à propos
└── data/
    └── countries_data.dart   # Données des pays

assets/
├── images/
│   ├── welcome.png
│   └── flags/
│       ├── tunisia.png
│       ├── france.png
│       └── ...
```

## 🚀 Installation

1. Cloner le projet :
```bash
git clone [votre-lien-github]
cd atlas_geo_votre_prenom
```

2. Installer les dépendances :
```bash
flutter pub get
```

3. Ajouter les images dans le dossier `assets/images/`

4. Lancer l'application :
```bash
flutter run
```

## 📋 Prérequis

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code
- Émulateur Android ou appareil physique

## 📸 Captures d'Écran

### Page d'Accueil
Interface de bienvenue avec image de globe terrestre

### Liste des Pays
Affichage des pays avec drapeaux miniatures

### Détails du Pays
Informations complètes avec drapeau en grand format

## 🎨 Assets Requis

### Images
- `welcome.png` : Image de bienvenue (globe terrestre ou carte du monde)

### Drapeaux
Télécharger les drapeaux depuis : https://www.countryflags.com

Liste des drapeaux nécessaires :
- tunisia.png
- france.png
- germany.png
- italy.png
- spain.png
- morocco.png
- egypt.png
- japan.png

## 👨‍💻 Auteur

**[Votre Nom]**

Projet réalisé dans le cadre de l'examen pratique de Développement Mobile Cross-Plateforme

**Enseignant** : Wahid Hamdi

## 📄 Licence

Projet académique - 2025