#------------------------------------------------
### references readydev-wampserver
#------------------------------------------------
### desinstaller wampserver
#------------------------------------------------
...
# ouvre les programmes et fonctionnalites
...
-> windows
-> panneau de conficuration
-> programmes
-> desinstaller un programme
...
# desinstalle wampserver
...
-> wampserver64-3.3.0
-> desinstaller
-> oui
-> desinstaller completement avec tous ses composants -> oui
-> oui
...
#------------------------------------------------
### installer wampserver
#------------------------------------------------
...
# telecharge wampserver
...
-> https://www.wampserver.com/
...
-> telecharger
-> wampserver 64 bit {x64} 3.3.7
-> passer au telechargement direct
...
# installe wampserver
...
-> wampserver3.4.0_x64.exe
-> oui
-> langue -> francais
-> ok
-> cocher -> je comprends et j_accepte les termes du contrat de licence
-> suivant
...
# verifie vcredist
...
-> https://wampserver.aviatechno.net/files/tools/check_vcredist.exe
...
-> check_vcredist.exe
-> oui
-> langue -> francais
-> ok
-> verifier
...
# telecharge vcredist
...
-> https://wampserver.aviatechno.net
...
-> microsoft vc++ packages x86 {32-bits}
-> vc 2013 package up 5 {x86}
...
-> vcredist_2013_upd5_x86.exe
-> informations complementaires
-> executer quand meme
-> cocher -> i agree to the license terms and conditions
-> install
-> oui
-> close
...
# telecharge vcredist
...
-> https://wampserver.aviatechno.net
...
-> microsoft vc++ packages x64 {64-bits}
-> vc 2013 package up 5 {x64}
...
-> vcredist_2013_upd5_x64.exe
-> informations complementaires
-> executer quand meme
-> cocher -> i agree to the license terms and conditions
-> install
-> oui
-> close
...
# telecharge vcredist
...
-> https://wampserver.aviatechno.net
...
-> microsoft vc++ packages x86 {86-bits}
-> visual c++ 14 - 14.50.35719
...
-> vcredist_v14_x86.exe
-> informations complementaires
-> executer quand meme
-> cocher -> i agree to the license terms and conditions
-> install
-> oui
-> close
...
-> redemarrer l_ordinateur
...
# installe wampserver
...
-> wampserver3.4.0_x64.exe
-> oui
-> langue -> francais
-> ok
-> cocher -> je comprends et j_accepte les termes du contrat de licence
-> suivant
-> suivant
-> dossier d_installation -> c:\wamp64
-> suivant
-> autre navigateur -> non
-> autre editeur de texte -> non
-> suivant
-> terminer
...
# demarre wampserver
...
-> windows
-> wampserver64
-> oui
...
# verifie wampserver
...
-> windows
-> system-tray
-> wampserver
-> icone-couleur-verte
...
# teste wampserver
...
-> http://localhost/
...
-> wampserver
-> apache-2.4
-> mysql-5-8-9
-> mariadb-10-11
-> php-5-7-8
...
# affiche phpinfo
...
-> http://localhost/
...
-> wampserver
-> phpinfo()
...
# verifie xdebug
...
-> http://localhost/
...
-> wampserver
-> xdebug_info()
...
#------------------------------------------------
### creer une page html
#------------------------------------------------
...
# cree une page html
...
-> "readydev\index.html"
...
<< _EOF_
<!DOCTYPE html>
<html>
    <head>
        <title>ReadyDEV</title>
    </head>
    <body>
        <h1>Bonjour tout le monde.</h1>
    </body>
