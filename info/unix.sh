#------------------------------------------------
# references unix
#------------------------------------------------
# installer locate
#------------------------------------------------
sudo apt install mlocate
#------------------------------------------------
# afficher le contenu d'un fichier
#------------------------------------------------
cat {file}
#------------------------------------------------
# ajouter un texte dans un fichier
#------------------------------------------------
cat << _EOF_ > {file}
{file-content}
{file-content}
{file-content}
_EOF_
#------------------------------------------------
# afficher l'adresse ip du serveur dns
#------------------------------------------------
cat /etc/resolv.conf
#------------------------------------------------
# se deplacer dans un repertoire
#------------------------------------------------
cd {dir}
#------------------------------------------------
# changer les permissions d'un fichier
#------------------------------------------------
# 100 : 4 : lecture
# 010 : 2 : ecriture
# 001 : 1 : execution
# ...
# 101 : 5 : lecture + execution
# 110 : 6 : lecture + ecriture
# 111 : 7 : lecture + ecriture + execution
#------------------------------------------------
chmod {755} {file}
#------------------------------------------------
# changer les permissions d'un repertoire
#------------------------------------------------
# 100 : 4 : lecture
# 010 : 2 : ecriture
# 001 : 1 : execution
# ...
# 101 : 5 : lecture + execution
# 110 : 6 : lecture + ecriture
# 111 : 7 : lecture + ecriture + execution
#------------------------------------------------
chmod -R {755} {dir}
#------------------------------------------------
# changer le proprietaire d'un fichier
#------------------------------------------------
chown {username}:{group} {file}
#------------------------------------------------
# changer le proprietaire d'un repertoire
#------------------------------------------------
chown -R {username}:{group} {dir}
#------------------------------------------------
# afficher l'adresse ip de la machine
#------------------------------------------------
hostname -I
#------------------------------------------------
# afficher l'adresse ip du routeur
#------------------------------------------------
ip r
#------------------------------------------------
# localiser un fichier
#------------------------------------------------
locate {file}
#------------------------------------------------
# creer un repertoire
#------------------------------------------------
mkdir {dir}
#------------------------------------------------
# creer un repertoire de maniere recursive
#------------------------------------------------
mkdir -p {path/to/dir}
#------------------------------------------------
# mettre a jour la base de donnees {locate}
#------------------------------------------------
sudo updatedb
#------------------------------------------------
