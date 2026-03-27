# TP14 — Automatisation et Déploiement Spring Boot avec Bash

## Description
Projet Spring Boot automatisé via des scripts Bash couvrant le cycle complet : build, démarrage, supervision et déploiement.

## Stack technique
- Java 17 / Spring Boot
- Maven
- H2 Database (en mémoire)
- Bash / Git Bash (Windows)

## Configuration
- Port : `8085`
- Base de données : H2 en mémoire (`jdbc:h2:mem:testdb`)
- Profil : `default`

## Structure du projet
```
ens-springbash/
├── src/
│   └── main/java/ma/ens/springbash/
├── src/main/resources/
│   └── application.properties
├── scripts/
│   ├── run.sh           # Démarrage
│   ├── stop.sh          # Arrêt
│   ├── logs.sh          # Supervision
│   ├── deploy.sh        # Build + déploiement JAR
│   ├── healthcheck.sh   # Vérification santé
│   └── archive-logs.sh  # Archivage logs
├── logs/
└── pom.xml
```

## Utilisation

### Donner les permissions (une seule fois)
```bash
chmod +x scripts/*.sh
```

### Démarrer l'application
```bash
./scripts/run.sh

<img width="1920" height="133" alt="Screenshot (1209)" src="https://github.com/user-attachments/assets/006ba077-0431-4087-a7fc-022261a5dd00" />

---

### Vérifier les logs
```bash
./scripts/logs.sh

<img width="1920" height="682" alt="Screenshot (1211)" src="https://github.com/user-attachments/assets/b01e72c9-29c1-42ab-a452-920004c718bd" />

```

### Accéder à l'application
```
http://localhost:8085
```

### Arrêter l'application
```bash
./scripts/stop.sh
```

### Compiler et déployer le JAR
```bash
./scripts/deploy.sh
<img width="1920" height="760" alt="Screenshot (1213)" src="https://github.com/user-attachments/assets/54cce7d2-0ee6-4661-9fd8-0bfa3a8a3fd4" />


```

### Vérifier la disponibilité du service
```bash
./scripts/healthcheck.sh
# Résultat attendu : Service OK (HTTP 200)
<img width="1920" height="222" alt="Screenshot (1215)" src="https://github.com/user-attachments/assets/61647d8a-b952-4a4e-8de2-d42aaf648358" />


```

### Archiver les logs
```bash
./scripts/archive-logs.sh
```




## Compétences acquises
- Automatisation avec Bash (nohup, redirection, PID, kill)
- Gestion des processus Linux/Windows
- Supervision applicative via les logs
- Déploiement d'un JAR Spring Boot sans IDE
- Bases du DevOps et de la livraison continue

  ---
  ## Auteur
  ---
  AIT LECHGUEUR BASMA
