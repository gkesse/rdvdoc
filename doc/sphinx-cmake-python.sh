#------------------------------------------------
# references sphinx-cmake-python
#------------------------------------------------
# trouver une version de sphinx dans cmake
#------------------------------------------------
find_package(Sphinx 7.3.7 REQUIRED)
#------------------------------------------------
# ajouter une cible de generation de documentation
#------------------------------------------------
sphinx_add_docs(docs ALL)
#------------------------------------------------
# installer la version actuelle de sphinx
#------------------------------------------------
pip install sphinx-cmake
#------------------------------------------------
# identifier le repertoire d'installation de sphinx
#------------------------------------------------
-> {python_prefix}/share/Sphinx/cmake
#------------------------------------------------
# cloner le depot public de sphinx
#------------------------------------------------
git clone git@github.com:python-cmake/sphinx-cmake.git
#------------------------------------------------
# compiler le package sphinx
# installer le package sphinx
#------------------------------------------------
cd sphinx-cmake
pip install .
#------------------------------------------------
# installer les dependances du projet
#------------------------------------------------
pip install -r ./doc/requirements.txt
#------------------------------------------------
# generer la documentation du projet
#------------------------------------------------
sphinx-build ./doc ./build/doc/html
#------------------------------------------------
# consulter la documentation du projet
#------------------------------------------------
-> file:///path/to/sphinx-build/build/doc/html/index.html
#------------------------------------------------
# trouver sphinx dans cmake
#------------------------------------------------
find_package(Sphinx)
#------------------------------------------------
# trouver une version sphinx dans cmake
#------------------------------------------------
# Demander Sphinx version 7.3.7.
find_package(Sphinx 7.3.7 EXACT REQUIRED)
...
# Demander une version de Sphinx comprise entre 6.0.0 et 7.3.0 inclus.
find_package(Sphinx 6.0.0...7.3.0 REQUIRED)
...
# Demander toute version de Sphinx supérieure à 6.0.0.
find_package(Sphinx 6.0.0 REQUIRED)
#------------------------------------------------
#
#------------------------------------------------

#------------------------------------------------
#
#------------------------------------------------

#------------------------------------------------
#
#------------------------------------------------

#------------------------------------------------
#
#------------------------------------------------

#------------------------------------------------