</html>
_EOF_
...
# affiche la page html
...
-> file:///C:/rdvrepo/app/readydev/index.html
...
#------------------------------------------------
### configurer le serveur apache
#------------------------------------------------
...
# active le chargement des machines virtuelles
...
-> "C:\wamp64\bin\apache\apache2.4.65\conf\httpd.conf"
...
LoadModule vhost_alias_module modules/mod_vhost_alias.so
...
# active la configuration des machines virtuelles
...
-> "C:\wamp64\bin\apache\apache2.4.65\conf\httpd.conf"
...
Include conf/extra/httpd-vhosts.conf
...
# configure le serveur (par defaut) sur le port (80)
...
-> "C:\wamp64\bin\apache\apache2.4.65\conf\extra\httpd-vhosts.conf"
...
<< _EOF_
<VirtualHost _default_:80>
    ServerName localhost
    ServerAlias localhost
    DocumentRoot "${INSTALL_DIR}/www"
    <Directory "${INSTALL_DIR}/www/">
        Options +Indexes +Includes +FollowSymLinks +MultiViews
        AllowOverride All
        Require local
    </Directory>
</VirtualHost>
_EOF_
...
# configure le serveur (readydev) sur le port (9900)
...
-> "C:\wamp64\bin\apache\apache2.4.65\conf\extra\httpd-vhosts.conf"
...
<< _EOF_
<VirtualHost *:9900>
    ServerName localhost
    ServerAlias localhost
    DocumentRoot "C:/rdvrepo/app/readydev"
    ErrorLog "C:/rdvrepo/app/readydev/logs/error.log"
    CustomLog "C:/rdvrepo/app/readydev/logs/access.log" combined

    <Directory "C:/rdvrepo/app/readydev/">
        Options +Indexes +Includes +FollowSymLinks +MultiViews
        AllowOverride All
        Require local
    </Directory>
</VirtualHost>
_EOF_
...
# configure le port (99000)
...
-> "C:\wamp64\bin\apache\apache2.4.65\conf\httpd.conf"
...
Listen 0.0.0.0:9900
Listen [::0]:9900
...
# redemarre les services wampserver
...
-> windows
-> system-tray
-> wampserver -> clic-gauche
-> redemarrer les services
...
-> wampserver -> passe aux couleurs {rouge-orange-vert}
...
# teste le serveur
...
-> http://localhost:9900/
...
#------------------------------------------------
### creer une page php
#------------------------------------------------
...
# cree une page html
...
-> "readydev\index.php"
...
<< _EOF_
<!DOCTYPE html>
<html>
    <head>
        <title>ReadyDEV</title>
    </head>
    <body>
        <h1>Bonjour tout le monde.</h1>
    </body>
</html>
_EOF_
...
# affiche la page php
...
-> http://localhost:9900/
...
#------------------------------------------------
### configurer php sous vscode
#------------------------------------------------
...
# installe l'extension php-intelephense
...
-> extensions
-> php-intelephense
-> install
...
# installe l'extension prettier-code-formatter
...
-> extensions
-> prettier-code-formatter
-> install
...
# ouvre le fichier settings.json
...
-> vscode
-> show and run commands
-> settings.json
-> preferences: open workspace settings {json}
...
# configure l'extension prettier-code-formatter
...
-> ".vscode\settings.json"
...
<< _EOF_
{
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "[php]": {
        "editor.defaultFormatter": "bmewburn.vscode-intelephense-client"
    }
}
_EOF_
...
#------------------------------------------------
### creer une classe php
#------------------------------------------------
...
# cree la page index
...
-> "readydev\index.php"
...
<< _EOF_
<?php

declare(strict_types=1);

require "./autoload.php";

$mainPage = new app\view\Main();
$mainPage->run();
_EOF_
...
# cree la classe main
...
-> "readydev\src\app\view\Main.php"
...
<< _EOF_
<?php

declare(strict_types=1);

namespace app\view;

class Main
{
    public function __construct() {}

    public function run()
    {
        $outputText = "";
        $outputText .= sprintf("<!DOCTYPE html>\n");
        $outputText .= sprintf("<html>\n");
        $outputText .= sprintf("<head>\n");
        $outputText .= sprintf("<title>ReadyDEV</title>\n");
        $outputText .= sprintf("</head>\n");
        $outputText .= sprintf("<body>\n");
        $outputText .= sprintf("<h1>Bonjour tout le monde.</h1>\n");
        $outputText .= sprintf("</body>\n");
        $outputText .= sprintf("</html>\n");
        echo $outputText;
    }
}
_EOF_
...
# cree le fichier autoload
...
-> "readydev\autoload.php"
...
<< _EOF_
<?php
<?php
session_start();

