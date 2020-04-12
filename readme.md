# Table of Contents
1. [Hoe begin je met docker study op play with docker](#hoe-play-with-docker)
2. [Example2](#hoe-eigen-linux-machine)
3. [Hoe werkt Docker study](#hoe-werkt-docker-study)

## Wat is docker study

Docker study is een handige manier om docker te leren. Het is een docker container welke een web applicatie bevat waar opdrachten in staan. als je de opdracht hebt uitgevoerd kun je meteen controlleren of je het goed hebt gedaan. ![Docker study](https://github.com/marcoippel/playwithdocker-course/raw/master/images/dockerstudy.png)


<a name="#hoe-play-with-docker"></a>
## Hoe begin je met docker study op play with docker

Je kunt heel gemakkelijk docker study starten op een hosted docker omgeving.

Als voorbeeld gebruik ik hier [Play with Docker](https://labs.play-with-docker.com/).

Bij Play with Docker kun je een omgeving aanmaken welke 4 uur beschikbaar blijft. ideaal dus om een korte training te doen of om dingen uit te proberen. Voor Play with Docker heb je een docker hub account als je deze niet hebt kun je deze aanmaken op [dockerhub](https://hub.docker.com/)

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker.png)

Login met je dockerhub account en dan zie je het voldende scherm

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker_add_instance.png)

Klik op add new instance, nu wordt er een machine klaargemaakt met daarop docker geinstalleerd. Hierop kun je nu je docker containers runnen. Je kan ook meerdere instanties aanmaken maar voor nu is een genoeg.

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker_new_instance.PNG)

Voer in de terminal van de docker machine het volgende commando uit
```bash
curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/start.sh | sh
```
Wat er nu gebeurd is dat er een start.sh scriptje wordt gedownload op de machine en deze wordt meteen uitgevoerd.

Het scriptje doet 2 dingen:
* Er wordt een docker-compose bestand gedownload
* Doormiddel van het docker-compose commando wordt het bestand wat zojuist is gedownload uitgevoerd.

Met het uitvoeren van het docker-compose bestand wordt de docker study container gestart en wordt poort 80 beschikbaar gemaakt.

![Play with Docker](https://github.com/marcoippel/playwithdocker-course/raw/master/images/playwithdocker_sh_script.png)

Als je nu op poort 80 klikt zal de web interface van docker study geladen worden.

![Docker study](https://github.com/marcoippel/playwithdocker-course/raw/master/images/dockerstudy.png)

<a name="#hoe-eigen-linux-machine"></a>
## Hoe begin je met docker study op je eigen linux machine

Mocht je een linux machine tot je beschikking hebben met docker daarop dan kun je het volgende script uitvoeren in de terminal
```bash
curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/start.sh | sh
```
Open poort 80 op je linux machine en dan zie je ook de web interface van docker study. Als poort 80 al bezet is op de machine dan kun je gemakkelijk het script downloaden en de poort aanpassen.

```
curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/pwd-docker-compose.yml -o docker-compose.yaml
```

Hierna kun je het bestand docker-compose openen met je favoriete test editor en pas de text beschikbare poort aan naar een poort nummer wat wel beschikbaar is op je linux machine.
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

<a name="#hoe-werkt-docker-study"></a>
## Hoe werkt docker study.

Als eerste zie je een omschrijving van het onderwerp met eventueel meer informatie in een link naar externe bronnen.

Er staat een opdracht welke je dient uit te voeren. Als je er echt niet uitkomt kan je op de link "hint" klikken dan zal je een aanwijzing of de oplossing zien.

Als je denkt dat je het goed hebt gedaan kun je je werk controlleren door op de controlleer knop te klikken.

Onder het kopje "Controle" zullen de resultaten te zien zijn van de opdracht

De laatste opdracht is een linkje naar een feedback formulier. Ik zou het zeer op prijs stellen als je je feedback wilt achterlaten.
