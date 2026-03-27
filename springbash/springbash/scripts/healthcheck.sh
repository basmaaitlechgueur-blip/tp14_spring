#!/bin/bash
echo "Vérification de la santé du service..."
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8085/actuator/health)

if [ "$RESPONSE" = "200" ]; then
  echo "Service OK (HTTP 200)"
else
  echo "Service indisponible (HTTP $RESPONSE)"
fi