const SRC_DIR = "src/";

function autoload_register(string $p_in_className)
{
    $filename = __DIR__ . DIRECTORY_SEPARATOR . SRC_DIR . $p_in_className . ".php";
    $filename = str_replace("\\", "/", $filename);

    if (is_readable($filename)) {
        require $filename;
    }
}

if (version_compare(PHP_VERSION, "5.1.2", ">=")) {
    if (version_compare(PHP_VERSION, "5.3.0", ">=")) {
        spl_autoload_register("autoload_register", true, true);
    } else {
        spl_autoload_register("autoload_register");
    }
} else {
    function spl_autoload_register(string $p_in_className)
    {
        require autoload_register($p_in_className);
    }
}
_EOF_
...
# affiche la page php
...
-> http://localhost:9900/
...
#------------------------------------------------
### installer php-composer
#------------------------------------------------
...
# telecharge php-composer
...
-> https://getcomposer.org/
...
-> download
-> windows installer
-> composer-setup.exe
...
# installe php-composer
...
-> composer-setup.exe
-> install for all users {recommanded}
-> next
-> browse
-> "C:\wamp64\bin\php\php8.3.28\php.exe"
-> cocher -> add this php to your path
-> next
-> next
...
<< _EOF_
PHP version 8.3.28
      C:\wamp64\bin\php\php8.3.28\php.exe

Proxy: none

Add to System path:
      C:\wamp64\bin\php\php8.3.28

Remove from User [tiaka] path:
      C:\Users\tiaka\scoop\shims
_EOF_
...
-> install
-> next
-> finish
...
#------------------------------------------------
### installer php-unit sous php-composer
#------------------------------------------------
...
# recherche le package php-unit
...
-> https://getcomposer.org/
...
-> browse packages
-> search packages -> phpunit
-> phpunit/phpunit
...
# installe le package php-unit
...
composer require --dev phpunit/phpunit
...
# affiche les versions php compatibles avec ph-punit-test
...
-> https://phpunit.de/supported-versions.html
...
+------------+------------------------------+-----------------------+-----------------------+------------------+
|Major       | Version	PHP Compatibility	| Initial Release	    | End of Bugfix Support	| End of Life      |
+------------+------------------------------+-----------------------+-----------------------+------------------+
| PHPUnit 13 | >= PHP 8.4	                | February 6, 2026	    | February 4, 2028	    | To be determined |
| PHPUnit 12 | >= PHP 8.3	                | February 7, 2025	    | February 5, 2027	    | To be determined |
| PHPUnit 11 | >= PHP 8.2	                | February 2, 2024	    |February 6, 2026	    | To be determined |
+------------+------------------------------+-----------------------+-----------------------+------------------+
...
# desinstalle scoop en cas de probleme
...
scoop uninstall scoop
...
# met a jour le package php-unit
...
-> "readydev\composer.json"
...
{
    "require-dev": {
        "phpunit/phpunit": "^12"
    }
}
...
composer update
...
#------------------------------------------------
### afficher le tutoriel sur php-unit
#------------------------------------------------
...
# affiche le tutoriel
...
-> https://phpunit.de/index.html
...
-> get started
...
# affiche la documentation sur composer
...
-> https://phpunit.de/index.html
...
-> documentation
-> php-unit-12.5
-> installation
-> installing php-unit
-> composer
...
# installe php-unit
...
composer require --dev phpunit/phpunit
...
# cree l'arborescence de dossiers
...
├── composer.json
├── composer.lock
├── public
├── src
├── tests
└── vendor
...
# affiche la version php-unit
...
.\./vendor/bin/phpunit --version
...
PHPUnit 10.0.0 by Sebastian Bergmann and contributors.
...
# verifie les versions mineures
...
composer outdated --minor-only
...
<< _EOF_
Legend:
! patch or minor release available - update recommended
~ major release available - update possible

