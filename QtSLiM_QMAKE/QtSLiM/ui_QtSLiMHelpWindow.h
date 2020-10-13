/********************************************************************************
** Form generated from reading UI file 'QtSLiMHelpWindow.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMHELPWINDOW_H
#define UI_QTSLIMHELPWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QTreeWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QtSLiMHelpWindow
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *searchScopeButton;
    QLineEdit *searchField;
    QHBoxLayout *horizontalLayout;
    QTreeWidget *topicOutlineView;
    QTextEdit *descriptionTextEdit;

    void setupUi(QWidget *QtSLiMHelpWindow)
    {
        if (QtSLiMHelpWindow->objectName().isEmpty())
            QtSLiMHelpWindow->setObjectName(QStringLiteral("QtSLiMHelpWindow"));
        QtSLiMHelpWindow->resize(550, 241);
        verticalLayout = new QVBoxLayout(QtSLiMHelpWindow);
        verticalLayout->setSpacing(4);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(4, 4, 4, 4);
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(4);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        searchScopeButton = new QPushButton(QtSLiMHelpWindow);
        searchScopeButton->setObjectName(QStringLiteral("searchScopeButton"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(searchScopeButton->sizePolicy().hasHeightForWidth());
        searchScopeButton->setSizePolicy(sizePolicy);
        searchScopeButton->setMinimumSize(QSize(60, 0));
        searchScopeButton->setMaximumSize(QSize(60, 16777215));
        QFont font;
        font.setPointSize(9);
        searchScopeButton->setFont(font);
        searchScopeButton->setFocusPolicy(Qt::NoFocus);
        searchScopeButton->setStyleSheet(QLatin1String("QPushButton {\n"
"border: 1px solid #888;\n"
"border-radius: 20px;\n"
"border-style: outset;\n"
"margin: 0px;\n"
"padding: 2px;\n"
"background: rgb(245, 245, 245);\n"
"}\n"
"QPushButton:pressed {\n"
"background: rgb(195, 195, 195);\n"
"}"));
        searchScopeButton->setAutoDefault(false);

        horizontalLayout_2->addWidget(searchScopeButton);

        searchField = new QLineEdit(QtSLiMHelpWindow);
        searchField->setObjectName(QStringLiteral("searchField"));

        horizontalLayout_2->addWidget(searchField);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(4);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        topicOutlineView = new QTreeWidget(QtSLiMHelpWindow);
        QTreeWidgetItem *__qtreewidgetitem = new QTreeWidgetItem();
        __qtreewidgetitem->setText(0, QStringLiteral("1"));
        topicOutlineView->setHeaderItem(__qtreewidgetitem);
        topicOutlineView->setObjectName(QStringLiteral("topicOutlineView"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Expanding);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(topicOutlineView->sizePolicy().hasHeightForWidth());
        topicOutlineView->setSizePolicy(sizePolicy1);
        topicOutlineView->setMinimumSize(QSize(280, 200));
        topicOutlineView->setMaximumSize(QSize(280, 16777215));
        QFont font1;
        font1.setPointSize(11);
        topicOutlineView->setFont(font1);
        topicOutlineView->setFocusPolicy(Qt::ClickFocus);
        topicOutlineView->setEditTriggers(QAbstractItemView::NoEditTriggers);
        topicOutlineView->setSelectionMode(QAbstractItemView::ExtendedSelection);
        topicOutlineView->setIndentation(13);
        topicOutlineView->setHeaderHidden(true);
        topicOutlineView->setExpandsOnDoubleClick(false);

        horizontalLayout->addWidget(topicOutlineView);

        descriptionTextEdit = new QTextEdit(QtSLiMHelpWindow);
        descriptionTextEdit->setObjectName(QStringLiteral("descriptionTextEdit"));
        descriptionTextEdit->setMinimumSize(QSize(250, 0));
        descriptionTextEdit->setFocusPolicy(Qt::ClickFocus);
        descriptionTextEdit->setUndoRedoEnabled(false);
        descriptionTextEdit->setReadOnly(true);

        horizontalLayout->addWidget(descriptionTextEdit);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(QtSLiMHelpWindow);

        QMetaObject::connectSlotsByName(QtSLiMHelpWindow);
    } // setupUi

    void retranslateUi(QWidget *QtSLiMHelpWindow)
    {
        QtSLiMHelpWindow->setWindowTitle(QApplication::translate("QtSLiMHelpWindow", "Scripting Help", Q_NULLPTR));
        searchScopeButton->setText(QApplication::translate("QtSLiMHelpWindow", "\360\237\224\215  headers", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMHelpWindow: public Ui_QtSLiMHelpWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMHELPWINDOW_H
