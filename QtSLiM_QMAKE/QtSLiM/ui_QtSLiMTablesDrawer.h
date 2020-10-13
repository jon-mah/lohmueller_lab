/********************************************************************************
** Form generated from reading UI file 'QtSLiMTablesDrawer.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMTABLESDRAWER_H
#define UI_QTSLIMTABLESDRAWER_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTableView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QtSLiMTablesDrawer
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *mutationTypeLabel;
    QTableView *mutationTypeTable;
    QSpacerItem *verticalSpacer;
    QLabel *genomicElementTypeLabel;
    QTableView *genomicElementTypeTable;
    QSpacerItem *verticalSpacer_2;
    QLabel *interactionTypeLabel;
    QTableView *interactionTypeTable;
    QSpacerItem *verticalSpacer_3;
    QLabel *eidosBlockLabel;
    QTableView *eidosBlockTable;

    void setupUi(QWidget *QtSLiMTablesDrawer)
    {
        if (QtSLiMTablesDrawer->objectName().isEmpty())
            QtSLiMTablesDrawer->setObjectName(QStringLiteral("QtSLiMTablesDrawer"));
        QtSLiMTablesDrawer->resize(400, 810);
        QtSLiMTablesDrawer->setMinimumSize(QSize(270, 500));
        QtSLiMTablesDrawer->setMaximumSize(QSize(500, 16777215));
        verticalLayout = new QVBoxLayout(QtSLiMTablesDrawer);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(10, 10, 10, 10);
        mutationTypeLabel = new QLabel(QtSLiMTablesDrawer);
        mutationTypeLabel->setObjectName(QStringLiteral("mutationTypeLabel"));

        verticalLayout->addWidget(mutationTypeLabel);

        mutationTypeTable = new QTableView(QtSLiMTablesDrawer);
        mutationTypeTable->setObjectName(QStringLiteral("mutationTypeTable"));
        mutationTypeTable->setFocusPolicy(Qt::NoFocus);
        mutationTypeTable->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        mutationTypeTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
        mutationTypeTable->setTabKeyNavigation(false);
        mutationTypeTable->setProperty("showDropIndicator", QVariant(false));
        mutationTypeTable->setSelectionMode(QAbstractItemView::NoSelection);
        mutationTypeTable->setShowGrid(false);
        mutationTypeTable->setWordWrap(false);
        mutationTypeTable->setCornerButtonEnabled(false);
        mutationTypeTable->verticalHeader()->setVisible(false);

        verticalLayout->addWidget(mutationTypeTable);

        verticalSpacer = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        genomicElementTypeLabel = new QLabel(QtSLiMTablesDrawer);
        genomicElementTypeLabel->setObjectName(QStringLiteral("genomicElementTypeLabel"));

        verticalLayout->addWidget(genomicElementTypeLabel);

        genomicElementTypeTable = new QTableView(QtSLiMTablesDrawer);
        genomicElementTypeTable->setObjectName(QStringLiteral("genomicElementTypeTable"));
        genomicElementTypeTable->setFocusPolicy(Qt::NoFocus);
        genomicElementTypeTable->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        genomicElementTypeTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
        genomicElementTypeTable->setTabKeyNavigation(false);
        genomicElementTypeTable->setProperty("showDropIndicator", QVariant(false));
        genomicElementTypeTable->setSelectionMode(QAbstractItemView::NoSelection);
        genomicElementTypeTable->setShowGrid(false);
        genomicElementTypeTable->setWordWrap(false);
        genomicElementTypeTable->setCornerButtonEnabled(false);
        genomicElementTypeTable->verticalHeader()->setVisible(false);

        verticalLayout->addWidget(genomicElementTypeTable);

        verticalSpacer_2 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        interactionTypeLabel = new QLabel(QtSLiMTablesDrawer);
        interactionTypeLabel->setObjectName(QStringLiteral("interactionTypeLabel"));

        verticalLayout->addWidget(interactionTypeLabel);

        interactionTypeTable = new QTableView(QtSLiMTablesDrawer);
        interactionTypeTable->setObjectName(QStringLiteral("interactionTypeTable"));
        interactionTypeTable->setFocusPolicy(Qt::NoFocus);
        interactionTypeTable->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        interactionTypeTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
        interactionTypeTable->setTabKeyNavigation(false);
        interactionTypeTable->setProperty("showDropIndicator", QVariant(false));
        interactionTypeTable->setSelectionMode(QAbstractItemView::NoSelection);
        interactionTypeTable->setShowGrid(false);
        interactionTypeTable->setWordWrap(false);
        interactionTypeTable->setCornerButtonEnabled(false);
        interactionTypeTable->verticalHeader()->setVisible(false);

        verticalLayout->addWidget(interactionTypeTable);

        verticalSpacer_3 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_3);

        eidosBlockLabel = new QLabel(QtSLiMTablesDrawer);
        eidosBlockLabel->setObjectName(QStringLiteral("eidosBlockLabel"));

        verticalLayout->addWidget(eidosBlockLabel);

        eidosBlockTable = new QTableView(QtSLiMTablesDrawer);
        eidosBlockTable->setObjectName(QStringLiteral("eidosBlockTable"));
        eidosBlockTable->setFocusPolicy(Qt::NoFocus);
        eidosBlockTable->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        eidosBlockTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
        eidosBlockTable->setTabKeyNavigation(false);
        eidosBlockTable->setProperty("showDropIndicator", QVariant(false));
        eidosBlockTable->setSelectionMode(QAbstractItemView::NoSelection);
        eidosBlockTable->setShowGrid(false);
        eidosBlockTable->setWordWrap(false);
        eidosBlockTable->setCornerButtonEnabled(false);
        eidosBlockTable->verticalHeader()->setVisible(false);

        verticalLayout->addWidget(eidosBlockTable);


        retranslateUi(QtSLiMTablesDrawer);

        QMetaObject::connectSlotsByName(QtSLiMTablesDrawer);
    } // setupUi

    void retranslateUi(QWidget *QtSLiMTablesDrawer)
    {
        QtSLiMTablesDrawer->setWindowTitle(QApplication::translate("QtSLiMTablesDrawer", "Object Tables", Q_NULLPTR));
        mutationTypeLabel->setText(QApplication::translate("QtSLiMTablesDrawer", "Mutation Types:", Q_NULLPTR));
        genomicElementTypeLabel->setText(QApplication::translate("QtSLiMTablesDrawer", "Genomic Element Types:", Q_NULLPTR));
        interactionTypeLabel->setText(QApplication::translate("QtSLiMTablesDrawer", "Interaction Types:", Q_NULLPTR));
        eidosBlockLabel->setText(QApplication::translate("QtSLiMTablesDrawer", "Eidos Blocks:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMTablesDrawer: public Ui_QtSLiMTablesDrawer {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMTABLESDRAWER_H