Direct dependencies required in composer.json:
phpunit/phpunit 9.6.0 ! 9.6.3 The PHP Unit Testing framework.
_EOF_
...
# met a jour php-unit
...
composer update
...
# affiche les versions mineures et majeures
...
<< _EOF_
composer outdated
Legend:
! patch or minor release available - update recommended
~ major release available - update possible

Direct dependencies required in composer.json:
phpunit/phpunit                    9.6.3  ~ 10.0.7 The PHP Unit Testing framework.
_EOF_
...
# met a jour php-unit a la version majeure
...
-> composer.json
...
{
    "require-dev": {
        "phpunit/phpunit": "^10.0"
    }
}
...
composer update
...
# affiche la documentation sur les tests
...
-> https://phpunit.de/index.html
...
-> documentation
-> php-unit-12.5
-> redaction de tests pour php-unit
...
#------------------------------------------------
### creer un controleur php
#------------------------------------------------
...
# cree le controleur php
...
-> "readydev\src\app\controller\Main.php"
...
<< _EOF_
<?php

declare(strict_types=1);

namespace app\controller;

class Main
{
    public function __construct() {}

    public function getPageTitle(): string
    {
        return "ReadyDEV";
    }

    public function getBodyText(): string
    {
        return "<h1>Bonjour tout le monde.</h1>";
    }
}
_EOF_
...
# modifie la vue php
...
-> "readydev\src\app\view\Main.php"
...
<< _EOF_
<?php

declare(strict_types=1);

namespace app\view;

class Main
{
    private string $pageTitle;
    private string $bodyText;

    public function __construct()
    {
        $controller = new \app\controller\Main();
        $this->pageTitle = $controller->getPageTitle();
        $this->bodyText = $controller->getBodyText();
    }

    public function run()
    {
        $outputText = "";
        $outputText .= sprintf("<!DOCTYPE html>\n");
        $outputText .= sprintf("<html>\n");
        $outputText .= sprintf("<head>\n");
        $outputText .= sprintf("<title>%s</title>\n", $this->pageTitle);
        $outputText .= sprintf("</head>\n");
        $outputText .= sprintf("<body>\n");
        $outputText .= sprintf("%s\n", $this->bodyText);
        $outputText .= sprintf("</body>\n");
        $outputText .= sprintf("</html>\n");
        echo $outputText;
    }
}
_EOF_
...
# affiche la page php
...
-> http://localhost:9900/
...
#------------------------------------------------
### creer un test unitaire avec php-unit
#------------------------------------------------
...
# configure les sources php (src) sous php-composer
...
-> "readydev\composer.json"
...
{
    "autoload": {
        "classmap": [
            "src/"
        ]
    },
    "require-dev": {
        "phpunit/phpunit": "^12"
    }
}
...
composer update
...
# cree le test unitaire sous php-unit
...
-> "readydev\tests\src\app\controller\MainTest.php"
...
<< _EOF_
<?php

declare(strict_types=1);

use PHPUnit\Framework\TestCase;

final class MainTest extends TestCase
{
    public function test_Page_Accueil(): void
    {
        $controller = new \app\controller\Main();
        $this->assertSame($controller->getPageTitle(), "ReadyDEV");
        $this->assertSame($controller->getBodyText(), "<h1>Bonjour tout le monde.</h1>");
    }
}
_EOF_
...
# demarre tous les tests unitaires (sans coloration)
...
./vendor/bin/phpunit tests
...
# demarre tous les tests unitaires (avec coloration)
...
./vendor/bin/phpunit --colors tests
...
# demarre un test unitaire (sans coloration)
...
./vendor/bin/phpunit tests\src\app\controller\MainTest.php
...
# demarre un test unitaire (avec coloration)
...
./vendor/bin/phpunit --color tests\src\app\controller\MainTest.php
...
# affiche les resultats d'un test reussi (ok)
...
<< _EOF_
PHPUnit 12.5.24 by Sebastian Bergmann and contributors.

Runtime:       PHP 8.3.28

