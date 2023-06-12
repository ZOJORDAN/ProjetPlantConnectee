from gpiozero import MCP3008

# Créer une instance du convertisseur analogique-numérique (CAN)
can = MCP3008(channel=0)

while True:
    # Lire la valeur analogique du capteur
    valeur_analogique = can.value
    
    # Convertir la valeur analogique en pourcentage d'humidité
    humidite = (1 - valeur_analogique) * 100
    
    # Afficher la valeur d'humidité
    print(f"Humidité du sol : {humidite}%")

    # Vous pouvez stocker les données dans une variable ou les envoyer à votre application via WiFi ici
    
    # Attendre un certain intervalle de temps entre les lectures
    time.sleep(1)