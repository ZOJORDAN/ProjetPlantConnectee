import Adafruit_DHT

# Spécifiez le type de capteur et la broche GPIO
capteur = Adafruit_DHT.DHT11
broche = 4

# Lecture des données du capteur d'humidité
humidite, temperature = Adafruit_DHT.read_retry(capteur, broche)

# Affichage des résultats
if humidite is not None and temperature is not None:
    print('Humidité={0:0.1f}%'.format(humidite))
    print('Température={0:0.1f}°C'.format(temperature))
else:
    print('Échec de la lecture du capteur.')