.                                                                   1 / 1 (100%)

Time: 00:00.003, Memory: 16.00 MB

OK (1 test, 2 assertions)
_EOF_
...
# affiche les resultats d'un test echoue (ko)
...
<< _EOF_
PHPUnit 12.5.24 by Sebastian Bergmann and contributors.

Runtime:       PHP 8.3.28

F                                                                   1 / 1 (100%)

Time: 00:00.008, Memory: 16.00 MB

There was 1 failure:

1) MainTest::test_Page_Accueil
Failed asserting that two strings are identical.
--- Expected
+++ Actual
@@ @@
-'ReadyDev'
+'ReadyDEV'

C:\rdvrepo\app\readydev\tests\src\app\controller\MainTest.php:12

FAILURES!
Tests: 1, Assertions: 1, Failures: 1.
_EOF_
...
#------------------------------------------------
### executer un test unitaire php-unit sous vscode
#------------------------------------------------
...
# installe l'extension php-unit sous vscode
...
-> extensions
-> php-debug
-> install
...
# execute tous les tests unitaire sous vscode
...
-> "readydev\tests\src\app\controller\MainTest.php"
...
-> "final class MainTest extends TestCase"
-> run tests
...
# execute un test unitaire sous vscode
...
-> "readydev\tests\src\app\controller\MainTest.php"
...
-> "final class MainTest extends TestCase"
-> "public function test_Page_Accueil(): void"
-> run test
...
#------------------------------------------------
### configurer php-xdebug sous vscode
#------------------------------------------------
...
# affiche les informations php-info
...
-> http://localhost/
...
-> phpinfo()
-> ctrl + f -> pour rechercher -> xdebug
-> Xdebug v3.4.7, Copyright (c) 2002-2025, by Derick Rethans
...
# affiche les informations xdebug-info
...
-> http://localhost/
...
-> xdebug_info()
...
# verifie l'installation de xdebug
...
-> "C:\wamp64\bin\php\php8.3.28\zend_ext"
-> "php_xdebug-3.4.7-8.3-ts-vs16-x86_64.dll"
...
# telecharge xdebug si non present
...
-> https://xdebug.org/
...
-> install
-> {windows}, with help from a wizard.
-> follow {these instructions} to install xdebug manually.
...
php --version
...
<< _EOF_
PHP 8.3.28 (cli) (built: Nov 18 2025 23:45:22) (ZTS Visual C++ 2019 x64)
Copyright (c) The PHP Group
Zend Engine v4.3.28, Copyright (c) Zend Technologies
    with Zend OPcache v8.3.28, Copyright (c), by Zend Technologies
    with Xdebug v3.4.7, Copyright (c) 2002-2025, by Derick Rethans
_EOF_
...
php -i > phpinfo.txt
...
-> copier le contenu du fichier {phpinfo.txt}
-> coller dans l_assistant xdebug {Installation Wizard}
...
-> analyze my phpinfo() output
...
-> instructions
-> download {php_xdebug-3.5.1-8.3-ts-vs16-x86_64.dll}
...
del /q /s phpinfo.txt
...
# configure xdebug sous php-apache
...
-> "C:\wamp64\bin\apache\apache2.4.65\bin\php.ini"
-> "C:\wamp64\bin\php\php8.3.28\phpForApache.ini"
...
<< _EOF_
[xdebug]
zend_extension="c:/wamp64/bin/php/php8.3.28/zend_ext/php_xdebug-3.4.7-8.3-ts-vs16-x86_64.dll"
xdebug.mode=debug,develop
xdebug.output_dir="c:/wamp64/tmp"
xdebug.show_local_vars=0
xdebug.log="c:/wamp64/logs/xdebug.log"
xdebug.log_level=7
xdebug.profiler_output_name=trace.%H.%t.%p.cgrind
xdebug.use_compression=false
xdebug.start_with_request=yes
_EOF_
...
# verifie xdebug sous wampserver
...
-> windows
-> system-tray
-> wampserver -> clic-gauche
-> php
-> extensions php
-> xdebug-3.4.7
...
# redemarre les services sous wampserver
...
-> windows
-> system-tray
-> wampserver -> clic-gauche
-> redemarrer les services
...
# installe l'extension php-debug sous vscode
...
-> extensions
-> php-debug
-> install
...
# cree un lanceur sous vscode
...
-> run and debug
-> create a launch.json file
-> php
-> php: listen for xdebug
...
# configure le lanceur sous vscode
...
-> ".vscode\launch.json"
...
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for Xdebug",
            "type": "php",
            "request": "launch",
            "port": 9003,
        }
    ]
}
...
# place un point d'arret a la ligne (7) du fichier (index.php)
...
-> "readydev\index.php"
...
<< _EOF_
<?php

