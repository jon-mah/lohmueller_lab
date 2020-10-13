/********************************************************************************
** Form generated from reading UI file 'QtSLiMWindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMWINDOW_H
#define UI_QTSLIMWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTableView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "QtSLiMChromosomeWidget.h"
#include "QtSLiMExtras.h"
#include "QtSLiMIndividualsWidget.h"
#include "QtSLiMScriptTextEdit.h"

QT_BEGIN_NAMESPACE

class Ui_QtSLiMWindow
{
public:
    QAction *actionNew;
    QAction *actionNew_nonWF;
    QAction *actionOpen;
    QAction *actionClose;
    QAction *actionSave;
    QAction *actionSaveAs;
    QAction *actionCut;
    QAction *actionCopy;
    QAction *actionPaste;
    QAction *actionUndo;
    QAction *actionRedo;
    QAction *actionDelete;
    QAction *actionSelectAll;
    QAction *actionShiftLeft;
    QAction *actionShiftRight;
    QAction *actionCommentUncomment;
    QAction *actionStep;
    QAction *actionPlay;
    QAction *actionProfile;
    QAction *actionRecycle;
    QAction *actionChangeWorkingDirectory;
    QAction *actionDumpPopulationState;
    QAction *actionCheckScript;
    QAction *actionPrettyprintScript;
    QAction *actionShowScriptHelp;
    QAction *actionShowVariableBrowser;
    QAction *actionShowEidosConsole;
    QAction *actionClearOutput;
    QAction *actionExecuteSelection;
    QAction *actionExecuteAll;
    QAction *actionQtSLiMHelp;
    QAction *actionSendFeedback;
    QAction *actionMailingList_slimannounce;
    QAction *actionMailingList_slimdiscuss;
    QAction *actionSLiMHomePage;
    QAction *actionSLiMExtras;
    QAction *actionAboutMesserLab;
    QAction *actionAboutBenHaller;
    QAction *actionAboutStickSoftware;
    QAction *actionAboutQtSLiM;
    QAction *actionQuitQtSLiM;
    QAction *actionFindRecipe;
    QAction *actionPreferences;
    QAction *actionFindShow;
    QAction *actionReplaceAndFind;
    QAction *actionFindNext;
    QAction *actionFindPrevious;
    QAction *actionUseSelectionForFind;
    QAction *actionJumpToSelection;
    QAction *actionRevertToSaved;
    QAction *actionOpenRecent;
    QAction *actionSLiMWorkshops;
    QAction *actionUseSelectionForReplace;
    QAction *actionJumpToLine;
    QAction *actionMinimize;
    QAction *actionZoom;
    QAction *actionReformatScript;
    QWidget *centralWidget;
    QVBoxLayout *verticalLayout;
    QVBoxLayout *overallTopLayout;
    QHBoxLayout *topLayout;
    QTableView *subpopTableView;
    QtSLiMIndividualsWidget *individualsWidget;
    QVBoxLayout *topRightLayout;
    QHBoxLayout *playControlsLayout;
    QtSLiMPushButton *playOneStepButton;
    QtSLiMPushButton *playButton;
    QtSLiMPushButton *profileButton;
    QtSLiMPushButton *recycleButton;
    QSlider *playSpeedSlider;
    QSpacerItem *playControlsSpacerFixed;
    QHBoxLayout *generationLayout;
    QSpacerItem *horizontalSpacer;
    QLabel *generationLabel;
    QtSLiMGenerationLineEdit *generationLineEdit;
    QSpacerItem *horizontalSpacer_2;
    QSpacerItem *playControlsSpacerExpanding;
    QHBoxLayout *chromosomeLayout;
    QVBoxLayout *chromosomeWidgetLayout;
    QtSLiMChromosomeWidget *chromosomeOverview;
    QtSLiMChromosomeWidget *chromosomeZoomed;
    QVBoxLayout *chromosomeRightLayout;
    QtSLiMPushButton *toggleDrawerButton;
    QSpacerItem *verticalSpacer;
    QFrame *chromosomeButtonsFrame;
    QGridLayout *gridLayout;
    QtSLiMPushButton *showChromosomeMapsButton;
    QtSLiMPushButton *showGenomicElementsButton;
    QtSLiMPushButton *showMutationsButton;
    QtSLiMPushButton *showFixedSubstitutionsButton;
    QFrame *line;
    QHBoxLayout *overallBottomLayout;
    QVBoxLayout *scriptLayout;
    QHBoxLayout *scriptHeaderLayout;
    QtSLiMPushButton *checkScriptButton;
    QtSLiMPushButton *prettyprintButton;
    QtSLiMPushButton *scriptHelpButton;
    QtSLiMPushButton *consoleButton;
    QtSLiMPushButton *browserButton;
    QLabel *scriptHeaderLabel;
    QtSLiMPushButton *jumpToPopupButton;
    QSpacerItem *horizontalSpacer_4;
    QtSLiMScriptTextEdit *scriptTextEdit;
    QVBoxLayout *outputLayout;
    QHBoxLayout *outputHeaderLayout;
    QtSLiMPushButton *clearOutputButton;
    QtSLiMPushButton *dumpPopulationButton;
    QLabel *outputHeaderLabel;
    QtSLiMPushButton *graphPopupButton;
    QSpacerItem *horizontalSpacer_3;
    QtSLiMPushButton *changeDirectoryButton;
    QtSLiMTextEdit *outputTextEdit;
    QMenuBar *menuBar;
    QMenu *menuFile;
    QMenu *menuOpenRecipe;
    QMenu *menuEdit;
    QMenu *menuFind;
    QMenu *menuSimulation;
    QMenu *menuScript;
    QMenu *menuHelp;
    QMenu *menuWindow;
    QtSLiMStatusBar *statusBar;

    void setupUi(QMainWindow *QtSLiMWindow)
    {
        if (QtSLiMWindow->objectName().isEmpty())
            QtSLiMWindow->setObjectName(QStringLiteral("QtSLiMWindow"));
        QtSLiMWindow->resize(914, 691);
        QtSLiMWindow->setMinimumSize(QSize(850, 500));
        actionNew = new QAction(QtSLiMWindow);
        actionNew->setObjectName(QStringLiteral("actionNew"));
        actionNew_nonWF = new QAction(QtSLiMWindow);
        actionNew_nonWF->setObjectName(QStringLiteral("actionNew_nonWF"));
        actionOpen = new QAction(QtSLiMWindow);
        actionOpen->setObjectName(QStringLiteral("actionOpen"));
        actionClose = new QAction(QtSLiMWindow);
        actionClose->setObjectName(QStringLiteral("actionClose"));
        actionSave = new QAction(QtSLiMWindow);
        actionSave->setObjectName(QStringLiteral("actionSave"));
        actionSaveAs = new QAction(QtSLiMWindow);
        actionSaveAs->setObjectName(QStringLiteral("actionSaveAs"));
        actionCut = new QAction(QtSLiMWindow);
        actionCut->setObjectName(QStringLiteral("actionCut"));
        actionCopy = new QAction(QtSLiMWindow);
        actionCopy->setObjectName(QStringLiteral("actionCopy"));
        actionPaste = new QAction(QtSLiMWindow);
        actionPaste->setObjectName(QStringLiteral("actionPaste"));
        actionUndo = new QAction(QtSLiMWindow);
        actionUndo->setObjectName(QStringLiteral("actionUndo"));
        actionRedo = new QAction(QtSLiMWindow);
        actionRedo->setObjectName(QStringLiteral("actionRedo"));
        actionDelete = new QAction(QtSLiMWindow);
        actionDelete->setObjectName(QStringLiteral("actionDelete"));
        actionSelectAll = new QAction(QtSLiMWindow);
        actionSelectAll->setObjectName(QStringLiteral("actionSelectAll"));
        actionShiftLeft = new QAction(QtSLiMWindow);
        actionShiftLeft->setObjectName(QStringLiteral("actionShiftLeft"));
        actionShiftRight = new QAction(QtSLiMWindow);
        actionShiftRight->setObjectName(QStringLiteral("actionShiftRight"));
        actionCommentUncomment = new QAction(QtSLiMWindow);
        actionCommentUncomment->setObjectName(QStringLiteral("actionCommentUncomment"));
        actionStep = new QAction(QtSLiMWindow);
        actionStep->setObjectName(QStringLiteral("actionStep"));
        actionPlay = new QAction(QtSLiMWindow);
        actionPlay->setObjectName(QStringLiteral("actionPlay"));
        actionProfile = new QAction(QtSLiMWindow);
        actionProfile->setObjectName(QStringLiteral("actionProfile"));
        actionRecycle = new QAction(QtSLiMWindow);
        actionRecycle->setObjectName(QStringLiteral("actionRecycle"));
        actionChangeWorkingDirectory = new QAction(QtSLiMWindow);
        actionChangeWorkingDirectory->setObjectName(QStringLiteral("actionChangeWorkingDirectory"));
        actionDumpPopulationState = new QAction(QtSLiMWindow);
        actionDumpPopulationState->setObjectName(QStringLiteral("actionDumpPopulationState"));
        actionCheckScript = new QAction(QtSLiMWindow);
        actionCheckScript->setObjectName(QStringLiteral("actionCheckScript"));
        actionPrettyprintScript = new QAction(QtSLiMWindow);
        actionPrettyprintScript->setObjectName(QStringLiteral("actionPrettyprintScript"));
        actionShowScriptHelp = new QAction(QtSLiMWindow);
        actionShowScriptHelp->setObjectName(QStringLiteral("actionShowScriptHelp"));
        actionShowVariableBrowser = new QAction(QtSLiMWindow);
        actionShowVariableBrowser->setObjectName(QStringLiteral("actionShowVariableBrowser"));
        actionShowEidosConsole = new QAction(QtSLiMWindow);
        actionShowEidosConsole->setObjectName(QStringLiteral("actionShowEidosConsole"));
        actionClearOutput = new QAction(QtSLiMWindow);
        actionClearOutput->setObjectName(QStringLiteral("actionClearOutput"));
        actionExecuteSelection = new QAction(QtSLiMWindow);
        actionExecuteSelection->setObjectName(QStringLiteral("actionExecuteSelection"));
        actionExecuteAll = new QAction(QtSLiMWindow);
        actionExecuteAll->setObjectName(QStringLiteral("actionExecuteAll"));
        actionQtSLiMHelp = new QAction(QtSLiMWindow);
        actionQtSLiMHelp->setObjectName(QStringLiteral("actionQtSLiMHelp"));
        actionSendFeedback = new QAction(QtSLiMWindow);
        actionSendFeedback->setObjectName(QStringLiteral("actionSendFeedback"));
        actionMailingList_slimannounce = new QAction(QtSLiMWindow);
        actionMailingList_slimannounce->setObjectName(QStringLiteral("actionMailingList_slimannounce"));
        actionMailingList_slimdiscuss = new QAction(QtSLiMWindow);
        actionMailingList_slimdiscuss->setObjectName(QStringLiteral("actionMailingList_slimdiscuss"));
        actionSLiMHomePage = new QAction(QtSLiMWindow);
        actionSLiMHomePage->setObjectName(QStringLiteral("actionSLiMHomePage"));
        actionSLiMExtras = new QAction(QtSLiMWindow);
        actionSLiMExtras->setObjectName(QStringLiteral("actionSLiMExtras"));
        actionAboutMesserLab = new QAction(QtSLiMWindow);
        actionAboutMesserLab->setObjectName(QStringLiteral("actionAboutMesserLab"));
        actionAboutMesserLab->setMenuRole(QAction::NoRole);
        actionAboutBenHaller = new QAction(QtSLiMWindow);
        actionAboutBenHaller->setObjectName(QStringLiteral("actionAboutBenHaller"));
        actionAboutBenHaller->setMenuRole(QAction::NoRole);
        actionAboutStickSoftware = new QAction(QtSLiMWindow);
        actionAboutStickSoftware->setObjectName(QStringLiteral("actionAboutStickSoftware"));
        actionAboutStickSoftware->setMenuRole(QAction::NoRole);
        actionAboutQtSLiM = new QAction(QtSLiMWindow);
        actionAboutQtSLiM->setObjectName(QStringLiteral("actionAboutQtSLiM"));
        actionAboutQtSLiM->setMenuRole(QAction::AboutRole);
        actionQuitQtSLiM = new QAction(QtSLiMWindow);
        actionQuitQtSLiM->setObjectName(QStringLiteral("actionQuitQtSLiM"));
        actionQuitQtSLiM->setMenuRole(QAction::QuitRole);
        actionFindRecipe = new QAction(QtSLiMWindow);
        actionFindRecipe->setObjectName(QStringLiteral("actionFindRecipe"));
        actionPreferences = new QAction(QtSLiMWindow);
        actionPreferences->setObjectName(QStringLiteral("actionPreferences"));
        actionPreferences->setMenuRole(QAction::PreferencesRole);
        actionFindShow = new QAction(QtSLiMWindow);
        actionFindShow->setObjectName(QStringLiteral("actionFindShow"));
        actionReplaceAndFind = new QAction(QtSLiMWindow);
        actionReplaceAndFind->setObjectName(QStringLiteral("actionReplaceAndFind"));
        actionFindNext = new QAction(QtSLiMWindow);
        actionFindNext->setObjectName(QStringLiteral("actionFindNext"));
        actionFindPrevious = new QAction(QtSLiMWindow);
        actionFindPrevious->setObjectName(QStringLiteral("actionFindPrevious"));
        actionUseSelectionForFind = new QAction(QtSLiMWindow);
        actionUseSelectionForFind->setObjectName(QStringLiteral("actionUseSelectionForFind"));
        actionJumpToSelection = new QAction(QtSLiMWindow);
        actionJumpToSelection->setObjectName(QStringLiteral("actionJumpToSelection"));
        actionRevertToSaved = new QAction(QtSLiMWindow);
        actionRevertToSaved->setObjectName(QStringLiteral("actionRevertToSaved"));
        actionOpenRecent = new QAction(QtSLiMWindow);
        actionOpenRecent->setObjectName(QStringLiteral("actionOpenRecent"));
        actionSLiMWorkshops = new QAction(QtSLiMWindow);
        actionSLiMWorkshops->setObjectName(QStringLiteral("actionSLiMWorkshops"));
        actionUseSelectionForReplace = new QAction(QtSLiMWindow);
        actionUseSelectionForReplace->setObjectName(QStringLiteral("actionUseSelectionForReplace"));
        actionJumpToLine = new QAction(QtSLiMWindow);
        actionJumpToLine->setObjectName(QStringLiteral("actionJumpToLine"));
        actionMinimize = new QAction(QtSLiMWindow);
        actionMinimize->setObjectName(QStringLiteral("actionMinimize"));
        actionZoom = new QAction(QtSLiMWindow);
        actionZoom->setObjectName(QStringLiteral("actionZoom"));
        actionReformatScript = new QAction(QtSLiMWindow);
        actionReformatScript->setObjectName(QStringLiteral("actionReformatScript"));
        centralWidget = new QWidget(QtSLiMWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        verticalLayout = new QVBoxLayout(centralWidget);
        verticalLayout->setSpacing(6);
        verticalLayout->setContentsMargins(11, 11, 11, 11);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(10, 10, 10, 10);
        overallTopLayout = new QVBoxLayout();
        overallTopLayout->setSpacing(10);
        overallTopLayout->setObjectName(QStringLiteral("overallTopLayout"));
        topLayout = new QHBoxLayout();
        topLayout->setSpacing(10);
        topLayout->setObjectName(QStringLiteral("topLayout"));
        subpopTableView = new QTableView(centralWidget);
        subpopTableView->setObjectName(QStringLiteral("subpopTableView"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(subpopTableView->sizePolicy().hasHeightForWidth());
        subpopTableView->setSizePolicy(sizePolicy);
        subpopTableView->setMinimumSize(QSize(257, 0));
        subpopTableView->setMaximumSize(QSize(257, 130));
        subpopTableView->setFocusPolicy(Qt::NoFocus);
        subpopTableView->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        subpopTableView->setEditTriggers(QAbstractItemView::NoEditTriggers);
        subpopTableView->setTabKeyNavigation(false);
        subpopTableView->setProperty("showDropIndicator", QVariant(false));
        subpopTableView->setSelectionMode(QAbstractItemView::ExtendedSelection);
        subpopTableView->setSelectionBehavior(QAbstractItemView::SelectRows);
        subpopTableView->setShowGrid(false);
        subpopTableView->setWordWrap(false);
        subpopTableView->setCornerButtonEnabled(false);
        subpopTableView->verticalHeader()->setVisible(false);

        topLayout->addWidget(subpopTableView);

        individualsWidget = new QtSLiMIndividualsWidget(centralWidget);
        individualsWidget->setObjectName(QStringLiteral("individualsWidget"));
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(individualsWidget->sizePolicy().hasHeightForWidth());
        individualsWidget->setSizePolicy(sizePolicy1);
        individualsWidget->setMaximumSize(QSize(16777215, 130));

        topLayout->addWidget(individualsWidget);

        topRightLayout = new QVBoxLayout();
        topRightLayout->setSpacing(6);
        topRightLayout->setObjectName(QStringLiteral("topRightLayout"));
        playControlsLayout = new QHBoxLayout();
        playControlsLayout->setSpacing(6);
        playControlsLayout->setObjectName(QStringLiteral("playControlsLayout"));
        playControlsLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        playOneStepButton = new QtSLiMPushButton(centralWidget);
        playOneStepButton->setObjectName(QStringLiteral("playOneStepButton"));
        playOneStepButton->setMinimumSize(QSize(60, 60));
        playOneStepButton->setMaximumSize(QSize(60, 60));
        playOneStepButton->setFocusPolicy(Qt::NoFocus);
        playOneStepButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/buttons/play_step.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon.addFile(QStringLiteral(":/buttons/play_step_H.png"), QSize(), QIcon::Normal, QIcon::On);
        playOneStepButton->setIcon(icon);
        playOneStepButton->setIconSize(QSize(60, 60));
        playOneStepButton->setFlat(true);

        playControlsLayout->addWidget(playOneStepButton);

        playButton = new QtSLiMPushButton(centralWidget);
        playButton->setObjectName(QStringLiteral("playButton"));
        playButton->setMinimumSize(QSize(60, 60));
        playButton->setMaximumSize(QSize(60, 60));
        playButton->setFocusPolicy(Qt::NoFocus);
        playButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/buttons/play.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon1.addFile(QStringLiteral(":/buttons/play_H.png"), QSize(), QIcon::Normal, QIcon::On);
        playButton->setIcon(icon1);
        playButton->setIconSize(QSize(60, 60));
        playButton->setCheckable(true);
        playButton->setFlat(true);

        playControlsLayout->addWidget(playButton);

        profileButton = new QtSLiMPushButton(centralWidget);
        profileButton->setObjectName(QStringLiteral("profileButton"));
        profileButton->setMinimumSize(QSize(30, 30));
        profileButton->setMaximumSize(QSize(30, 30));
        profileButton->setFocusPolicy(Qt::NoFocus);
        profileButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/buttons/profile.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon2.addFile(QStringLiteral(":/buttons/profile_H.png"), QSize(), QIcon::Normal, QIcon::On);
        profileButton->setIcon(icon2);
        profileButton->setIconSize(QSize(30, 30));
        profileButton->setCheckable(true);
        profileButton->setFlat(true);

        playControlsLayout->addWidget(profileButton);

        recycleButton = new QtSLiMPushButton(centralWidget);
        recycleButton->setObjectName(QStringLiteral("recycleButton"));
        recycleButton->setMinimumSize(QSize(60, 60));
        recycleButton->setMaximumSize(QSize(60, 60));
        recycleButton->setFocusPolicy(Qt::NoFocus);
        recycleButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon3;
        icon3.addFile(QStringLiteral(":/buttons/recycle.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon3.addFile(QStringLiteral(":/buttons/recycle_H.png"), QSize(), QIcon::Normal, QIcon::On);
        recycleButton->setIcon(icon3);
        recycleButton->setIconSize(QSize(60, 60));
        recycleButton->setFlat(true);

        playControlsLayout->addWidget(recycleButton);


        topRightLayout->addLayout(playControlsLayout);

        playSpeedSlider = new QSlider(centralWidget);
        playSpeedSlider->setObjectName(QStringLiteral("playSpeedSlider"));
        playSpeedSlider->setMaximumSize(QSize(60, 16777215));
        playSpeedSlider->setFocusPolicy(Qt::NoFocus);
        playSpeedSlider->setStyleSheet(QLatin1String("QSlider::groove:horizontal {\n"
"    border: 1px solid #888888;\n"
"    border-radius: 1px;\n"
"    height: 2px; /* the groove expands to the size of the slider by default. by giving it a height, it has a fixed size */\n"
"    background: #a0a0a0;\n"
"    margin: 2px 0;\n"
"}\n"
"QSlider::groove:horizontal:disabled {\n"
"    border: 1px solid #cccccc;\n"
"    border-radius: 1px;\n"
"    height: 2px; /* the groove expands to the size of the slider by default. by giving it a height, it has a fixed size */\n"
"    background: #e0e0e0;\n"
"    margin: 2px 0;\n"
"}\n"
"\n"
"QSlider::handle:horizontal {\n"
"    background: #ffffff;\n"
"    border: 1px solid #909090;\n"
"    width: 8px;\n"
"    margin: -4px 0;\n"
"    border-radius: 4px;\n"
"}\n"
"QSlider::handle:horizontal:disabled {\n"
"    background: #ffffff;\n"
"    border: 1px solid #d0d0d0;\n"
"    width: 8px;\n"
"    margin: -4px 0;\n"
"    border-radius: 4px;\n"
"}\n"
""));
        playSpeedSlider->setMaximum(100);
        playSpeedSlider->setSliderPosition(100);
        playSpeedSlider->setOrientation(Qt::Horizontal);
        playSpeedSlider->setInvertedAppearance(false);

        topRightLayout->addWidget(playSpeedSlider, 0, Qt::AlignHCenter);

        playControlsSpacerFixed = new QSpacerItem(20, 15, QSizePolicy::Minimum, QSizePolicy::Fixed);

        topRightLayout->addItem(playControlsSpacerFixed);

        generationLayout = new QHBoxLayout();
        generationLayout->setSpacing(6);
        generationLayout->setObjectName(QStringLiteral("generationLayout"));
        generationLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        horizontalSpacer = new QSpacerItem(2, 10, QSizePolicy::Fixed, QSizePolicy::Minimum);

        generationLayout->addItem(horizontalSpacer);

        generationLabel = new QLabel(centralWidget);
        generationLabel->setObjectName(QStringLiteral("generationLabel"));
        QSizePolicy sizePolicy2(QSizePolicy::Fixed, QSizePolicy::Preferred);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(generationLabel->sizePolicy().hasHeightForWidth());
        generationLabel->setSizePolicy(sizePolicy2);
        generationLabel->setMinimumSize(QSize(80, 0));
        generationLabel->setMaximumSize(QSize(80, 16777215));

        generationLayout->addWidget(generationLabel);

        generationLineEdit = new QtSLiMGenerationLineEdit(centralWidget);
        generationLineEdit->setObjectName(QStringLiteral("generationLineEdit"));
        generationLineEdit->setMaximumSize(QSize(100, 16777215));
        generationLineEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        generationLayout->addWidget(generationLineEdit);

        horizontalSpacer_2 = new QSpacerItem(2, 10, QSizePolicy::Fixed, QSizePolicy::Minimum);

        generationLayout->addItem(horizontalSpacer_2);


        topRightLayout->addLayout(generationLayout);

        playControlsSpacerExpanding = new QSpacerItem(20, 0, QSizePolicy::Minimum, QSizePolicy::MinimumExpanding);

        topRightLayout->addItem(playControlsSpacerExpanding);


        topLayout->addLayout(topRightLayout);


        overallTopLayout->addLayout(topLayout);

        chromosomeLayout = new QHBoxLayout();
        chromosomeLayout->setSpacing(10);
        chromosomeLayout->setObjectName(QStringLiteral("chromosomeLayout"));
        chromosomeLayout->setContentsMargins(-1, 5, -1, 5);
        chromosomeWidgetLayout = new QVBoxLayout();
        chromosomeWidgetLayout->setSpacing(15);
        chromosomeWidgetLayout->setObjectName(QStringLiteral("chromosomeWidgetLayout"));
        chromosomeOverview = new QtSLiMChromosomeWidget(centralWidget);
        chromosomeOverview->setObjectName(QStringLiteral("chromosomeOverview"));
        sizePolicy1.setHeightForWidth(chromosomeOverview->sizePolicy().hasHeightForWidth());
        chromosomeOverview->setSizePolicy(sizePolicy1);
        chromosomeOverview->setMinimumSize(QSize(0, 30));
        chromosomeOverview->setMaximumSize(QSize(16777215, 30));

        chromosomeWidgetLayout->addWidget(chromosomeOverview);

        chromosomeZoomed = new QtSLiMChromosomeWidget(centralWidget);
        chromosomeZoomed->setObjectName(QStringLiteral("chromosomeZoomed"));
        sizePolicy1.setHeightForWidth(chromosomeZoomed->sizePolicy().hasHeightForWidth());
        chromosomeZoomed->setSizePolicy(sizePolicy1);
        chromosomeZoomed->setMinimumSize(QSize(0, 65));
        chromosomeZoomed->setMaximumSize(QSize(16777215, 65));

        chromosomeWidgetLayout->addWidget(chromosomeZoomed);


        chromosomeLayout->addLayout(chromosomeWidgetLayout);

        chromosomeRightLayout = new QVBoxLayout();
        chromosomeRightLayout->setSpacing(0);
        chromosomeRightLayout->setObjectName(QStringLiteral("chromosomeRightLayout"));
        toggleDrawerButton = new QtSLiMPushButton(centralWidget);
        toggleDrawerButton->setObjectName(QStringLiteral("toggleDrawerButton"));
        QSizePolicy sizePolicy3(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(toggleDrawerButton->sizePolicy().hasHeightForWidth());
        toggleDrawerButton->setSizePolicy(sizePolicy3);
        toggleDrawerButton->setMinimumSize(QSize(30, 30));
        toggleDrawerButton->setMaximumSize(QSize(30, 30));
        toggleDrawerButton->setFocusPolicy(Qt::NoFocus);
        toggleDrawerButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/buttons/open_type_drawer.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon4.addFile(QStringLiteral(":/buttons/open_type_drawer_H.png"), QSize(), QIcon::Normal, QIcon::On);
        toggleDrawerButton->setIcon(icon4);
        toggleDrawerButton->setIconSize(QSize(30, 30));
        toggleDrawerButton->setCheckable(true);
        toggleDrawerButton->setFlat(true);

        chromosomeRightLayout->addWidget(toggleDrawerButton, 0, Qt::AlignRight);

        verticalSpacer = new QSpacerItem(20, 15, QSizePolicy::Minimum, QSizePolicy::Minimum);

        chromosomeRightLayout->addItem(verticalSpacer);

        chromosomeButtonsFrame = new QFrame(centralWidget);
        chromosomeButtonsFrame->setObjectName(QStringLiteral("chromosomeButtonsFrame"));
        QSizePolicy sizePolicy4(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(chromosomeButtonsFrame->sizePolicy().hasHeightForWidth());
        chromosomeButtonsFrame->setSizePolicy(sizePolicy4);
        chromosomeButtonsFrame->setMinimumSize(QSize(0, 0));
        chromosomeButtonsFrame->setFrameShape(QFrame::NoFrame);
        chromosomeButtonsFrame->setFrameShadow(QFrame::Plain);
        chromosomeButtonsFrame->setLineWidth(0);
        gridLayout = new QGridLayout(chromosomeButtonsFrame);
        gridLayout->setSpacing(5);
        gridLayout->setContentsMargins(11, 11, 11, 11);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(0, 0, 0, 0);
        showChromosomeMapsButton = new QtSLiMPushButton(chromosomeButtonsFrame);
        showChromosomeMapsButton->setObjectName(QStringLiteral("showChromosomeMapsButton"));
        sizePolicy3.setHeightForWidth(showChromosomeMapsButton->sizePolicy().hasHeightForWidth());
        showChromosomeMapsButton->setSizePolicy(sizePolicy3);
        showChromosomeMapsButton->setMinimumSize(QSize(30, 30));
        showChromosomeMapsButton->setMaximumSize(QSize(30, 30));
        showChromosomeMapsButton->setFocusPolicy(Qt::NoFocus);
        showChromosomeMapsButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/buttons/show_recombination.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon5.addFile(QStringLiteral(":/buttons/show_recombination_H.png"), QSize(), QIcon::Normal, QIcon::On);
        showChromosomeMapsButton->setIcon(icon5);
        showChromosomeMapsButton->setIconSize(QSize(30, 30));
        showChromosomeMapsButton->setCheckable(true);
        showChromosomeMapsButton->setFlat(true);

        gridLayout->addWidget(showChromosomeMapsButton, 1, 0, 1, 1);

        showGenomicElementsButton = new QtSLiMPushButton(chromosomeButtonsFrame);
        showGenomicElementsButton->setObjectName(QStringLiteral("showGenomicElementsButton"));
        sizePolicy3.setHeightForWidth(showGenomicElementsButton->sizePolicy().hasHeightForWidth());
        showGenomicElementsButton->setSizePolicy(sizePolicy3);
        showGenomicElementsButton->setMinimumSize(QSize(30, 30));
        showGenomicElementsButton->setMaximumSize(QSize(30, 30));
        showGenomicElementsButton->setFocusPolicy(Qt::NoFocus);
        showGenomicElementsButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon6;
        icon6.addFile(QStringLiteral(":/buttons/show_genomicelements.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon6.addFile(QStringLiteral(":/buttons/show_genomicelements_H.png"), QSize(), QIcon::Normal, QIcon::On);
        showGenomicElementsButton->setIcon(icon6);
        showGenomicElementsButton->setIconSize(QSize(30, 30));
        showGenomicElementsButton->setCheckable(true);
        showGenomicElementsButton->setFlat(true);

        gridLayout->addWidget(showGenomicElementsButton, 1, 1, 1, 1);

        showMutationsButton = new QtSLiMPushButton(chromosomeButtonsFrame);
        showMutationsButton->setObjectName(QStringLiteral("showMutationsButton"));
        sizePolicy3.setHeightForWidth(showMutationsButton->sizePolicy().hasHeightForWidth());
        showMutationsButton->setSizePolicy(sizePolicy3);
        showMutationsButton->setMinimumSize(QSize(30, 30));
        showMutationsButton->setMaximumSize(QSize(30, 30));
        showMutationsButton->setFocusPolicy(Qt::NoFocus);
        showMutationsButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon7;
        icon7.addFile(QStringLiteral(":/buttons/show_mutations.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon7.addFile(QStringLiteral(":/buttons/show_mutations_H.png"), QSize(), QIcon::Normal, QIcon::On);
        showMutationsButton->setIcon(icon7);
        showMutationsButton->setIconSize(QSize(30, 30));
        showMutationsButton->setCheckable(true);
        showMutationsButton->setChecked(true);
        showMutationsButton->setFlat(true);

        gridLayout->addWidget(showMutationsButton, 2, 0, 1, 1);

        showFixedSubstitutionsButton = new QtSLiMPushButton(chromosomeButtonsFrame);
        showFixedSubstitutionsButton->setObjectName(QStringLiteral("showFixedSubstitutionsButton"));
        sizePolicy3.setHeightForWidth(showFixedSubstitutionsButton->sizePolicy().hasHeightForWidth());
        showFixedSubstitutionsButton->setSizePolicy(sizePolicy3);
        showFixedSubstitutionsButton->setMinimumSize(QSize(30, 30));
        showFixedSubstitutionsButton->setMaximumSize(QSize(30, 30));
        showFixedSubstitutionsButton->setFocusPolicy(Qt::NoFocus);
        showFixedSubstitutionsButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon8;
        icon8.addFile(QStringLiteral(":/buttons/show_fixed.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon8.addFile(QStringLiteral(":/buttons/show_fixed_H.png"), QSize(), QIcon::Normal, QIcon::On);
        showFixedSubstitutionsButton->setIcon(icon8);
        showFixedSubstitutionsButton->setIconSize(QSize(30, 30));
        showFixedSubstitutionsButton->setCheckable(true);
        showFixedSubstitutionsButton->setFlat(true);

        gridLayout->addWidget(showFixedSubstitutionsButton, 2, 1, 1, 1);


        chromosomeRightLayout->addWidget(chromosomeButtonsFrame);


        chromosomeLayout->addLayout(chromosomeRightLayout);


        overallTopLayout->addLayout(chromosomeLayout);


        verticalLayout->addLayout(overallTopLayout);

        line = new QFrame(centralWidget);
        line->setObjectName(QStringLiteral("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        overallBottomLayout = new QHBoxLayout();
        overallBottomLayout->setSpacing(6);
        overallBottomLayout->setObjectName(QStringLiteral("overallBottomLayout"));
        scriptLayout = new QVBoxLayout();
        scriptLayout->setSpacing(6);
        scriptLayout->setObjectName(QStringLiteral("scriptLayout"));
        scriptHeaderLayout = new QHBoxLayout();
        scriptHeaderLayout->setSpacing(6);
        scriptHeaderLayout->setObjectName(QStringLiteral("scriptHeaderLayout"));
        checkScriptButton = new QtSLiMPushButton(centralWidget);
        checkScriptButton->setObjectName(QStringLiteral("checkScriptButton"));
        checkScriptButton->setMinimumSize(QSize(20, 20));
        checkScriptButton->setMaximumSize(QSize(20, 20));
        checkScriptButton->setFocusPolicy(Qt::NoFocus);
        checkScriptButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon9;
        icon9.addFile(QStringLiteral(":/buttons/check.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon9.addFile(QStringLiteral(":/buttons/check_H.png"), QSize(), QIcon::Normal, QIcon::On);
        checkScriptButton->setIcon(icon9);
        checkScriptButton->setIconSize(QSize(20, 20));
        checkScriptButton->setFlat(true);

        scriptHeaderLayout->addWidget(checkScriptButton);

        prettyprintButton = new QtSLiMPushButton(centralWidget);
        prettyprintButton->setObjectName(QStringLiteral("prettyprintButton"));
        prettyprintButton->setMinimumSize(QSize(20, 20));
        prettyprintButton->setMaximumSize(QSize(20, 20));
        prettyprintButton->setFocusPolicy(Qt::NoFocus);
        prettyprintButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon10;
        icon10.addFile(QStringLiteral(":/buttons/prettyprint.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon10.addFile(QStringLiteral(":/buttons/prettyprint_H.png"), QSize(), QIcon::Normal, QIcon::On);
        prettyprintButton->setIcon(icon10);
        prettyprintButton->setIconSize(QSize(20, 20));
        prettyprintButton->setFlat(true);

        scriptHeaderLayout->addWidget(prettyprintButton);

        scriptHelpButton = new QtSLiMPushButton(centralWidget);
        scriptHelpButton->setObjectName(QStringLiteral("scriptHelpButton"));
        scriptHelpButton->setMinimumSize(QSize(20, 20));
        scriptHelpButton->setMaximumSize(QSize(20, 20));
        scriptHelpButton->setFocusPolicy(Qt::NoFocus);
        scriptHelpButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon11;
        icon11.addFile(QStringLiteral(":/buttons/syntax_help.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon11.addFile(QStringLiteral(":/buttons/syntax_help_H.png"), QSize(), QIcon::Normal, QIcon::On);
        scriptHelpButton->setIcon(icon11);
        scriptHelpButton->setIconSize(QSize(20, 20));
        scriptHelpButton->setFlat(true);

        scriptHeaderLayout->addWidget(scriptHelpButton);

        consoleButton = new QtSLiMPushButton(centralWidget);
        consoleButton->setObjectName(QStringLiteral("consoleButton"));
        consoleButton->setMinimumSize(QSize(20, 20));
        consoleButton->setMaximumSize(QSize(20, 20));
        consoleButton->setFocusPolicy(Qt::NoFocus);
        consoleButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon12;
        icon12.addFile(QStringLiteral(":/buttons/show_console.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon12.addFile(QStringLiteral(":/buttons/show_console_H.png"), QSize(), QIcon::Normal, QIcon::On);
        consoleButton->setIcon(icon12);
        consoleButton->setIconSize(QSize(20, 20));
        consoleButton->setCheckable(true);
        consoleButton->setFlat(true);

        scriptHeaderLayout->addWidget(consoleButton);

        browserButton = new QtSLiMPushButton(centralWidget);
        browserButton->setObjectName(QStringLiteral("browserButton"));
        browserButton->setMinimumSize(QSize(20, 20));
        browserButton->setMaximumSize(QSize(20, 20));
        browserButton->setFocusPolicy(Qt::NoFocus);
        browserButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon13;
        icon13.addFile(QStringLiteral(":/buttons/show_browser.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon13.addFile(QStringLiteral(":/buttons/show_browser_H.png"), QSize(), QIcon::Normal, QIcon::On);
        browserButton->setIcon(icon13);
        browserButton->setIconSize(QSize(20, 20));
        browserButton->setCheckable(true);
        browserButton->setFlat(true);

        scriptHeaderLayout->addWidget(browserButton);

        scriptHeaderLabel = new QLabel(centralWidget);
        scriptHeaderLabel->setObjectName(QStringLiteral("scriptHeaderLabel"));

        scriptHeaderLayout->addWidget(scriptHeaderLabel);

        jumpToPopupButton = new QtSLiMPushButton(centralWidget);
        jumpToPopupButton->setObjectName(QStringLiteral("jumpToPopupButton"));
        jumpToPopupButton->setMinimumSize(QSize(20, 20));
        jumpToPopupButton->setMaximumSize(QSize(20, 20));
        jumpToPopupButton->setFocusPolicy(Qt::NoFocus);
        jumpToPopupButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon14;
        icon14.addFile(QStringLiteral(":/buttons/jump_to.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon14.addFile(QStringLiteral(":/buttons/jump_to_H.png"), QSize(), QIcon::Normal, QIcon::On);
        jumpToPopupButton->setIcon(icon14);
        jumpToPopupButton->setIconSize(QSize(20, 20));
        jumpToPopupButton->setFlat(true);

        scriptHeaderLayout->addWidget(jumpToPopupButton);

        horizontalSpacer_4 = new QSpacerItem(10, 10, QSizePolicy::Expanding, QSizePolicy::Minimum);

        scriptHeaderLayout->addItem(horizontalSpacer_4);


        scriptLayout->addLayout(scriptHeaderLayout);

        scriptTextEdit = new QtSLiMScriptTextEdit(centralWidget);
        scriptTextEdit->setObjectName(QStringLiteral("scriptTextEdit"));

        scriptLayout->addWidget(scriptTextEdit);


        overallBottomLayout->addLayout(scriptLayout);

        outputLayout = new QVBoxLayout();
        outputLayout->setSpacing(6);
        outputLayout->setObjectName(QStringLiteral("outputLayout"));
        outputHeaderLayout = new QHBoxLayout();
        outputHeaderLayout->setSpacing(6);
        outputHeaderLayout->setObjectName(QStringLiteral("outputHeaderLayout"));
        clearOutputButton = new QtSLiMPushButton(centralWidget);
        clearOutputButton->setObjectName(QStringLiteral("clearOutputButton"));
        clearOutputButton->setMinimumSize(QSize(20, 20));
        clearOutputButton->setMaximumSize(QSize(20, 20));
        clearOutputButton->setFocusPolicy(Qt::NoFocus);
        clearOutputButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon15;
        icon15.addFile(QStringLiteral(":/buttons/delete.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon15.addFile(QStringLiteral(":/buttons/delete_H.png"), QSize(), QIcon::Normal, QIcon::On);
        clearOutputButton->setIcon(icon15);
        clearOutputButton->setIconSize(QSize(20, 20));
        clearOutputButton->setFlat(true);

        outputHeaderLayout->addWidget(clearOutputButton);

        dumpPopulationButton = new QtSLiMPushButton(centralWidget);
        dumpPopulationButton->setObjectName(QStringLiteral("dumpPopulationButton"));
        dumpPopulationButton->setMinimumSize(QSize(20, 20));
        dumpPopulationButton->setMaximumSize(QSize(20, 20));
        dumpPopulationButton->setFocusPolicy(Qt::NoFocus);
        dumpPopulationButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon16;
        icon16.addFile(QStringLiteral(":/buttons/dump_output.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon16.addFile(QStringLiteral(":/buttons/dump_output_H.png"), QSize(), QIcon::Normal, QIcon::On);
        dumpPopulationButton->setIcon(icon16);
        dumpPopulationButton->setIconSize(QSize(20, 20));
        dumpPopulationButton->setFlat(true);

        outputHeaderLayout->addWidget(dumpPopulationButton);

        outputHeaderLabel = new QLabel(centralWidget);
        outputHeaderLabel->setObjectName(QStringLiteral("outputHeaderLabel"));

        outputHeaderLayout->addWidget(outputHeaderLabel);

        graphPopupButton = new QtSLiMPushButton(centralWidget);
        graphPopupButton->setObjectName(QStringLiteral("graphPopupButton"));
        graphPopupButton->setMinimumSize(QSize(20, 20));
        graphPopupButton->setMaximumSize(QSize(20, 20));
        graphPopupButton->setFocusPolicy(Qt::NoFocus);
        graphPopupButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon17;
        icon17.addFile(QStringLiteral(":/buttons/graph_submenu.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon17.addFile(QStringLiteral(":/buttons/graph_submenu_H.png"), QSize(), QIcon::Normal, QIcon::On);
        graphPopupButton->setIcon(icon17);
        graphPopupButton->setIconSize(QSize(20, 20));
        graphPopupButton->setFlat(true);

        outputHeaderLayout->addWidget(graphPopupButton);

        horizontalSpacer_3 = new QSpacerItem(40, 10, QSizePolicy::Expanding, QSizePolicy::Minimum);

        outputHeaderLayout->addItem(horizontalSpacer_3);

        changeDirectoryButton = new QtSLiMPushButton(centralWidget);
        changeDirectoryButton->setObjectName(QStringLiteral("changeDirectoryButton"));
        changeDirectoryButton->setMinimumSize(QSize(20, 20));
        changeDirectoryButton->setMaximumSize(QSize(20, 20));
        changeDirectoryButton->setFocusPolicy(Qt::NoFocus);
        changeDirectoryButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon18;
        icon18.addFile(QStringLiteral(":/buttons/change_folder.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon18.addFile(QStringLiteral(":/buttons/change_folder_H.png"), QSize(), QIcon::Normal, QIcon::On);
        changeDirectoryButton->setIcon(icon18);
        changeDirectoryButton->setIconSize(QSize(20, 20));
        changeDirectoryButton->setFlat(true);

        outputHeaderLayout->addWidget(changeDirectoryButton);


        outputLayout->addLayout(outputHeaderLayout);

        outputTextEdit = new QtSLiMTextEdit(centralWidget);
        outputTextEdit->setObjectName(QStringLiteral("outputTextEdit"));
        outputTextEdit->setReadOnly(true);

        outputLayout->addWidget(outputTextEdit);


        overallBottomLayout->addLayout(outputLayout);

        overallBottomLayout->setStretch(0, 2);
        overallBottomLayout->setStretch(1, 1);

        verticalLayout->addLayout(overallBottomLayout);

        QtSLiMWindow->setCentralWidget(centralWidget);
        menuBar = new QMenuBar(QtSLiMWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 914, 22));
        menuFile = new QMenu(menuBar);
        menuFile->setObjectName(QStringLiteral("menuFile"));
        menuOpenRecipe = new QMenu(menuFile);
        menuOpenRecipe->setObjectName(QStringLiteral("menuOpenRecipe"));
        menuEdit = new QMenu(menuBar);
        menuEdit->setObjectName(QStringLiteral("menuEdit"));
        menuFind = new QMenu(menuEdit);
        menuFind->setObjectName(QStringLiteral("menuFind"));
        menuSimulation = new QMenu(menuBar);
        menuSimulation->setObjectName(QStringLiteral("menuSimulation"));
        menuScript = new QMenu(menuBar);
        menuScript->setObjectName(QStringLiteral("menuScript"));
        menuHelp = new QMenu(menuBar);
        menuHelp->setObjectName(QStringLiteral("menuHelp"));
        menuWindow = new QMenu(menuBar);
        menuWindow->setObjectName(QStringLiteral("menuWindow"));
        QtSLiMWindow->setMenuBar(menuBar);
        statusBar = new QtSLiMStatusBar(QtSLiMWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        QtSLiMWindow->setStatusBar(statusBar);

        menuBar->addAction(menuFile->menuAction());
        menuBar->addAction(menuEdit->menuAction());
        menuBar->addAction(menuSimulation->menuAction());
        menuBar->addAction(menuScript->menuAction());
        menuBar->addAction(menuWindow->menuAction());
        menuBar->addAction(menuHelp->menuAction());
        menuFile->addAction(actionAboutQtSLiM);
        menuFile->addAction(actionPreferences);
        menuFile->addSeparator();
        menuFile->addAction(actionNew);
        menuFile->addAction(actionNew_nonWF);
        menuFile->addAction(actionOpen);
        menuFile->addAction(actionOpenRecent);
        menuFile->addAction(menuOpenRecipe->menuAction());
        menuFile->addSeparator();
        menuFile->addAction(actionClose);
        menuFile->addAction(actionSave);
        menuFile->addAction(actionSaveAs);
        menuFile->addAction(actionRevertToSaved);
        menuFile->addSeparator();
        menuFile->addAction(actionQuitQtSLiM);
        menuOpenRecipe->addAction(actionFindRecipe);
        menuOpenRecipe->addSeparator();
        menuEdit->addAction(actionUndo);
        menuEdit->addAction(actionRedo);
        menuEdit->addSeparator();
        menuEdit->addAction(actionCut);
        menuEdit->addAction(actionCopy);
        menuEdit->addAction(actionPaste);
        menuEdit->addAction(actionDelete);
        menuEdit->addAction(actionSelectAll);
        menuEdit->addSeparator();
        menuEdit->addAction(menuFind->menuAction());
        menuEdit->addSeparator();
        menuEdit->addAction(actionShiftLeft);
        menuEdit->addAction(actionShiftRight);
        menuEdit->addAction(actionCommentUncomment);
        menuFind->addAction(actionFindShow);
        menuFind->addAction(actionFindNext);
        menuFind->addAction(actionFindPrevious);
        menuFind->addAction(actionReplaceAndFind);
        menuFind->addAction(actionUseSelectionForFind);
        menuFind->addAction(actionUseSelectionForReplace);
        menuFind->addAction(actionJumpToSelection);
        menuFind->addAction(actionJumpToLine);
        menuSimulation->addAction(actionStep);
        menuSimulation->addAction(actionPlay);
        menuSimulation->addAction(actionProfile);
        menuSimulation->addAction(actionRecycle);
        menuSimulation->addSeparator();
        menuSimulation->addAction(actionChangeWorkingDirectory);
        menuSimulation->addSeparator();
        menuSimulation->addAction(actionDumpPopulationState);
        menuScript->addAction(actionCheckScript);
        menuScript->addAction(actionPrettyprintScript);
        menuScript->addAction(actionReformatScript);
        menuScript->addAction(actionShowScriptHelp);
        menuScript->addSeparator();
        menuScript->addAction(actionShowVariableBrowser);
        menuScript->addAction(actionShowEidosConsole);
        menuScript->addSeparator();
        menuScript->addAction(actionClearOutput);
        menuScript->addSeparator();
        menuScript->addAction(actionExecuteSelection);
        menuScript->addAction(actionExecuteAll);
        menuHelp->addAction(actionQtSLiMHelp);
        menuHelp->addAction(actionSLiMWorkshops);
        menuHelp->addSeparator();
        menuHelp->addAction(actionSendFeedback);
        menuHelp->addAction(actionMailingList_slimannounce);
        menuHelp->addAction(actionMailingList_slimdiscuss);
        menuHelp->addSeparator();
        menuHelp->addAction(actionSLiMHomePage);
        menuHelp->addAction(actionSLiMExtras);
        menuHelp->addSeparator();
        menuHelp->addAction(actionAboutMesserLab);
        menuHelp->addAction(actionAboutBenHaller);
        menuHelp->addAction(actionAboutStickSoftware);
        menuWindow->addAction(actionMinimize);
        menuWindow->addAction(actionZoom);
        menuWindow->addSeparator();

        retranslateUi(QtSLiMWindow);

        QMetaObject::connectSlotsByName(QtSLiMWindow);
    } // setupUi

    void retranslateUi(QMainWindow *QtSLiMWindow)
    {
        actionNew->setText(QApplication::translate("QtSLiMWindow", "New", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionNew->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+N", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionNew_nonWF->setText(QApplication::translate("QtSLiMWindow", "New (nonWF)", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionNew_nonWF->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+N", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionOpen->setText(QApplication::translate("QtSLiMWindow", "Open...", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionOpen->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+O", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionClose->setText(QApplication::translate("QtSLiMWindow", "Close", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionClose->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+W", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionSave->setText(QApplication::translate("QtSLiMWindow", "Save", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionSave->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+S", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionSaveAs->setText(QApplication::translate("QtSLiMWindow", "Save As...", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionSaveAs->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+S", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionCut->setText(QApplication::translate("QtSLiMWindow", "Cut", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionCut->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+X", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionCopy->setText(QApplication::translate("QtSLiMWindow", "Copy", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionCopy->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+C", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionPaste->setText(QApplication::translate("QtSLiMWindow", "Paste", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionPaste->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+V", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionUndo->setText(QApplication::translate("QtSLiMWindow", "Undo", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionUndo->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Z", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionRedo->setText(QApplication::translate("QtSLiMWindow", "Redo", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionRedo->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+Z", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionDelete->setText(QApplication::translate("QtSLiMWindow", "Delete", Q_NULLPTR));
        actionSelectAll->setText(QApplication::translate("QtSLiMWindow", "Select All", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionSelectAll->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+A", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionShiftLeft->setText(QApplication::translate("QtSLiMWindow", "Shift Left", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionShiftLeft->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+[", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionShiftRight->setText(QApplication::translate("QtSLiMWindow", "Shift Right", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionShiftRight->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+]", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionCommentUncomment->setText(QApplication::translate("QtSLiMWindow", "Comment / Uncomment", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionCommentUncomment->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+/", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionStep->setText(QApplication::translate("QtSLiMWindow", "Step", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionStep->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+P", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionPlay->setText(QApplication::translate("QtSLiMWindow", "Play", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionPlay->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+P", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionProfile->setText(QApplication::translate("QtSLiMWindow", "Profile", Q_NULLPTR));
        actionRecycle->setText(QApplication::translate("QtSLiMWindow", "Recycle", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionRecycle->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+R", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionChangeWorkingDirectory->setText(QApplication::translate("QtSLiMWindow", "Change Working Directory...", Q_NULLPTR));
        actionDumpPopulationState->setText(QApplication::translate("QtSLiMWindow", "Dump Population State", Q_NULLPTR));
        actionCheckScript->setText(QApplication::translate("QtSLiMWindow", "Check Script", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionCheckScript->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+=", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionPrettyprintScript->setText(QApplication::translate("QtSLiMWindow", "Prettyprint Script", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionPrettyprintScript->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+=", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionShowScriptHelp->setText(QApplication::translate("QtSLiMWindow", "Show Script Help", Q_NULLPTR));
        actionShowVariableBrowser->setText(QApplication::translate("QtSLiMWindow", "Show Variable Browser", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionShowVariableBrowser->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+B", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionShowEidosConsole->setText(QApplication::translate("QtSLiMWindow", "Show Eidos Console", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionShowEidosConsole->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+E", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionClearOutput->setText(QApplication::translate("QtSLiMWindow", "Clear Output", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionClearOutput->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+K", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionExecuteSelection->setText(QApplication::translate("QtSLiMWindow", "Execute Selection", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionExecuteSelection->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Return", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionExecuteAll->setText(QApplication::translate("QtSLiMWindow", "Execute All", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionExecuteAll->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+Return", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionQtSLiMHelp->setText(QApplication::translate("QtSLiMWindow", "SLiMgui Help", Q_NULLPTR));
        actionSendFeedback->setText(QApplication::translate("QtSLiMWindow", "Send Feedback on SLiM", Q_NULLPTR));
        actionMailingList_slimannounce->setText(QApplication::translate("QtSLiMWindow", "Mailing List: slim-announce", Q_NULLPTR));
        actionMailingList_slimdiscuss->setText(QApplication::translate("QtSLiMWindow", "Mailing List: slim-discuss", Q_NULLPTR));
        actionSLiMHomePage->setText(QApplication::translate("QtSLiMWindow", "SLiM Home Page", Q_NULLPTR));
        actionSLiMExtras->setText(QApplication::translate("QtSLiMWindow", "SLiM-Extras on GitHub", Q_NULLPTR));
        actionAboutMesserLab->setText(QApplication::translate("QtSLiMWindow", "About the Messer Lab", Q_NULLPTR));
        actionAboutBenHaller->setText(QApplication::translate("QtSLiMWindow", "About Ben Haller", Q_NULLPTR));
        actionAboutStickSoftware->setText(QApplication::translate("QtSLiMWindow", "About Stick Software", Q_NULLPTR));
        actionAboutQtSLiM->setText(QApplication::translate("QtSLiMWindow", "About SLiMgui", Q_NULLPTR));
        actionQuitQtSLiM->setText(QApplication::translate("QtSLiMWindow", "Quit SLiMgui", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionQuitQtSLiM->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Q", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionFindRecipe->setText(QApplication::translate("QtSLiMWindow", "Find Recipe...", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionFindRecipe->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+O", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionPreferences->setText(QApplication::translate("QtSLiMWindow", "Preferences...", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionPreferences->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+,", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionFindShow->setText(QApplication::translate("QtSLiMWindow", "Find...", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionFindShow->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+F", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionReplaceAndFind->setText(QApplication::translate("QtSLiMWindow", "Replace && Find", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionReplaceAndFind->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Alt+G", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionFindNext->setText(QApplication::translate("QtSLiMWindow", "Find Next", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionFindNext->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+G", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionFindPrevious->setText(QApplication::translate("QtSLiMWindow", "Find Previous", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionFindPrevious->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Shift+G", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionUseSelectionForFind->setText(QApplication::translate("QtSLiMWindow", "Use Selection for Find", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionUseSelectionForFind->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+E", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionJumpToSelection->setText(QApplication::translate("QtSLiMWindow", "Jump to Selection", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionJumpToSelection->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+J", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionRevertToSaved->setText(QApplication::translate("QtSLiMWindow", "Revert to Saved", Q_NULLPTR));
        actionOpenRecent->setText(QApplication::translate("QtSLiMWindow", "Open Recent", Q_NULLPTR));
        actionSLiMWorkshops->setText(QApplication::translate("QtSLiMWindow", "SLiM Workshops", Q_NULLPTR));
        actionUseSelectionForReplace->setText(QApplication::translate("QtSLiMWindow", "Use Selection for Replace", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionUseSelectionForReplace->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Alt+E", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionJumpToLine->setText(QApplication::translate("QtSLiMWindow", "Jump to Line", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionJumpToLine->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+L", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionMinimize->setText(QApplication::translate("QtSLiMWindow", "Minimize", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionMinimize->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+M", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
        actionZoom->setText(QApplication::translate("QtSLiMWindow", "Zoom", Q_NULLPTR));
        actionReformatScript->setText(QApplication::translate("QtSLiMWindow", "Reformat Script", Q_NULLPTR));
#ifndef QT_NO_SHORTCUT
        actionReformatScript->setShortcut(QApplication::translate("QtSLiMWindow", "Ctrl+Alt+Shift+=", Q_NULLPTR));
#endif // QT_NO_SHORTCUT
#ifndef QT_NO_TOOLTIP
        playOneStepButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>step one generation</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        playButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>play simulation continuously</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        profileButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>profile simulation</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        recycleButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>recycle simulation</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        playSpeedSlider->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>simulation playing speed</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        generationLabel->setText(QApplication::translate("QtSLiMWindow", "Generation:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        generationLineEdit->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>the generation that is about to execute</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        generationLineEdit->setText(QApplication::translate("QtSLiMWindow", "initialize()", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        toggleDrawerButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>open/close object tables window</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        showChromosomeMapsButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>toggle rate map visibility</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        showGenomicElementsButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>toggle genomic element visibility</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        showMutationsButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>toggle mutation visibility</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        showFixedSubstitutionsButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>toggle fixed substitution visibility</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        checkScriptButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>check script syntax</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        prettyprintButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>prettyprint script; option-click/alt-click to do a full reformat</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        scriptHelpButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>scripting help</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        consoleButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>show/hide Eidos console</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        browserButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>show/hide Eidos variable browser</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        scriptHeaderLabel->setText(QApplication::translate("QtSLiMWindow", "Input Commands:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        jumpToPopupButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>jump to an event or callback</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        clearOutputButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>clear output log</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        dumpPopulationButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>dump population state</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        outputHeaderLabel->setText(QApplication::translate("QtSLiMWindow", "Run Output:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        graphPopupButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>show a graph</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        changeDirectoryButton->setToolTip(QApplication::translate("QtSLiMWindow", "<html><head/><body><p>change working directory</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        menuFile->setTitle(QApplication::translate("QtSLiMWindow", "File", Q_NULLPTR));
        menuOpenRecipe->setTitle(QApplication::translate("QtSLiMWindow", "Open Recipe", Q_NULLPTR));
        menuEdit->setTitle(QApplication::translate("QtSLiMWindow", "Edit", Q_NULLPTR));
        menuFind->setTitle(QApplication::translate("QtSLiMWindow", "Find", Q_NULLPTR));
        menuSimulation->setTitle(QApplication::translate("QtSLiMWindow", "Simulation", Q_NULLPTR));
        menuScript->setTitle(QApplication::translate("QtSLiMWindow", "Script", Q_NULLPTR));
        menuHelp->setTitle(QApplication::translate("QtSLiMWindow", "Help", Q_NULLPTR));
        menuWindow->setTitle(QApplication::translate("QtSLiMWindow", "Window", Q_NULLPTR));
        Q_UNUSED(QtSLiMWindow);
    } // retranslateUi

};

namespace Ui {
    class QtSLiMWindow: public Ui_QtSLiMWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMWINDOW_H
