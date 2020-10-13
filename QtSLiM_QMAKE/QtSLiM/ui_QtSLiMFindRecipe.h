/********************************************************************************
** Form generated from reading UI file 'QtSLiMFindRecipe.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMFINDRECIPE_H
#define UI_QTSLIMFINDRECIPE_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include "QtSLiMExtras.h"

QT_BEGIN_NAMESPACE

class Ui_QtSLiMFindRecipe
{
public:
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout;
    QtSLiMPushButton *iconSLiM;
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QLabel *label_2;
    QHBoxLayout *horizontalLayout_3;
    QSpacerItem *horizontalSpacer;
    QVBoxLayout *verticalLayout_4;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_3;
    QVBoxLayout *verticalLayout_2;
    QLineEdit *keyword1LineEdit;
    QLabel *label_4;
    QLineEdit *keyword2LineEdit;
    QLabel *label_5;
    QLineEdit *keyword3LineEdit;
    QSpacerItem *verticalSpacer;
    QLabel *label_6;
    QListWidget *matchListWidget;
    QTextEdit *scriptPreviewTextEdit;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *QtSLiMFindRecipe)
    {
        if (QtSLiMFindRecipe->objectName().isEmpty())
            QtSLiMFindRecipe->setObjectName(QStringLiteral("QtSLiMFindRecipe"));
        QtSLiMFindRecipe->resize(824, 736);
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(QtSLiMFindRecipe->sizePolicy().hasHeightForWidth());
        QtSLiMFindRecipe->setSizePolicy(sizePolicy);
        QtSLiMFindRecipe->setModal(true);
        verticalLayout_3 = new QVBoxLayout(QtSLiMFindRecipe);
        verticalLayout_3->setSpacing(20);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(20, 20, 20, 20);
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setSizeConstraint(QLayout::SetMinimumSize);
        iconSLiM = new QtSLiMPushButton(QtSLiMFindRecipe);
        iconSLiM->setObjectName(QStringLiteral("iconSLiM"));
        iconSLiM->setEnabled(true);
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(iconSLiM->sizePolicy().hasHeightForWidth());
        iconSLiM->setSizePolicy(sizePolicy1);
        iconSLiM->setMinimumSize(QSize(48, 48));
        iconSLiM->setMaximumSize(QSize(48, 48));
        QIcon icon;
        icon.addFile(QStringLiteral(":/icons/AppIcon128.png"), QSize(), QIcon::Normal, QIcon::Off);
        iconSLiM->setIcon(icon);
        iconSLiM->setIconSize(QSize(48, 48));
        iconSLiM->setAutoDefault(false);
        iconSLiM->setFlat(true);

        horizontalLayout->addWidget(iconSLiM);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(3);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        label = new QLabel(QtSLiMFindRecipe);
        label->setObjectName(QStringLiteral("label"));

        verticalLayout->addWidget(label);

        label_2 = new QLabel(QtSLiMFindRecipe);
        label_2->setObjectName(QStringLiteral("label_2"));

        verticalLayout->addWidget(label_2);


        horizontalLayout->addLayout(verticalLayout);


        verticalLayout_3->addLayout(horizontalLayout);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        horizontalSpacer = new QSpacerItem(70, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setSpacing(12);
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setSizeConstraint(QLayout::SetMinimumSize);
        label_3 = new QLabel(QtSLiMFindRecipe);
        label_3->setObjectName(QStringLiteral("label_3"));

        horizontalLayout_2->addWidget(label_3, 0, Qt::AlignTop);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(2);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        keyword1LineEdit = new QLineEdit(QtSLiMFindRecipe);
        keyword1LineEdit->setObjectName(QStringLiteral("keyword1LineEdit"));

        verticalLayout_2->addWidget(keyword1LineEdit);

        label_4 = new QLabel(QtSLiMFindRecipe);
        label_4->setObjectName(QStringLiteral("label_4"));

        verticalLayout_2->addWidget(label_4);

        keyword2LineEdit = new QLineEdit(QtSLiMFindRecipe);
        keyword2LineEdit->setObjectName(QStringLiteral("keyword2LineEdit"));

        verticalLayout_2->addWidget(keyword2LineEdit);

        label_5 = new QLabel(QtSLiMFindRecipe);
        label_5->setObjectName(QStringLiteral("label_5"));

        verticalLayout_2->addWidget(label_5);

        keyword3LineEdit = new QLineEdit(QtSLiMFindRecipe);
        keyword3LineEdit->setObjectName(QStringLiteral("keyword3LineEdit"));

        verticalLayout_2->addWidget(keyword3LineEdit);


        horizontalLayout_2->addLayout(verticalLayout_2);


        verticalLayout_4->addLayout(horizontalLayout_2);

        verticalSpacer = new QSpacerItem(20, 5, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout_4->addItem(verticalSpacer);

        label_6 = new QLabel(QtSLiMFindRecipe);
        label_6->setObjectName(QStringLiteral("label_6"));

        verticalLayout_4->addWidget(label_6);

        matchListWidget = new QListWidget(QtSLiMFindRecipe);
        matchListWidget->setObjectName(QStringLiteral("matchListWidget"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(1);
        sizePolicy2.setHeightForWidth(matchListWidget->sizePolicy().hasHeightForWidth());
        matchListWidget->setSizePolicy(sizePolicy2);
        matchListWidget->setMinimumSize(QSize(700, 110));
        matchListWidget->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);

        verticalLayout_4->addWidget(matchListWidget);

        scriptPreviewTextEdit = new QTextEdit(QtSLiMFindRecipe);
        scriptPreviewTextEdit->setObjectName(QStringLiteral("scriptPreviewTextEdit"));
        QSizePolicy sizePolicy3(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(2);
        sizePolicy3.setHeightForWidth(scriptPreviewTextEdit->sizePolicy().hasHeightForWidth());
        scriptPreviewTextEdit->setSizePolicy(sizePolicy3);
        scriptPreviewTextEdit->setMinimumSize(QSize(0, 220));
        scriptPreviewTextEdit->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
        scriptPreviewTextEdit->setReadOnly(true);

        verticalLayout_4->addWidget(scriptPreviewTextEdit);


        horizontalLayout_3->addLayout(verticalLayout_4);


        verticalLayout_3->addLayout(horizontalLayout_3);

        buttonBox = new QDialogButtonBox(QtSLiMFindRecipe);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        verticalLayout_3->addWidget(buttonBox);


        retranslateUi(QtSLiMFindRecipe);
        QObject::connect(buttonBox, SIGNAL(accepted()), QtSLiMFindRecipe, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), QtSLiMFindRecipe, SLOT(reject()));

        QMetaObject::connectSlotsByName(QtSLiMFindRecipe);
    } // setupUi

    void retranslateUi(QDialog *QtSLiMFindRecipe)
    {
        label->setText(QApplication::translate("QtSLiMFindRecipe", "<html><head/><body><p><span style=\" font-weight:600;\">Find Recipe</span></p></body></html>", Q_NULLPTR));
        label_2->setText(QApplication::translate("QtSLiMFindRecipe", "Enter the search keywords and select a match from the list.", Q_NULLPTR));
        label_3->setText(QApplication::translate("QtSLiMFindRecipe", "Keywords:", Q_NULLPTR));
        label_4->setText(QApplication::translate("QtSLiMFindRecipe", "<html><head/><body><p align=\"center\"><span style=\" font-size:11pt;\">AND</span></p></body></html>", Q_NULLPTR));
        label_5->setText(QApplication::translate("QtSLiMFindRecipe", "<html><head/><body><p align=\"center\"><span style=\" font-size:11pt;\">AND</span></p></body></html>", Q_NULLPTR));
        label_6->setText(QApplication::translate("QtSLiMFindRecipe", "Matches:", Q_NULLPTR));
        Q_UNUSED(QtSLiMFindRecipe);
    } // retranslateUi

};

namespace Ui {
    class QtSLiMFindRecipe: public Ui_QtSLiMFindRecipe {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMFINDRECIPE_H
