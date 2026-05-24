#------------------------------------------------
# references raspberry-pi-imager
#------------------------------------------------
# telecharger raspberry-pi-imager pour windows
#------------------------------------------------
-> https://www.raspberrypi.com/
-> software
-> download for windows
#------------------------------------------------
# installer raspberry-pi-imager sous windows
#------------------------------------------------
-> C:\Users\<username>\Downloads
-> imager_2.0.3.exe
-> langue -> francais -> ok
-> suppression de l ancienne version -> oui
-> assistant d installation -> suivant
-> accord de licence -> cocher -> je comprends et j accepte les termes du contrat de licence -> suivant
-> dossier de destination -> C:\Program Files\Raspberry Pi Ltd\Imager -> suivant
-> taches supplementaires -> suivant
-> fin de l installation -> terminer
#------------------------------------------------
# installer une image <raspberry-pi-os> sur une carte <micro-sd>
# a partir d'un ordinateur windows
#------------------------------------------------
-> connecter votre ordinateur windows au wifi du reseau local
-> inserer la carte {micro-sd} dans votre ordianteur windows
-> demarrer {raspberry-pi-imager} sous windows
...
-> selectionner votre appareil raspberry pi -> raspberry-pi-4 -> suivant
-> choisir un systeme d exploitation
-> raspberry-pi-os {other} -> raspberry-pi-os lite {64-bit} -> suivant
-> selectionner votre peripherique de stockage
-> masse storage device usb device {119.1 Go} {monte sur E:\\} -> suivant
-> personnalisation : choisir un nom d hote -> {hostname} -> suivant
...
-> personnalisation : localisation
-> ville capitale -> {paris-france}
-> fuseau horaire -> {europe-paris}
-> type de clavier -> {fr} -> suivant
...
-> personnalisation : choisir un nom d utilisateur
-> nom d utilisateur -> {username}
-> mot de passe -> {password}
-> confirmer le mot de passe -> {password} -> suivant
...
-> personnalisation : choisir le wifi
-> ssid -> {nom reseau wifi}
-> mot de passe -> {mot de passe cle wifi}
-> confirmer le mot de passe -> {mot de passe cle wifi} -> suivant
...
-> personnalisation : authentification ssh
-> cocher -> activer ssh
-> mecanisme d authentification
-> cocher -> utiliser un mot de passe pour l authentification -> suivant
...
-> personnalisation : raspberry pi connect
-> cocher -> activer raspberry pi connect
-> cliquer sur {ouvrir raspberry pi connect} -> pour configurer votre compte
-> cliquer sur {create auth key and launch raspberry pi imager} -> pour controler votre raspberry-pi a distance
-> cocher {toujours autoriser connect.raspberrypi.com a ouvrir les liens de ce type dans l application associee}
-> cliquer sur {ouvrir rpi-imager-callback-relay.exe}
-> cela affiche le jeton enoye par le navigateur dans le champ {jeton d authentification}
-> suivant
...
-> personnalisation : ecriture
-> ecrire -> je comprends, effacer et ecrire
-> terminer
...
-> ejecter la carte micro-sd de votre ordianteur windows
#------------------------------------------------
# configurer le reseau wifi
#------------------------------------------------
/network-config
...
network:
  version: 2
  ethernets:
    eth0:
      dhcp4: true
      dhcp6: true
      optional: true
  wifis:
    wlan0:
      dhcp4: true
      regulatory-domain: "FR"
      access-points:
        "{nom-reseau-wifi}":
          password: "{mot-de-passe-cle-wifi}"
      optional: true
#------------------------------------------------
# configurer le nom de la machine {hostname -> hostname}
# configurer le nom d'utilisateur {users/name -> username}
# configurer le mot de passe {users/passwd -> password}
# configurer le fuseau horaire {timezone -> Europe/Paris}
# configurer la disposition du clavier {keyboard/layout -> fr}
#------------------------------------------------
/user-data
...
#cloud-config
manage_resolv_conf: false
hostname: {hostname}
manage_etc_hosts: true
packages:
- avahi-daemon
apt:
  preserve_sources_list: true
  conf: |
    Acquire {
      Check-Date "false";
    };
timezone: {Europe/Paris}
keyboard:
  model: pc105
  layout: "{fr}"
users:
- name: {username}
  groups: users,adm,dialout,audio,netdev,video,plugdev,cdrom,games,input,gpio,spi,i2c,render,sudo
  shell: /bin/bash
  lock_passwd: false
  passwd: "{password}"
enable_ssh: true
ssh_pwauth: true
rpi:
  interfaces:
    serial: true
runcmd:
  - [ sh, -c, "install -o {username} -m 700 -d /home/{username}/.config/com.raspberrypi.connect" ]
  - [ sh, -c, "printf '%s\n' '{token}' > /home/{username}/.config/com.raspberrypi.connect/auth.key && chown {username}:{username} /home/{username}/.config/com.raspberrypi.connect/auth.key && chmod 600 /home/{username}/.config/com.raspberrypi.connect/auth.key" ]
  - [ sh, -c, "install -o {username} -m 700 -d /home/{username}/.config/systemd/user/default.target.wants /home/{username}/.config/systemd/user/paths.target.wants" ]
  - [ sh, -c, "UNIT_SRC=/usr/lib/systemd/user/rpi-connect.service; [ -f $UNIT_SRC ] || UNIT_SRC=/lib/systemd/user/rpi-connect.service; ln -sf $UNIT_SRC /home/{username}/.config/systemd/user/default.target.wants/rpi-connect.service" ]
  - [ sh, -c, "UNIT_SRC=/usr/lib/systemd/user/rpi-connect-signin.path; [ -f $UNIT_SRC ] || UNIT_SRC=/lib/systemd/user/rpi-connect-signin.path; ln -sf $UNIT_SRC /home/{username}/.config/systemd/user/paths.target.wants/rpi-connect-signin.path" ]
  - [ sh, -c, "UNIT_SRC=/usr/lib/systemd/user/rpi-connect-wayvnc.service; [ -f $UNIT_SRC ] || UNIT_SRC=/lib/systemd/user/rpi-connect-wayvnc.service; ln -sf $UNIT_SRC /home/{username}/.config/systemd/user/default.target.wants/rpi-connect-wayvnc.service" ]
  - [ sh, -c, "chown -R {username}:{username} /home/{username}/.config/systemd" ]
  - [ sh, -c, "install -d -m 0755 /var/lib/systemd/linger" ]
  - [ sh, -c, "install -m 0644 /dev/null /var/lib/systemd/linger/{username}" ]
  - [ sh, -c, "loginctl enable-linger {username} 2>/dev/null || true" ]
  - [ sleep, "2" ]
  - [ sh, -c, "systemctl --quiet --user --machine={username}@.host daemon-reload || true" ]
  - [ sh, -c, "systemctl --quiet --user --machine={username}@.host start rpi-connect.service || true" ]
  - [ sh, -c, "systemctl --quiet --user --machine={username}@.host start rpi-connect-signin.path || true" ]
  - [ sh, -c, "systemctl --quiet --user --machine={username}@.host start rpi-connect-wayvnc.service || true" ]
#------------------------------------------------