declare(strict_types=1);

require "./autoload.php";

$mainPage = new app\view\Main();
$mainPage->run();
_EOF_
...
# demarre le debogueur
...
-> run and debug
-> run: launch for xdebug
...
# affiche la page php
...
-> http://localhost:9900/
...
#------------------------------------------------
### configurer php-devsense sous vscode
#------------------------------------------------
...
# installe l'extension php-devsense
...
-> extensions
-> php-devsense
-> install
...
-> trust publisher and install
...
#------------------------------------------------
### configurer php-unit-pest-test-explorer sous vscode
#------------------------------------------------
...
# installe l'extension php-unit and pest-test-explorer
...
-> extensions
-> php-unit and pest-test-explorer
-> install
...
-> trust publisher and install
...
# configure php sous php-composer
...
-> "readydev\composer.json"
...
<< _EOF_
{
    "autoload": {
        "classmap": [
            "src/"
        ]
    },
    "require-dev": {
        "phpunit/phpunit": "^12"
    },
    "require": {
        "php": ">=8.3.28"
    }
}
_EOF_
...
# met a jour les dependances php-composer
...
composer update
...
#------------------------------------------------
### creer un script javascript
#------------------------------------------------
...
# cree le script javascript
...
-> "public\js\scripts.js"
...
<< _EOF_
"use strict";

function runMain() {
    const main = new app.view.Main();
    main.run();
}

runMain();
_EOF_
...
#------------------------------------------------
### creer une classe javascript dans un espace de noms
#------------------------------------------------
...
# creer la classe javascript
...
-> "public\js\app\view\Main.js"
...
<< _EOF_
"use strict";

var app = app || {};
app.view = app.view || {};

app.view.Main = class Main {
    constructor() {
        console.log("Main constructor...");
    }

    run() {
        console.log("Exécution de la méthode Main.run()...");
    }
}
_EOF_
...
# appelle le script javascript
...
-> "readydev\src\app\view\Main.php"
...
<< _EOF_
private function runScriptJs(string &$p_out_text): void {
    $p_out_text .= \sprintf("<script src='/public/js/app/view/Main.js'></script>\n");
    $p_out_text .= \sprintf("<script src='/public/js/scripts.js'></script>\n");
}
_EOF_
...
# affiche la page php
...
-> http://localhost:9900/
...
# ouvre la console de debogage sous google-chrome
...
-> Ctrl + Shift + I
...
# actualise la page php
...
-> Ctrl + F5
...
<< _EOF_
Main constructor...
Exécution de la méthode Main.run()...
_EOF_
...
#------------------------------------------------
### creer une carte mentale sous xmind
#------------------------------------------------
...
# cree une carte mentale
...
-> "doc\res\schematic-qt-cpp\schematic-qt.xmind"
...
-> nouvelle carte
-> carte mentale
-> creer
...
#------------------------------------------------
### configurer le mode rewrite sous wampserver
#------------------------------------------------
...
# active le module rewrite sous wampserver
...
-> windows
-> system-tray
-> wampserver -> clic-gauche
-> apache
-> modules apache
-> cocher -> rewrite_module
...
# edite les regles de redirection dans le fichier .htaccess
...
-> "readydev\.htaccess"
...
<< _EOF_
DirectoryIndex index.php

<IfModule mod_rewrite.c>
RewriteEngine on
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^(.*)$ /?page-id=$1 [L,QSA]
</IfModule>
_EOF_
...
# affiche la page php
...
-> http://localhost:9900/home/presentation
...
#------------------------------------------------
### creer un test unitaire javascript sous qunit
#------------------------------------------------
...
# cree la page d'entree des tests
...
-> "public\tests\index.php"
...
<< _EOF_
<!DOCTYPE html>
<html lang='fr'>
    <head>
        <title>ReadyDEV | QUnit Tests</title>
        <meta charset='UTF-8'/>
        <link rel='shortcut icon' type='image/png' href='/public/data/img/logo.png'/>
        <link rel='stylesheet' href='https://code.jquery.com/qunit/qunit-2.25.0.css'/>
    </head>
    <body>
        <div id='qunit'></div>
        <div id='qunit-fixture'></div>
        <script src='https://code.jquery.com/qunit/qunit-2.25.0.js'></script>
        <script src='/public/tests/js/app/view/TestMain.js'></script>
    </body>
</html>
_EOF_
...
# cree le test unitaire javascript
...
-> "public\tests\js\app\view\TestMain.js"
...
<< _EOF_
"use strict";

QUnit.module("TestMain");

QUnit.test('Test_Lecture_Ecriture', function(assert) {
    assert.equal(3, 3);
});
...
"use strict";

QUnit.module('TestMain', function() {
    QUnit.test('Test_Lecture_Ecriture', function(assert) {
        assert.equal(3, 3);
    });
});
_EOF_
...
# affiche la page de test unitaire
...
-> http://localhost:9900/public/tests/
...
#------------------------------------------------
### creer une documentation php sous phpdoc
#------------------------------------------------
...
# ajoute des commentaires a une classe
...
-> "readydev\src\app\view\Main.php"
...
<< _EOF_
/**
 * Cree la page principale du site.
 * Permet de creer la page principale du site.
 * @author Gerard KESSE <team@readydev.com>
 */
class Main
{
    /**
     * Cree le corps de la page.
     * Permet de creer le corps de la page.
     * @param string $p_out_text Indique le texte de sortie.
     * @return void
     */
    private function runBody(string &$p_out_text): void
    {
        $this->runHeader($p_out_text);
        $this->runView($p_out_text);
        $this->runPage($p_out_text);
    }
}
_EOF_
...
# installe php-documentator
...
composer require --dev phpdocumentor/phpdocumentor
...
# genere la documentation php
...
./vendor/bin/phpdoc -d src -t public/docs
...
# affiche la documentation php
...
-> http://localhost:9900/public/docs
...
#------------------------------------------------
### reinitialiser l'authentification 2fa sous github
#------------------------------------------------
...
# se connecte a votre compte github
...
-> https://github.com/
...
-> sign in
...
-> username or email address -> gkesse
-> password -> git***
-> sign in
...
# cree une demande de recuperation d'authentification 2fa
...
-> two-factor authentication
-> more options
-> 2fa recovery code
-> begin account or email recovery
-> i understand, get started
-> send one-time password
...
-> recuperer le code dans la boite email du compote
...
-> one-time password -> 660339
-> verify email address
...
-> verify with this device
...
-> attendre la reponse dans {2-3} jours ouvres
...
-> return to github
...
-> aller dans la boite email du compte
...
<< _EOF_
Vous avez terminé votre demande de désactivation de l'authentification à deux facteurs
pour le compte @gkesse.

L'assistance GitHub examinera cette demande sous 1 à 3 jours ouvrés.

Les demandes supplémentaires soumises pendant cette période ne seront pas traitées
par l'assistance GitHub.

Si vous retrouvez les codes de récupération de votre compte entre-temps,
vous pouvez vous connecter immédiatement à GitHub
et mettre à jour vos paramètres d'authentification à deux facteurs.

Pour annuler l'examen, cliquez sur ce lien : Annuler la récupération du verrouillage
de compte suite à l'activation de l'authentification à deux facteurs.
_EOF_
...
# demarre la reinitialisation de l'authentification 2fa sous email
...
<< _EOF_
Votre demande de désactivation de l'authentification à deux facteurs pour le compte @gkesse
a été approuvée par l'équipe GitHub.

Pour continuer, cliquez sur ce lien : {Récupération complète du compte}.
Ce lien sera valide pendant 72 heures.

Si vous souhaitez annuler cette demande, cliquez sur ce lien : {Annuler la demande de récupération du compte}.

Une fois l'accès à votre compte rétabli,
veuillez suivre nos instructions pour réactiver l'authentification à deux facteurs,

sécuriser à nouveau votre compte et vous assurer qu'il reste protégé.
_EOF_
...
-> {Complete account recovery}
...
-> continue
...
# se connecte a votre compte github
...
-> username or email address -> gkesse
-> password -> git***
-> sign in
...
# active l'authentification 2fa
...
-> enable 2fa now
...
-> scanner le qr-code avec l_application microsoft authenticator
-> saisir the 6-digit code from the authenticator -> 660339
...
-> download
...
-> i have saved my recovery codes
...
-> return to your work
...
#------------------------------------------------
### configurer passkeys sous github
#------------------------------------------------
...
# configure passkeys
...
-> menu-photo
-> settings
-> password and authentication
...
-> sign in method
-> passkeys
-> add passkey
...
-> add passkey
...
-> creer
...
-> name of your password manager or account provider -> gkesse
-> done
...
#------------------------------------------------
### configurer sms-text message sous github
#------------------------------------------------
...
# configure sms-text message
...
-> menu-photo
-> settings
-> password and authentication
...
-> two-factor authentication
-> sms-text message
-> add
...
-> verify
...
-> country or region code -> france +33
-> phone number -> 06********
-> send authentication code
...
-> verify the code sent to your phone -> 660339
-> save
...
#------------------------------------------------
### creer un depot git sous github
#------------------------------------------------
...
# cree un depot git
...
-> menu-photo
-> settings
-> repositories
...
-> new
-> repository name -> gkesse/readydev-wampserver-php
-> description ->
...
<< _EOF_
Cree un site internet en PHP pour la publication de cours et tutoriels
adaptés aux sciences de l'ingénieur.
_EOF_
...
-> choose visibility -> public
-> add README -> on
-> add .gitignore -> c++
-> add license -> mit licence
...
-> create repository
...
# copie l'url https du depot git
...
-> code
-> local
-> https
-> https://github.com/gkesse/readydev-wampserver-php.git
-> copier
...
# clone le depot git
...
git clone https://github.com/gkesse/readydev-wampserver-php.git
...
<< _EOF_
Enumerating objects: 13, done.
Counting objects: 100% (13/13), done.
Delta compression using up to 16 threads
Compressing objects: 100% (7/7), done.
Writing objects: 100% (8/8), 195.50 KiB | 17.77 MiB/s, done.
Total 8 (delta 3), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (3/3), completed with 3 local objects.
To https://github.com/gkesse/rdvdoc.git
   568e963..7bf3372  main -> main
_EOF_
...
# modifie le chemin du serveur sous wampserver
...
-> "file:///C:/wamp64/bin/apache/apache2.4.65/conf/extra/httpd-vhosts.conf"
...
<< _EOF_
<VirtualHost *:9900>
    ServerName localhost
    ServerAlias localhost
    DocumentRoot C:/rdvrepo/app/readydev-wampserver-php
    ErrorLog C:/rdvrepo/app/readydev-wampserver-php/logs/error.log
    CustomLog C:/rdvrepo/app/readydev-wampserver-php/logs/access.log combined

    <Directory "C:/rdvrepo/app/readydev-wampserver-php/">
        Options +Indexes +Includes +FollowSymLinks +MultiViews
        AllowOverride All
        Require local
    </Directory>
</VirtualHost>
_EOF_
...
# redemarre les services wampserver
...
-> windows
-> system-tray
-> wampserver -> clic-gauche
-> redemarrer les services
...
#------------------------------------------------
### end
#------------------------------------------------
