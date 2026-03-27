#!/bin/bash
echo "--Démarrage de l'application Spring Boot--..."

nohup mvn spring-boot:run > logs/app.log 2>&1 &
echo " L'application est  démarrée avec succès (PID : $!)"