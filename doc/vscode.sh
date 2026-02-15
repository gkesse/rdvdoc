#------------------------------------------------
# references vscode
#------------------------------------------------
# ouvrir le fichier de configuration {settings.json}
#------------------------------------------------
-> ouvrir la palette de commande -> {show and run commands}
-> {preferences: open workspace settings json}
#------------------------------------------------
# activer l'autocompletion des textes
#------------------------------------------------
-> .vscode/settings.json
...
{
  "editor.quickSuggestions": {
    "other": true,
    "comments": true,
    "strings": true
  },
}
#------------------------------------------------
# modifier l'indicateur de fin de ligne d'un fichier
#------------------------------------------------
-> zone barre d etat {bas} {droit} -> LF -> CRLF
#------------------------------------------------
# ouvrir la palette de commande
#------------------------------------------------
-> cliquer dans la {barre de recherche}
-> cliquer sur {show and run commands}
-> {saisir votre commande}
#------------------------------------------------
# transformer un texte en minuscule
#------------------------------------------------
-> selectionner le texte
-> ouvrir la palette de commande -> {show and run commands}
-> transform to lowercase
#------------------------------------------------
# transformer un texte en majuscule
#------------------------------------------------
-> selectionner le texte
-> ouvrir la palette de commande -> {show and run commands}
-> transform to uppercase
#------------------------------------------------
# installer l'extension {replace accents:playful sparkle}
# pour supprimer les accents dans un texte
#------------------------------------------------
-> extensions -> {replace accents:playful sparkle} -> install
-> trust publisher install
#------------------------------------------------
# supprimer les accents dans un texte
# extension -> {replace accents:playful sparkle}
#------------------------------------------------
-> selectionner le texte
-> ouvrir la palette de commande -> {show and run commands}
-> utilities: remove diacritics {aeo - aeo}
#------------------------------------------------
# installer l'extension {remote-ssh:microsoft}
# pour se connecter a des serveurs ssh
#------------------------------------------------
-> extensions -> {remote-ssh:microsoft} -> install
-> trust publisher install
#------------------------------------------------
# creer une connexion a un serveur ssh
# extension -> {remote-ssh:microsoft}
#------------------------------------------------
-> ouvrir la palette de commande -> {show and run commands}
-> remote-ssh: connect to host
-> add new ssh host
-> saisir la commande {ssh username@hostname}
-> enregistrer les parametres dans {C:\Users\username\.ssh\config}
#------------------------------------------------
# afficher le fichier de configuration des serveurs ssh
# extension -> {remote-ssh:microsoft}
#------------------------------------------------
-> ouvrir la palette de commande -> {show and run commands}
-> remote-ssh: connect to host
-> configure ssh hosts
-> cliquer sur {C:\Users\username\.ssh\config}
...
-> acceder a la configuration ssh de base
...
Host {hostanme-serveur-ssh}
  HostName {hostanme-serveur-ssh}
  User {username-serveur-ssh}
...
Host {hostanme-serveur-ssh}
  HostName {hostanme-serveur-ssh}
  User {username-serveur-ssh}
  Port 22
  ForwardX11 yes
  ForwardX11Trusted yes
  ForwardAgent yes
  AddKeysToAgent yes
#------------------------------------------------
# se connecter a un serveur ssh
# extension -> {remote-ssh:microsoft}
#------------------------------------------------
-> ouvrir la palette de commande -> {show and run commands}
-> remote-ssh: connect to host
-> cliquer sur {hostname-serveur-ssh}
-> cliquer sur {systeme-exploitation-serveur-ssh}
-> are you sure to continue ? -> continue
-> password -> {password-serveur-ssh}
#------------------------------------------------
# installer l'extension {save as root in remote ssh:yy0931}
# pour enregistrer des fichiers en mode sudo
#------------------------------------------------
-> extensions -> {save as root in remote ssh:yy0931} -> install
-> trust publisher install
#------------------------------------------------
# enregistrer un fichier en mode sudo
# extension -> {save as root in remote ssh:yy0931}
#------------------------------------------------
-> ouvrir un fichier qui demande des droits sudo -> {file}
-> ouvrir la palette de commande -> {show and run commands}
-> {save as root}
#------------------------------------------------
# installer l'extension {cmake tools:microsoft}
# pour compiler un projet c++
#------------------------------------------------
-> extensions -> {cmake tools:microsoft} -> install
-> trust publisher install
#------------------------------------------------
# installer l'extension {cmake:twxs}
# pour compiler un projet c++
#------------------------------------------------
-> extensions -> {cmake:twxs} -> install
-> trust publisher install
#------------------------------------------------
# creer un projet c++
# extension -> {cmake tools:microsoft}
# extension -> {cmake:twxs}
#------------------------------------------------
-> ouvrir la palette de commande -> {show and run commands}
-> {cmake: quick start}
-> enter a name for the new project -> {project} -> touche {entree}
-> {c++: create a c++ project} -> touche {entree}
-> {executable: create an executable} -> touche {entree}
-> ok
#------------------------------------------------
