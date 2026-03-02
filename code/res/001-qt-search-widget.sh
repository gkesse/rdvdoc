#------------------------------------------------
### references qt
#------------------------------------------------
### vscode
#------------------------------------------------
# installe l'extension {c/c++}
-> extensions
-> {c/c++:microsoft}
-> install

# installe l'extension {c/c++ extension pack}
-> extensions
-> {c/c++ extension pack:microsoft}
-> install

# installe l'extension {cmake}
-> extensions
-> {cmake:twxs}
-> install

# installe l'extension {cmake tools}
-> extensions
-> {cmake tools:microsoft}
-> install

# cree un projet c++
-> barre de recherche
-> show and run commands
-> cmake: quick start
-> enter a name for the new projet -> rdv-qt
-> c++: create a c++ projet
-> executable: create an executable
-> ok
-> debug

# deplace les fichiers dans le repertoire de projet
-> code/src/001-qt-search-widget/main.cpp
-> code/src/001-qt-search-widget/CMakeLists.txt

# configure le projet cmake
-> barre de recherche
-> show and run commands
-> cmake: configure
-> '${workspaceFolder}/code/src/001-qt-search-widget/CMakeLists.txt'
void MainWindow::initStyle()
{
    {
        QString styleSheet = R"_EOF_(
QListView
{
    alternate-background-color: #225522;
    background-color: #552222;
}
QListView::item:alternate
{
    alternate-background-color: #225522;
}
QListView {
    show-decoration-selected: 1; /* make the selection span the entire width of the view */
}

QListView::item:alternate {
    background: #f80;
}

QListView::item:selected {
    border: 1px solid #6a6ea9;
}

QListView::item:selected:!active {
    background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,
                                stop: 0 #ABAFE5, stop: 1 #8588B2);
}

QListView::item:selected:active {
    background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,
                                stop: 0 #6a6ea9, stop: 1 #888dd9);
}

QListView::item:hover {
    background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,
                                stop: 0 #FAFBFE, stop: 1 #DCDEF1);
}
        )_EOF_";
        m_listWidget->setStyleSheet(styleSheet);
    }
}

#------------------------------------------------
### end
#------------------------------------------------
