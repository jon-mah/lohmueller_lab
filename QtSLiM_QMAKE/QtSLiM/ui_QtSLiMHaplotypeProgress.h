/********************************************************************************
** Form generated from reading UI file 'QtSLiMHaplotypeProgress.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMHAPLOTYPEPROGRESS_H
#define UI_QTSLIMHAPLOTYPEPROGRESS_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include "QtSLiMExtras.h"

QT_BEGIN_NAMESPACE

class Ui_QtSLiMHaplotypeProgress
{
public:
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_2;
    QtSLiMPushButton *appIconButton;
    QSpacerItem *verticalSpacer;
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QSpacerItem *verticalSpacer_4;
    QLabel *label_2;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout_3;
    QSpacerItem *horizontalSpacer_3;
    QVBoxLayout *barBoxLayout;
    QGroupBox *step1Box;
    QVBoxLayout *verticalLayout_3;
    QProgressBar *step1ProgressBar;
    QGroupBox *step2Box;
    QVBoxLayout *verticalLayout_4;
    QProgressBar *step2ProgressBar;
    QGroupBox *step3Box;
    QVBoxLayout *verticalLayout_6;
    QProgressBar *step3ProgressBar;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *cancelButton;

    void setupUi(QDialog *QtSLiMHaplotypeProgress)
    {
        if (QtSLiMHaplotypeProgress->objectName().isEmpty())
            QtSLiMHaplotypeProgress->setObjectName(QStringLiteral("QtSLiMHaplotypeProgress"));
        QtSLiMHaplotypeProgress->resize(327, 298);
        QtSLiMHaplotypeProgress->setModal(true);
        horizontalLayout = new QHBoxLayout(QtSLiMHaplotypeProgress);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        appIconButton = new QtSLiMPushButton(QtSLiMHaplotypeProgress);
        appIconButton->setObjectName(QStringLiteral("appIconButton"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(appIconButton->sizePolicy().hasHeightForWidth());
        appIconButton->setSizePolicy(sizePolicy);
        appIconButton->setMinimumSize(QSize(48, 48));
        appIconButton->setMaximumSize(QSize(48, 48));
        QIcon icon;
        icon.addFile(QStringLiteral(":/icons/AppIcon128.png"), QSize(), QIcon::Normal, QIcon::Off);
        appIconButton->setIcon(icon);
        appIconButton->setIconSize(QSize(48, 48));
        appIconButton->setFlat(true);

        verticalLayout_2->addWidget(appIconButton);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer);


        horizontalLayout->addLayout(verticalLayout_2);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        label = new QLabel(QtSLiMHaplotypeProgress);
        label->setObjectName(QStringLiteral("label"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label->setFont(font);

        verticalLayout->addWidget(label);

        verticalSpacer_4 = new QSpacerItem(20, 5, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        label_2 = new QLabel(QtSLiMHaplotypeProgress);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setWordWrap(true);

        verticalLayout->addWidget(label_2);

        verticalSpacer_2 = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        horizontalSpacer_3 = new QSpacerItem(12, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_3);

        barBoxLayout = new QVBoxLayout();
        barBoxLayout->setObjectName(QStringLiteral("barBoxLayout"));
        step1Box = new QGroupBox(QtSLiMHaplotypeProgress);
        step1Box->setObjectName(QStringLiteral("step1Box"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(step1Box->sizePolicy().hasHeightForWidth());
        step1Box->setSizePolicy(sizePolicy1);
        step1Box->setFlat(true);
        verticalLayout_3 = new QVBoxLayout(step1Box);
        verticalLayout_3->setSpacing(8);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(12, 12, -1, 10);
        step1ProgressBar = new QProgressBar(step1Box);
        step1ProgressBar->setObjectName(QStringLiteral("step1ProgressBar"));
        step1ProgressBar->setValue(24);

        verticalLayout_3->addWidget(step1ProgressBar);


        barBoxLayout->addWidget(step1Box);

        step2Box = new QGroupBox(QtSLiMHaplotypeProgress);
        step2Box->setObjectName(QStringLiteral("step2Box"));
        sizePolicy1.setHeightForWidth(step2Box->sizePolicy().hasHeightForWidth());
        step2Box->setSizePolicy(sizePolicy1);
        step2Box->setFlat(true);
        verticalLayout_4 = new QVBoxLayout(step2Box);
        verticalLayout_4->setSpacing(8);
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        verticalLayout_4->setSizeConstraint(QLayout::SetDefaultConstraint);
        verticalLayout_4->setContentsMargins(-1, 12, -1, 10);
        step2ProgressBar = new QProgressBar(step2Box);
        step2ProgressBar->setObjectName(QStringLiteral("step2ProgressBar"));
        step2ProgressBar->setValue(24);

        verticalLayout_4->addWidget(step2ProgressBar);


        barBoxLayout->addWidget(step2Box);

        step3Box = new QGroupBox(QtSLiMHaplotypeProgress);
        step3Box->setObjectName(QStringLiteral("step3Box"));
        step3Box->setFlat(true);
        verticalLayout_6 = new QVBoxLayout(step3Box);
        verticalLayout_6->setSpacing(8);
        verticalLayout_6->setObjectName(QStringLiteral("verticalLayout_6"));
        verticalLayout_6->setContentsMargins(-1, -1, -1, 16);
        step3ProgressBar = new QProgressBar(step3Box);
        step3ProgressBar->setObjectName(QStringLiteral("step3ProgressBar"));
        step3ProgressBar->setValue(24);

        verticalLayout_6->addWidget(step3ProgressBar);


        barBoxLayout->addWidget(step3Box);


        horizontalLayout_3->addLayout(barBoxLayout);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(0);
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        cancelButton = new QPushButton(QtSLiMHaplotypeProgress);
        cancelButton->setObjectName(QStringLiteral("cancelButton"));
        sizePolicy.setHeightForWidth(cancelButton->sizePolicy().hasHeightForWidth());
        cancelButton->setSizePolicy(sizePolicy);

        horizontalLayout_2->addWidget(cancelButton);


        verticalLayout->addLayout(horizontalLayout_2);


        horizontalLayout->addLayout(verticalLayout);


        retranslateUi(QtSLiMHaplotypeProgress);

        QMetaObject::connectSlotsByName(QtSLiMHaplotypeProgress);
    } // setupUi

    void retranslateUi(QDialog *QtSLiMHaplotypeProgress)
    {
        QtSLiMHaplotypeProgress->setWindowTitle(QApplication::translate("QtSLiMHaplotypeProgress", "Haplotype Plot Progress", Q_NULLPTR));
        label->setText(QApplication::translate("QtSLiMHaplotypeProgress", "Haplotype Plot Progress", Q_NULLPTR));
        label_2->setText(QApplication::translate("QtSLiMHaplotypeProgress", "Please wait for the haplotype analysis to complete...", Q_NULLPTR));
        step1Box->setTitle(QApplication::translate("QtSLiMHaplotypeProgress", "Calculating genetic distances:", Q_NULLPTR));
        step2Box->setTitle(QApplication::translate("QtSLiMHaplotypeProgress", "Clustering genomes:", Q_NULLPTR));
        step3Box->setTitle(QApplication::translate("QtSLiMHaplotypeProgress", "Optimizing clustering:", Q_NULLPTR));
        cancelButton->setText(QApplication::translate("QtSLiMHaplotypeProgress", "Cancel", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMHaplotypeProgress: public Ui_QtSLiMHaplotypeProgress {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMHAPLOTYPEPROGRESS_H
