#------------------------------------------------
# references books
#------------------------------------------------
### 2019-Hands-On Robotics Programming with C++
#------------------------------------------------
# Le chapitre 1, « Introduction au Raspberry Pi »,
<< _EOF_
présente les différents modes de fonctionnement du Raspberry Pi et
la configuration des broches GPIO. Nous configurerons ensuite un Raspberry Pi B+ et un Raspberry Pi Zero et
y installerons le système d'exploitation Raspbian. Nous apprendrons également à connecter un Raspberry Pi
à un ordinateur portable sans fil via un réseau Wi-Fi.
_EOF_
# Le chapitre 2, « Implémentation de Blink avec wiringPi »,
<< _EOF_
traite de l'installation de la bibliothèque wiringPi.
Dans ce chapitre, nous étudierons les connexions des broches wiringPi pour le Raspberry Pi. Enfin,
nous écrirons deux programmes en C++ et les téléverserons sur notre Raspberry Pi.
_EOF_
# Le chapitre 3, « Programmation du robot »,
<< _EOF_
aborde les critères de sélection d'un châssis robotique. Ensuite,
nous construirons notre robot, connecterons le contrôleur de moteur au Raspberry Pi et étudierons le
fonctionnement d'un circuit en pont en H. Enfin, nous écrirons des programmes pour faire avancer, reculer,
tourner à gauche et à droite le robot.
_EOF_
# Le chapitre 4, « Construction d'un robot évitant les obstacles »,
<< _EOF_
explique le fonctionnement d'un capteur ultrasonique,
et nous écrirons un programme pour mesurer les distances. Ensuite, nous programmerons l'écran LCD 16 x 2
pour lire la valeur de distance mesurée par le capteur ultrasonique. Nous examinerons également l'interface LCD I2C,
qui prend la broche LCD 16 en entrée et fournit quatre broches en sortie, simplifiant ainsi le câblage.
Enfin, nous installerons le capteur ultrasonique sur notre robot pour créer notre robot évitant les obstacles.
Ce robot se déplacera librement en l'absence d'obstacles à proximité et, s'il
s'approche d'un obstacle, il l'évitera en effectuant un virage.
_EOF_
# Le chapitre 5, « Contrôler un robot à l'aide d'un ordinateur portable »,
<< _EOF_
présente deux techniques différentes pour
contrôler le robot à l'aide d'un ordinateur portable. La première technique utilise la bibliothèque ncurses pour
récupérer les entrées clavier et déplacer le robot en conséquence. La seconde technique
utilise l'IDE Qt Creator pour créer des boutons d'interface graphique, puis les utilise pour déplacer le
robot dans différentes directions.
_EOF_
# Le chapitre 6, « Accéder à la caméra Raspberry Pi avec OpenCV »,
<< _EOF_
est consacré à l'installation d'OpenCV sur le
Raspberry Pi. Vous découvrirez également le module caméra Raspberry Pi et, après avoir
configuré la caméra Pi, vous prendrez des photos et enregistrerez une courte vidéo à l'aide de celle-ci.
_EOF_
# Le chapitre 7, « Construire un robot suiveur d'objets avec OpenCV »,
<< _EOF_
aborde certaines des fonctions importantes des bibliothèques OpenCV.
Ensuite, nous mettrons ces fonctions à l'épreuve et tenterons de reconnaître un objet sur une image.
Ensuite, nous apprendrons à lire un flux vidéo depuis la caméra Raspberry Pi, à seuiller une balle colorée
et à placer un point rouge dessus. Enfin, nous utiliserons la caméra Raspberry Pi et le capteur ultrasonique
pour détecter la balle et la suivre.
_EOF_
# Le chapitre 8, « Détection et suivi du visage à l'aide du classificateur de Haar »,
<< _EOF_
utilise le classificateur de visage de Haar pour détecter un visage dans un flux vidéo
et tracer un rectangle autour. Ensuite, nous détecterons les yeux et un sourire sur le visage
et créerons un cercle autour des yeux et de la bouche. Après avoir utilisé ces connaissances sur la détection
du visage et des yeux, nous allumerons/éteindrons la LED lorsque les yeux et le sourire sont détectés.
Ensuite, en créant un point blanc au centre du visage, nous façonnerons le robot de suivre le visage.
_EOF_
# Le chapitre 9, « Construire un robot à commande vocale »,
<< _EOF_
commence par la création de notre première application Android, nommée Talking Pi, dans laquelle le texte saisi
dans la zone de texte sera affiché dans une étiquette et lu à voix haute par le smartphone.
Nous développerons ensuite une application Android de commande vocale pour le robot, qui reconnaîtra notre voix
et enverra du texte au Raspberry Pi via Bluetooth. Après cela, à l'aide du terminal,
nous appairerons le Bluetooth du smartphone Android avec celui du Raspberry Pi.
Enfin, nous aborderons la programmation de sockets et écrirons le programme VoiceBot pour établir
une connexion Bluetooth avec le smartphone Android afin de contrôler le robot.
_EOF_
#------------------------------------------------
### 2021-Learn Robotics Programming Python
#------------------------------------------------
# Le chapitre 1, « Introduction à la robotique »,
<< _EOF_
présente la définition des robots et donne des exemples dans le domaine domestique et industriel,
ainsi que les types de robots que les débutants peuvent construire.
_EOF_
# Le chapitre 2, « Exploration des éléments constitutifs d'un robot – Code et électronique »,
<< _EOF_
examine les composants d'un robot. Nous commencerons à choisir les pièces du robot et verrons des schémas
fonctionnels pour les systèmes et le code.
_EOF_
# Le chapitre 3, « Exploration du Raspberry Pi »,
<< _EOF_
présente le Raspberry Pi et ses connexions, ainsi que le système d'exploitation Raspbian Linux que nous utiliserons.
Il aborde également la préparation d'une carte SD pour une utilisation dans un robot.
_EOF_
# Le chapitre 4, « Préparation d'un Raspberry Pi sans écran pour un robot »,
<< _EOF_
explique comment configurer un Raspberry Pi autonome et communiquer avec lui sans fil.
_EOF_
# Le chapitre 5, « Sauvegarde du code avec Git et copies sur carte SD »,
<< _EOF_
explique comment le code peut être perdu ou corrompu, puis présente des méthodes pour protéger votre travail
et en conserver un historique.
_EOF_
# Le chapitre 6, « Bases de la construction robotique : roues, alimentation et câblage »,
<< _EOF_
présente les compromis liés à l'achat et à l'ajustement d'une base de robot, puis à son assemblage.
_EOF_
# Le chapitre 7, « Propulsion et rotation : pilotage des moteurs avec Python »,
<< _EOF_
vous montre comment programmer le déplacement d'un robot, posant ainsi les bases du code des chapitres suivants.
_EOF_
# Le chapitre 8, « Programmation des capteurs de distance avec Python »,
<< _EOF_
ajoute des capteurs et du code pour créer un robot capable d'éviter les murs et les obstacles de manière autonome.
_EOF_
# Le chapitre 9, « Programmation des bandes RGB avec Python »,
<< _EOF_
ajoute des lumières multicolores à votre robot.
Explorez cette sortie supplémentaire pour le débogage ou pour vous amuser avec le robot.
_EOF_
# Le chapitre 10, « Utilisation de Python pour contrôler les servomoteurs »,
<< _EOF_
montre comment utiliser ces moteurs pour positionner une tête de capteur, et où ils pourraient être utilisés
dans les bras ou les jambes d'autres robots.
_EOF_
# Le chapitre 11, « Programmation des encodeurs avec Python »,
<< _EOF_
explique comment lire les données des roues odométriques/tachygraphes
dans votre code, permettant ainsi à votre robot de se déplacer en ligne droite, d'effectuer un virage précis,
ou d'enregistrer la distance parcourue. Ce chapitre présente également le contrôleur PID.
_EOF_
# Le chapitre 12, « Programmation de l'IMU avec Python »,
<< _EOF_
présente l'unité de mesure inertielle (IMU), un ensemble de capteurs permettant de mesurer la température,
l'accélération, la vitesse de rotation et les champs magnétiques. Ce chapitre propose également une introduction
à la soudure et à VPython.
_EOF_
# Le chapitre 13, « Vision robotique – Utilisation d'une caméra Pi et d'OpenCV »,
<< _EOF_
explique comment obtenir des données d'une caméra et utiliser la vision par ordinateur
pour effectuer des mouvements en fonction de ce que voit le robot.
Ce chapitre permet également de diffuser la vidéo traitée vers un navigateur.
_EOF_
# Le chapitre 14, « Suivi de ligne avec une caméra en Python »,
<< _EOF_
montre comment implémenter un comportement de suivi de ligne avec la caméra Raspberry Pi.
_EOF_
# Le chapitre 15, « Communication vocale avec un robot à l'aide de Mycroft »,
<< _EOF_
explique comment créer un agent de commande vocale pour interagir avec votre robot,
vous permettant ainsi de le contrôler par la voix et de recevoir un retour vocal.
_EOF_
# Le chapitre 16, « Approfondissement avec l'IMU »,
<< _EOF_
reprend les capteurs présentés au chapitre 12, « Programmation de l'IMU avec Python », et les combine
pour fournir des données sur l'orientation du robot, permettant ainsi de créer un comportement qui réagit
à la direction de la boussole.
_EOF_
# Le chapitre 17, « Contrôle du robot avec un téléphone et Python »,
<< _EOF_
explique comment créer un système de menus et une manette de jeu pour votre robot depuis votre smartphone,
vous permettant de le piloter tout en voyant ce que voit le robot.
_EOF_
# Le chapitre 18, « Perfectionner vos compétences en programmation robotique »,
<< _EOF_
explore le vaste univers de la robotique :
les communautés existantes, comment entrer en contact avec d'autres constructeurs et concepteurs de robots,
les axes de développement potentiels et les compétitions robotiques.
_EOF_
# Le chapitre 19, « Planifier votre prochain projet robotique : la synthèse »,
<< _EOF_
est le dernier chapitre. Nous y récapitulons les points abordés dans l'ouvrage et vous encourageons
à planifier la construction de votre prochain robot.
_EOF_
#------------------------------------------------
