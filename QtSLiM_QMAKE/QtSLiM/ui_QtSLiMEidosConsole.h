/********************************************************************************
** Form generated from reading UI file 'QtSLiMEidosConsole.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMEIDOSCONSOLE_H
#define UI_QTSLIMEIDOSCONSOLE_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "QtSLiMConsoleTextEdit.h"
#include "QtSLiMExtras.h"
#include "QtSLiMScriptTextEdit.h"

QT_BEGIN_NAMESPACE

class Ui_QtSLiMEidosConsole
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *overallLayout;
    QVBoxLayout *scriptLayout;
    QHBoxLayout *scriptHeaderLayout;
    QtSLiMPushButton *checkScriptButton;
    QtSLiMPushButton *prettyprintButton;
    QtSLiMPushButton *scriptHelpButton;
    QtSLiMPushButton *browserButton;
    QLabel *scriptHeaderLabel;
    QSpacerItem *horizontalSpacer;
    QtSLiMPushButton *executeSelectionButton;
    QtSLiMPushButton *executeAllButton;
    QtSLiMScriptTextEdit *scriptTextEdit;
    QVBoxLayout *outputLayout;
    QHBoxLayout *outputHeaderLayout;
    QtSLiMPushButton *clearOutputButton;
    QLabel *outputHeaderLabel;
    QSpacerItem *horizontalSpacer_3;
    QtSLiMConsoleTextEdit *consoleTextEdit;
    QHBoxLayout *statusBarLayout;

    void setupUi(QWidget *QtSLiMEidosConsole)
    {
        if (QtSLiMEidosConsole->objectName().isEmpty())
            QtSLiMEidosConsole->setObjectName(QStringLiteral("QtSLiMEidosConsole"));
        QtSLiMEidosConsole->resize(700, 500);
        QtSLiMEidosConsole->setMinimumSize(QSize(700, 250));
        verticalLayout = new QVBoxLayout(QtSLiMEidosConsole);
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        overallLayout = new QHBoxLayout();
        overallLayout->setSpacing(6);
        overallLayout->setObjectName(QStringLiteral("overallLayout"));
        overallLayout->setContentsMargins(3, 3, 3, 3);
        scriptLayout = new QVBoxLayout();
        scriptLayout->setSpacing(3);
        scriptLayout->setObjectName(QStringLiteral("scriptLayout"));
        scriptHeaderLayout = new QHBoxLayout();
        scriptHeaderLayout->setSpacing(3);
        scriptHeaderLayout->setObjectName(QStringLiteral("scriptHeaderLayout"));
        checkScriptButton = new QtSLiMPushButton(QtSLiMEidosConsole);
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
        QIcon icon;
        icon.addFile(QStringLiteral(":/buttons/check.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon.addFile(QStringLiteral(":/buttons/check_H.png"), QSize(), QIcon::Normal, QIcon::On);
        checkScriptButton->setIcon(icon);
        checkScriptButton->setIconSize(QSize(20, 20));
        checkScriptButton->setFlat(true);

        scriptHeaderLayout->addWidget(checkScriptButton);

        prettyprintButton = new QtSLiMPushButton(QtSLiMEidosConsole);
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
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/buttons/prettyprint.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon1.addFile(QStringLiteral(":/buttons/prettyprint_H.png"), QSize(), QIcon::Normal, QIcon::On);
        prettyprintButton->setIcon(icon1);
        prettyprintButton->setIconSize(QSize(20, 20));
        prettyprintButton->setFlat(true);

        scriptHeaderLayout->addWidget(prettyprintButton);

        scriptHelpButton = new QtSLiMPushButton(QtSLiMEidosConsole);
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
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/buttons/syntax_help.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon2.addFile(QStringLiteral(":/buttons/syntax_help_H.png"), QSize(), QIcon::Normal, QIcon::On);
        scriptHelpButton->setIcon(icon2);
        scriptHelpButton->setIconSize(QSize(20, 20));
        scriptHelpButton->setFlat(true);

        scriptHeaderLayout->addWidget(scriptHelpButton);

        browserButton = new QtSLiMPushButton(QtSLiMEidosConsole);
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
        QIcon icon3;
        icon3.addFile(QStringLiteral(":/buttons/show_browser.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon3.addFile(QStringLiteral(":/buttons/show_browser_H.png"), QSize(), QIcon::Normal, QIcon::On);
        browserButton->setIcon(icon3);
        browserButton->setIconSize(QSize(20, 20));
        browserButton->setCheckable(true);
        browserButton->setFlat(true);

        scriptHeaderLayout->addWidget(browserButton);

        scriptHeaderLabel = new QLabel(QtSLiMEidosConsole);
        scriptHeaderLabel->setObjectName(QStringLiteral("scriptHeaderLabel"));

        scriptHeaderLayout->addWidget(scriptHeaderLabel);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        scriptHeaderLayout->addItem(horizontalSpacer);

        executeSelectionButton = new QtSLiMPushButton(QtSLiMEidosConsole);
        executeSelectionButton->setObjectName(QStringLiteral("executeSelectionButton"));
        executeSelectionButton->setMinimumSize(QSize(20, 20));
        executeSelectionButton->setMaximumSize(QSize(20, 20));
        executeSelectionButton->setFocusPolicy(Qt::NoFocus);
        executeSelectionButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon4;
        icon4.addFile(QStringLiteral(":/buttons/execute_selection.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon4.addFile(QStringLiteral(":/buttons/execute_selection_H.png"), QSize(), QIcon::Normal, QIcon::On);
        executeSelectionButton->setIcon(icon4);
        executeSelectionButton->setIconSize(QSize(20, 20));
        executeSelectionButton->setCheckable(true);
        executeSelectionButton->setFlat(true);

        scriptHeaderLayout->addWidget(executeSelectionButton);

        executeAllButton = new QtSLiMPushButton(QtSLiMEidosConsole);
        executeAllButton->setObjectName(QStringLiteral("executeAllButton"));
        executeAllButton->setMinimumSize(QSize(20, 20));
        executeAllButton->setMaximumSize(QSize(20, 20));
        executeAllButton->setFocusPolicy(Qt::NoFocus);
        executeAllButton->setStyleSheet(QLatin1String("QPushButton:pressed {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}\n"
"QPushButton:checked {\n"
"	background-color: #00000000;\n"
"	border: 0px;\n"
"}"));
        QIcon icon5;
        icon5.addFile(QStringLiteral(":/buttons/execute_script.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon5.addFile(QStringLiteral(":/buttons/execute_script_H.png"), QSize(), QIcon::Normal, QIcon::On);
        executeAllButton->setIcon(icon5);
        executeAllButton->setIconSize(QSize(20, 20));
        executeAllButton->setFlat(true);

        scriptHeaderLayout->addWidget(executeAllButton);


        scriptLayout->addLayout(scriptHeaderLayout);

        scriptTextEdit = new QtSLiMScriptTextEdit(QtSLiMEidosConsole);
        scriptTextEdit->setObjectName(QStringLiteral("scriptTextEdit"));

        scriptLayout->addWidget(scriptTextEdit);


        overallLayout->addLayout(scriptLayout);

        outputLayout = new QVBoxLayout();
        outputLayout->setSpacing(3);
        outputLayout->setObjectName(QStringLiteral("outputLayout"));
        outputHeaderLayout = new QHBoxLayout();
        outputHeaderLayout->setSpacing(3);
        outputHeaderLayout->setObjectName(QStringLiteral("outputHeaderLayout"));
        clearOutputButton = new QtSLiMPushButton(QtSLiMEidosConsole);
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
        QIcon icon6;
        icon6.addFile(QStringLiteral(":/buttons/delete.png"), QSize(), QIcon::Normal, QIcon::Off);
        icon6.addFile(QStringLiteral(":/buttons/delete_H.png"), QSize(), QIcon::Normal, QIcon::On);
        clearOutputButton->setIcon(icon6);
        clearOutputButton->setIconSize(QSize(20, 20));
        clearOutputButton->setFlat(true);

        outputHeaderLayout->addWidget(clearOutputButton);

        outputHeaderLabel = new QLabel(QtSLiMEidosConsole);
        outputHeaderLabel->setObjectName(QStringLiteral("outputHeaderLabel"));

        outputHeaderLayout->addWidget(outputHeaderLabel);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        outputHeaderLayout->addItem(horizontalSpacer_3);


        outputLayout->addLayout(outputHeaderLayout);

        consoleTextEdit = new QtSLiMConsoleTextEdit(QtSLiMEidosConsole);
        consoleTextEdit->setObjectName(QStringLiteral("consoleTextEdit"));
        consoleTextEdit->setAcceptRichText(false);

        outputLayout->addWidget(consoleTextEdit);


        overallLayout->addLayout(outputLayout);

        overallLayout->setStretch(0, 2);
        overallLayout->setStretch(1, 3);

        verticalLayout->addLayout(overallLayout);

        statusBarLayout = new QHBoxLayout();
        statusBarLayout->setObjectName(QStringLiteral("statusBarLayout"));

        verticalLayout->addLayout(statusBarLayout);


        retranslateUi(QtSLiMEidosConsole);

        QMetaObject::connectSlotsByName(QtSLiMEidosConsole);
    } // setupUi

    void retranslateUi(QWidget *QtSLiMEidosConsole)
    {
        QtSLiMEidosConsole->setWindowTitle(QApplication::translate("QtSLiMEidosConsole", "Eidos Console", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        checkScriptButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>check script syntax</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        prettyprintButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>prettyprint script</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        scriptHelpButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>scripting help</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        browserButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>show/hide Eidos variable browser</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        scriptHeaderLabel->setText(QApplication::translate("QtSLiMEidosConsole", " Eidos:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        executeSelectionButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>execute selection</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        executeAllButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>execute full script</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        clearOutputButton->setToolTip(QApplication::translate("QtSLiMEidosConsole", "<html><head/><body><p>clear output log</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        outputHeaderLabel->setText(QApplication::translate("QtSLiMEidosConsole", " Console:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMEidosConsole: public Ui_QtSLiMEidosConsole {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMEIDOSCONSOLE_H
