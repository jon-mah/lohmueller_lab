/********************************************************************************
** Form generated from reading UI file 'QtSLiMHaplotypeOptions.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMHAPLOTYPEOPTIONS_H
#define UI_QTSLIMHAPLOTYPEOPTIONS_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include "QtSLiMExtras.h"

QT_BEGIN_NAMESPACE

class Ui_QtSLiMHaplotypeOptions
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
    QVBoxLayout *verticalLayout_5;
    QGroupBox *groupBox;
    QVBoxLayout *verticalLayout_3;
    QRadioButton *genomesAllRadio;
    QRadioButton *genomesSampleRadio;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer;
    QLineEdit *sampleSizeLineEdit;
    QSpacerItem *horizontalSpacer_2;
    QGroupBox *groupBox_2;
    QVBoxLayout *verticalLayout_4;
    QRadioButton *clusterNearestRadio;
    QRadioButton *clusterGreedyRadio;
    QRadioButton *clusterGreedyOpt2Radio;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *QtSLiMHaplotypeOptions)
    {
        if (QtSLiMHaplotypeOptions->objectName().isEmpty())
            QtSLiMHaplotypeOptions->setObjectName(QStringLiteral("QtSLiMHaplotypeOptions"));
        QtSLiMHaplotypeOptions->resize(479, 437);
        QtSLiMHaplotypeOptions->setModal(true);
        horizontalLayout = new QHBoxLayout(QtSLiMHaplotypeOptions);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        appIconButton = new QtSLiMPushButton(QtSLiMHaplotypeOptions);
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
        label = new QLabel(QtSLiMHaplotypeOptions);
        label->setObjectName(QStringLiteral("label"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label->setFont(font);

        verticalLayout->addWidget(label);

        verticalSpacer_4 = new QSpacerItem(20, 5, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        label_2 = new QLabel(QtSLiMHaplotypeOptions);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setWordWrap(true);

        verticalLayout->addWidget(label_2);

        verticalSpacer_2 = new QSpacerItem(20, 12, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        horizontalSpacer_3 = new QSpacerItem(12, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_3);

        verticalLayout_5 = new QVBoxLayout();
        verticalLayout_5->setObjectName(QStringLiteral("verticalLayout_5"));
        groupBox = new QGroupBox(QtSLiMHaplotypeOptions);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        QSizePolicy sizePolicy1(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(groupBox->sizePolicy().hasHeightForWidth());
        groupBox->setSizePolicy(sizePolicy1);
        groupBox->setFlat(true);
        verticalLayout_3 = new QVBoxLayout(groupBox);
        verticalLayout_3->setSpacing(8);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(12, 12, -1, 10);
        genomesAllRadio = new QRadioButton(groupBox);
        genomesAllRadio->setObjectName(QStringLiteral("genomesAllRadio"));
        genomesAllRadio->setChecked(false);

        verticalLayout_3->addWidget(genomesAllRadio);

        genomesSampleRadio = new QRadioButton(groupBox);
        genomesSampleRadio->setObjectName(QStringLiteral("genomesSampleRadio"));
        genomesSampleRadio->setChecked(true);

        verticalLayout_3->addWidget(genomesSampleRadio);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalSpacer = new QSpacerItem(8, 5, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        sampleSizeLineEdit = new QLineEdit(groupBox);
        sampleSizeLineEdit->setObjectName(QStringLiteral("sampleSizeLineEdit"));
        sampleSizeLineEdit->setMinimumSize(QSize(65, 0));
        sampleSizeLineEdit->setMaximumSize(QSize(65, 16777215));
        sampleSizeLineEdit->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout_2->addWidget(sampleSizeLineEdit);

        horizontalSpacer_2 = new QSpacerItem(40, 5, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);


        verticalLayout_3->addLayout(horizontalLayout_2);


        verticalLayout_5->addWidget(groupBox);

        groupBox_2 = new QGroupBox(QtSLiMHaplotypeOptions);
        groupBox_2->setObjectName(QStringLiteral("groupBox_2"));
        sizePolicy1.setHeightForWidth(groupBox_2->sizePolicy().hasHeightForWidth());
        groupBox_2->setSizePolicy(sizePolicy1);
        groupBox_2->setFlat(true);
        verticalLayout_4 = new QVBoxLayout(groupBox_2);
        verticalLayout_4->setSpacing(8);
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        verticalLayout_4->setSizeConstraint(QLayout::SetDefaultConstraint);
        verticalLayout_4->setContentsMargins(-1, 12, -1, 24);
        clusterNearestRadio = new QRadioButton(groupBox_2);
        clusterNearestRadio->setObjectName(QStringLiteral("clusterNearestRadio"));
        clusterNearestRadio->setChecked(true);

        verticalLayout_4->addWidget(clusterNearestRadio);

        clusterGreedyRadio = new QRadioButton(groupBox_2);
        clusterGreedyRadio->setObjectName(QStringLiteral("clusterGreedyRadio"));

        verticalLayout_4->addWidget(clusterGreedyRadio);

        clusterGreedyOpt2Radio = new QRadioButton(groupBox_2);
        clusterGreedyOpt2Radio->setObjectName(QStringLiteral("clusterGreedyOpt2Radio"));

        verticalLayout_4->addWidget(clusterGreedyOpt2Radio);


        verticalLayout_5->addWidget(groupBox_2);


        horizontalLayout_3->addLayout(verticalLayout_5);


        verticalLayout->addLayout(horizontalLayout_3);

        buttonBox = new QDialogButtonBox(QtSLiMHaplotypeOptions);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        verticalLayout->addWidget(buttonBox);


        horizontalLayout->addLayout(verticalLayout);


        retranslateUi(QtSLiMHaplotypeOptions);
        QObject::connect(buttonBox, SIGNAL(accepted()), QtSLiMHaplotypeOptions, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), QtSLiMHaplotypeOptions, SLOT(reject()));

        QMetaObject::connectSlotsByName(QtSLiMHaplotypeOptions);
    } // setupUi

    void retranslateUi(QDialog *QtSLiMHaplotypeOptions)
    {
        QtSLiMHaplotypeOptions->setWindowTitle(QApplication::translate("QtSLiMHaplotypeOptions", "Haplotype Plot Options", Q_NULLPTR));
        label->setText(QApplication::translate("QtSLiMHaplotypeOptions", "Haplotype Plot Options", Q_NULLPTR));
        label_2->setText(QApplication::translate("QtSLiMHaplotypeOptions", "Choose options to be used in generating the haplotype plot.  Note that some choices may cause plot generation to take a very long time!", Q_NULLPTR));
        groupBox->setTitle(QApplication::translate("QtSLiMHaplotypeOptions", "Genomes to display:", Q_NULLPTR));
        genomesAllRadio->setText(QApplication::translate("QtSLiMHaplotypeOptions", "All genomes in the selected subpopulation", Q_NULLPTR));
        genomesSampleRadio->setText(QApplication::translate("QtSLiMHaplotypeOptions", "A sample from those genomes of size:", Q_NULLPTR));
        sampleSizeLineEdit->setText(QApplication::translate("QtSLiMHaplotypeOptions", "1000", Q_NULLPTR));
        groupBox_2->setTitle(QApplication::translate("QtSLiMHaplotypeOptions", "Clustering algorithm:", Q_NULLPTR));
        clusterNearestRadio->setText(QApplication::translate("QtSLiMHaplotypeOptions", "Nearest neighbor (faster for large samples)", Q_NULLPTR));
        clusterGreedyRadio->setText(QApplication::translate("QtSLiMHaplotypeOptions", "Greedy (a little slower, but higher quality)", Q_NULLPTR));
        clusterGreedyOpt2Radio->setText(QApplication::translate("QtSLiMHaplotypeOptions", "Greedy + 2-opt (very slow, highest quality)", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMHaplotypeOptions: public Ui_QtSLiMHaplotypeOptions {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMHAPLOTYPEOPTIONS_H
