#------------------------------------------------
### references {Sorting-and-Searching-on-Qt-Table-Widget}
#------------------------------------------------
### https://github.com/qtswdev/Sorting-and-Searching-on-Qt-Table-Widget-
#------------------------------------------------
### main
#------------------------------------------------
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    # cree la fenetre principale
    MainWindow w;
    w.show();

    return a.exec();
}
#------------------------------------------------
### CustomTableWidgetItem -> QTableWidgetItem
#------------------------------------------------
bool operator< (const QTableWidgetItem &other) const
{
    quint64 ulnCurrent=0;
    # recupere le texte
    QString strCurrent=this->text();

    # recupere la taille du fichier de l'element courant
    # verifie que le texte contient kilo bytes
    if(strCurrent.contains("KB"))// 1 KB
    {
        # recupere la longueur du texte
        # retranche (2) a la longueur du texte
        # supprime les 2 derniers caracteres
        strCurrent.remove((strCurrent.length()-2),2);
        # supprime les espaces
        strCurrent.replace(" ","");
        # convertit le resultat en entier
        # multiplie le resultat par 1024
        # recupere la taille du fichier en octets
        ulnCurrent=strCurrent.toUInt()*1024;

    }
    # verifie que le texte contient mega bytes
    else if(strCurrent.contains("MB"))
    {
        # recupere la longueur du texte
        # retranche (2) a la longueur du texte
        # supprime les 2 derniers caracteres
        strCurrent.remove((strCurrent.length()-2),2);
        # supprime les espaces
        strCurrent.replace(" ","");
        # convertit le resultat en entier
        # multiplie le resultat par 1024 * 1024
        # recupere la taille du fichier en octets
        ulnCurrent=strCurrent.toUInt()*1024*1024;

    }
    # verifie que le texte contient giga bytes
    else if(strCurrent.contains("GB"))
    {
        # recupere la longueur du texte
        # retranche (2) a la longueur du texte
        # supprime les 2 derniers caracteres
        strCurrent.remove((strCurrent.length()-2),2);
        # supprime les espaces
        strCurrent.replace(" ","");
        # convertit le resultat en entier
        # multiplie le resultat par 1024 * 1024 * 1024
        # recupere la taille du fichier en octets
        ulnCurrent=strCurrent.toUInt()*1024*1024*1024;
    }

    quint64 ulnOther=0;
    QString strOther=other.text();

    # recupere la taille du fichier de l'autre l'element
    if(strOther.contains("KB"))
    {
        strOther.remove((strOther.length()-2),2);
        strOther.replace(" ","");
        ulnOther=strOther.toUInt()*1024;
    }
    else if(strOther.contains("MB"))
    {
        strOther.remove((strOther.length()-2),2);
        strOther.replace(" ","");
        ulnOther=strOther.toUInt()*1024*1024;
    }
    else if(strOther.contains("GB"))
    {
        strOther.remove((strOther.length()-2),2);
        strOther.replace(" ","");
        ulnOther=strOther.toUInt()*1024*1024*1024;
    }

    // qDebug() <<< ulnOther <<< strOther << "  " <<< ulnCurrent <<< strCurrent;

    # verifie que la taille du fichier courant
    # est inferieur a la taille du fichier entrant
    # retourne le resultat de la comparaison
    return (ulnCurrent < ulnOther);/*11<10*/
}
#------------------------------------------------
### MainWindow -> QMainWindow
#------------------------------------------------
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    FillListWidget("C:\\Qt\\Qt5.7.1\\5.7\\mingw53_32\\bin");

    showMaximized();

}
#------------------------------------------------
void MainWindow::FillListWidget(QString driveChar)
{
    QFileIconProvider ipRoot;
    QIcon iconRoot;
    QFileInfo fileInfo;

    # cree l'icone drive
    iconRoot = QIcon(ipRoot.icon(QFileIconProvider::Drive));

    fileInfo = driveChar;
    QListWidgetItem * itemAdd = itemToReturn(iconRoot,fileInfo.filePath());
    # ajoute un element dans la liste
    ui->m_lstwgtFolders->addItem(itemAdd);
}
#------------------------------------------------
QListWidgetItem* MainWindow::itemToReturn(QIcon icon,QString path)
{
    # cree un element de la liste
    QListWidgetItem *item = new QListWidgetItem(icon,path);
    return item;
}
#------------------------------------------------
void MainWindow::on_m_lstwgtFolders_itemClicked(QListWidgetItem *item)
{
    # affiche le texte
    // qDebug() <<< item->text();

    # recupere le chemin
    QString path=item->text();
    QString fileName;
    QString text;

    # initialise le repertoire courant
    currentDir = QDir(path);
    QStringList files;
    # recupere la liste des fichiers de maniere recursive
    findRecursion(path, fileName.isEmpty() ? QStringLiteral("*") : fileName, &files);
    if (!text.isEmpty())
        files = findFiles(files, text);
    showFiles(files);
}
#------------------------------------------------
void MainWindow::findRecursion(const QString &path, const QString &pattern, QStringList *result)
{
    QDir currentDir(path);
    const QString prefix = path + QLatin1Char('/');
    # recupere la liste des fichiers
    foreach (const QString &match, currentDir.entryList(QStringList(pattern), QDir::Files | QDir::NoSymLinks))
        result->append(prefix + match);
    # recupere liste des sous repertoires
    foreach (const QString &dir, currentDir.entryList(QDir::Dirs | QDir::NoSymLinks | QDir::NoDotAndDotDot))
        findRecursion(prefix + dir, pattern, result);
}
#------------------------------------------------
void MainWindow::showFiles(const QStringList &files)
{
    # nettoye la liste
    ui->m_tblwgtFiolderFiles->clearContents();
    # initialise le nombre de ligne
    ui->m_tblwgtFiolderFiles->setRowCount(0);

    # parcourt la liste des fichiers
    for (int i = 0; i < files.size(); ++i)
    {
        # recupere le nom du fichier
        const QString &fileName = files.at(i);
        # recupere le chemin approprie selon le systeme d'exploitation
        const QString toolTip = QDir::toNativeSeparators(fileName);
        # recupere le chemin relatif du fichier
        const QString relativePath = QDir::toNativeSeparators(currentDir.relativeFilePath(fileName));
        # recupere la taille du fichier en octets
        const qint64 size = QFileInfo(fileName).size();

        # recupere la date de creation du fichier
        const QString strDate= QFileInfo(fileName).birthTime().toString("ddMMMyyyy hh:mm:ss.zzz");
        const QString strDate= QFileInfo(fileName).created().toString("ddMMMyyyy hh:mm:ss.zzz");
        # recupere le chemin absolu du fichier
        const QString strPath= QFileInfo(fileName).absoluteFilePath();

        # cree un element de la liste a partir du chemin relatif
        QTableWidgetItem *fileNameItem = new QTableWidgetItem(relativePath);
        # initialise l'infobulle de l'element
        fileNameItem->setToolTip(toolTip);
        # indique que l'element est editable
        fileNameItem->setFlags(fileNameItem->flags() ^ Qt::ItemIsEditable);
        # convertir la taille de l'element en kilo bytes
        QString strSize=tr("%1 KB")
                .arg(int((size + 1023) / 1024));

        QMimeDatabase mimeDatabase;
        # recupere le mimetype du fichier
        const QMimeType mimeType = mimeDatabase.mimeTypeForFile(fileName);
        const QString strType= mimeType.name();

        # cree un element de la liste a partir de la taille du fichier
        // QTableWidgetItem *sizeItem = new QTableWidgetItem(strSize);
        CustomTableWidgetItem *sizeItem = new CustomTableWidgetItem();
        # initialise le texte
        sizeItem->setText(strSize);
        # initialise l'infobulle
        sizeItem->setToolTip(toolTip);
        # aligne le texte a droite au centre
        sizeItem->setTextAlignment(Qt::AlignRight | Qt::AlignVCenter);
        # indique que l'element est editable
        sizeItem->setFlags(sizeItem->flags() ^ Qt::ItemIsEditable);

        # cree les elements de la liste
        QTableWidgetItem *Date = new QTableWidgetItem(strDate);
        QTableWidgetItem *Path = new QTableWidgetItem(strPath);
        QTableWidgetItem *Type = new QTableWidgetItem(strType);

        # affiche les informations
        // qDebug() <<< relativePath <<< strType <<< strSize <<< strDate <<< strPath ;

        # recupere le nombre de lignes
        int row = ui->m_tblwgtFiolderFiles->rowCount();
        # cree la ligne suivante
        ui->m_tblwgtFiolderFiles->insertRow(row);
        # ajoute les elements du tableau
        ui->m_tblwgtFiolderFiles->setItem(row, 0, fileNameItem);
        ui->m_tblwgtFiolderFiles->setItem(row, 1, Type);
        ui->m_tblwgtFiolderFiles->setItem(row, 2, sizeItem);
        ui->m_tblwgtFiolderFiles->setItem(row, 3, Date);
        ui->m_tblwgtFiolderFiles->setItem(row, 4, Path);

        # cree une boucle d'evenements
        # demarre un timer single shot pour quitter la boucle d'evenements
        # demarre une boucle d'evenements
        // QEventLoop loop;
        // QTimer::singleShot(10, &loop, SLOT(quit()));
        // loop.exec();
    }

    # initialise les colonnes du tableau
    ui->m_tblwgtFiolderFiles->setColumnWidth(0,500);
    ui->m_tblwgtFiolderFiles->setColumnWidth(1,300);
    ui->m_tblwgtFiolderFiles->setColumnWidth(2,200);
    ui->m_tblwgtFiolderFiles->setColumnWidth(3,200);
    ui->m_tblwgtFiolderFiles->setColumnWidth(4,500);

    # trie le modele selon la colonne (2)
    ui->m_tblwgtFiolderFiles->sortByColumn(2);
}
#------------------------------------------------
QStringList MainWindow::findFiles(const QStringList &files, const QString &text)
{
    QStringList foundFiles;

    # parcourt la liste des fichiers
    for (int i = 0; i < files.size(); ++i)
    {
        QCoreApplication::processEvents();

        # recupere le fichier
        const QString fileName = files.at(i);

        QFile file(fileName);
        # ouvre le fichier
        if (file.open(QIODevice::ReadOnly))
        {
            QString line;
            QTextStream in(&file);
            while (!in.atEnd())
            {
                # recupere la ligne
                line = in.readLine();
                # recherche le texte dans la ligne
                if (line.contains(text, Qt::CaseInsensitive)) {
                    # ajoute le fichier a la liste
                    foundFiles <<< files[i];
                    break;
                }
            }
        }
    }
    return foundFiles;
}
#------------------------------------------------
void MainWindow::on_m_pbSearch_clicked()
{
    # recupere le fichier a recherche
    QString strFilterText = ui->m_leFileSearch->text();
    # parcourt les lignes du tableau
    for( int nRowCount = 0; nRowCount < ui->m_tblwgtFiolderFiles->rowCount(); ++nRowCount )
    {
        bool bMatch = false;
        # recupere l'element a la colonne 0
        # recupere le chemin du fichier
        QTableWidgetItem *item =ui->m_tblwgtFiolderFiles->item( nRowCount, 0 );//row first column
        # verifie que la ligne contient le texte
        if( item->text().contains(strFilterText) )
        {
            bMatch = true;
        }
        # masque la ligne si fichier absent
        ui->m_tblwgtFiolderFiles->setRowHidden(nRowCount, !bMatch );
    }

    # recherche le fichier dans toutes les colonnes
    /*************************
    NOTE: searching in all columns
    *************************/
    //    QString strFilterText = ui->m_leFileSearch->text();
    //    for( int nRowCount = 0; nRowCount < ui->m_tblwgtFiolderFiles->rowCount(); ++nRowCount )
    //    {
    //        bool bMatch = false;
    //        for( int nColumnCount = 0; nColumnCount < ui->m_tblwgtFiolderFiles->columnCount(); ++nColumnCount )
    //        {
    //            QTableWidgetItem *item =ui->m_tblwgtFiolderFiles->item( nRowCount, nColumnCount );
    //            if( item->text().contains(strFilterText) )
    //            {
    //                bMatch = true;
    //                break;
    //            }
    //        }
    //        ui->m_tblwgtFiolderFiles->setRowHidden( nRowCount, !bMatch );
    //    }
}
#------------------------------------------------
Ui::MainWindow *ui;
#------------------------------------------------
### TableWidgetSortandSearch.pro
#------------------------------------------------
# liste les modules a utiliser
# utilise le module qt core
# utilise le module qt gui
QT       += core gui

# recupere la version majeure de qt
# verifie que la majeure de qt est superieure a 4
# utilise le module qt widgets
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# specifie le nom du fichier cible
TARGET = TableWidgetSortandSearch
# specifie le nom du modele
# genere un executable
TEMPLATE = app

# specifie tous les fichiers sources
SOURCES += main.cpp\
        mainwindow.cpp \
    customtablewidgetitem.cpp

# specifie tous les fichiers headers
HEADERS  += mainwindow.h \
    customtablewidgetitem.h

# specifie tous les fichiers utilisateurs
FORMS    += mainwindow.ui
#------------------------------------------------
### end
#------------------------------------------------
