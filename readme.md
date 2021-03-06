# Inhoud
1. [Wat is docker study](#1-wat-is-docker-study)
2. [Hoe begin je met docker study op play with docker](#2-hoe-begin-je-met-docker-study-op-play-with-docker)
3. [Hoe begin je met docker study op je eigen linux machine](#3-hoe-begin-je-met-docker-study-op-je-eigen-linux-machine)
4. [Hoe werkt Docker study](#4-hoe-werkt-docker-study)

## 1. Wat is docker study

Docker study is een handige manier om docker te leren. Het is een docker container welke een web applicatie bevat waar opdrachten in staan. Als je de opdracht hebt uitgevoerd kun je meteen controlleren of je het goed hebt gedaan. ![Docker study](https://github.com/marcoippel/playwithdocker-course/raw/master/images/dockerstudy.PNG)

## 2. Hoe begin je met docker study op play with docker

Je kunt heel gemakkelijk docker study starten op een hosted docker omgeving.

Als voorbeeld gebruik ik hier [Play with Docker](https://labs.play-with-docker.com/).

Bij Play with Docker kun je een omgeving aanmaken welke 4 uur beschikbaar blijft. ideaal dus om een korte training te doen of om dingen uit te proberen. Voor Play with Docker heb je een docker hub account als je deze niet hebt kun je deze aanmaken op [dockerhub](https://hub.docker.com/)

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker.PNG)

Login met je dockerhub account en dan zie je het volgende scherm

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker_add_instance.PNG)

Klik op add new instance, nu wordt er een machine klaargemaakt hierop is docker al geïnstalleerd. Hierop kun je nu je docker containers runnen. Je kunt ook meerdere instanties aanmaken maar voor nu is een genoeg.

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker_new_instance.PNG)

Voer in de terminal van de docker machine het volgende commando uit
```bash
curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/start.sh | sh
```
Wat er nu gebeurd is dat er een start.sh scriptje wordt gedownload op de machine en deze wordt meteen uitgevoerd.

Het script voert 2 acties uit:
* Er wordt een docker-compose bestand gedownload
* Door middel van het docker-compose commando wordt het bestand wat zojuist is gedownload uitgevoerd.

Met het uitvoeren van het docker-compose bestand wordt de docker study container gestart en beschikbaar gemaakt op poort 80.

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker_sh_script.PNG)

Als je nu op poort 80 klikt zal de web interface van docker study geladen worden.

![Docker study](https://github.com/marcoippel/playwithdocker-course/raw/master/images/dockerstudy.PNG)

## 3. Hoe begin je met docker study op je eigen linux machine

Mocht je een linux machine tot je beschikking hebben met docker daarop dan kun je het volgende script uitvoeren in de terminal
```bash
curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/start.sh | sh
```
Open poort 80 op je linux machine en dan zie je ook de web interface van docker study. Als poort 80 al bezet is op de machine dan kun je gemakkelijk het script downloaden en de poort aanpassen.

```
curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/pwd-docker-compose.yml -o docker-compose.yaml
```

Hierna kun je het bestand docker-compose openen met je favoriete text editor en pas de text beschikbare poort aan naar een poort nummer wat wel beschikbaar is op je linux machine.
```
version: '3.2'
services:
  web:
    volumes:
    - /var/run/docker.sock:/var/run/docker.sock
    - /usr/bin/docker:/usr/bin/docker
    - /tmp:/tmp
    ports:
      - "{beschikbare poort}:80"
    image: marcoippel/dockerstudy:latest
```
Open hierna in een browser de naam of het ipadres van je host machine gevolgd door het zojuist ingevoerde poort nummer bijv. localhost:8080

## 4. Hoe werkt docker study.

Als eerste zie je een omschrijving van het onderwerp met eventueel meer informatie in een link naar externe bronnen.

Er staat een opdracht welke je dient uit te voeren. Als je er echt niet uitkomt kun je op de link "hint" klikken dan zul je een aanwijzing of de oplossing zien.

Als je denkt dat je het goed hebt gedaan kun je je werk controleren door op de controleer knop te klikken.

Onder het kopje "Controle" zullen de resultaten te zien zijn van de opdracht.

De laatste opdracht is een linkje naar een feedback formulier. Ik zou het zeer op prijs stellen als je je feedback wilt achterlaten.
![Docker study](https://github.com/marcoippel/playwithdocker-course/raw/master/images/dockerstudy.PNG)
