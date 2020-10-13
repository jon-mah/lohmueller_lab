/********************************************************************************
** Form generated from reading UI file 'QtSLiMAbout.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMABOUT_H
#define UI_QTSLIMABOUT_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include "QtSLiMExtras.h"

QT_BEGIN_NAMESPACE

class Ui_QtSLiMAbout
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QtSLiMPushButton *appIconButton;
    QVBoxLayout *verticalLayout_2;
    QSpacerItem *verticalSpacer_4;
    QVBoxLayout *verticalLayout_3;
    QLabel *label_5;
    QSpacerItem *verticalSpacer;
    QLabel *label_4;
    QLabel *label_3;
    QSpacerItem *verticalSpacer_2;
    QLabel *label_2;
    QSpacerItem *verticalSpacer_3;
    QHBoxLayout *horizontalLayout_3;
    QSpacerItem *horizontalSpacer;
    QLabel *label_6;
    QSpacerItem *horizontalSpacer_2;
    QHBoxLayout *horizontalLayout_2;
    QLabel *versionLabel;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *QtSLiMAbout)
    {
        if (QtSLiMAbout->objectName().isEmpty())
            QtSLiMAbout->setObjectName(QStringLiteral("QtSLiMAbout"));
        QtSLiMAbout->resize(620, 554);
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(QtSLiMAbout->sizePolicy().hasHeightForWidth());
        QtSLiMAbout->setSizePolicy(sizePolicy);
        verticalLayout = new QVBoxLayout(QtSLiMAbout);
        verticalLayout->setSpacing(20);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(20);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        appIconButton = new QtSLiMPushButton(QtSLiMAbout);
        appIconButton->setObjectName(QStringLiteral("appIconButton"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(appIconButton->sizePolicy().hasHeightForWidth());
        appIconButton->setSizePolicy(sizePolicy1);
        appIconButton->setMinimumSize(QSize(128, 128));
        appIconButton->setMaximumSize(QSize(128, 128));
        QIcon icon;
        icon.addFile(QStringLiteral(":/icons/AppIcon128.png"), QSize(), QIcon::Normal, QIcon::Off);
        appIconButton->setIcon(icon);
        appIconButton->setIconSize(QSize(128, 128));
        appIconButton->setFlat(true);

        horizontalLayout->addWidget(appIconButton);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalSpacer_4 = new QSpacerItem(20, 10, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer_4);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setSpacing(3);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        label_5 = new QLabel(QtSLiMAbout);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setEnabled(true);
        QSizePolicy sizePolicy2(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(label_5->sizePolicy().hasHeightForWidth());
        label_5->setSizePolicy(sizePolicy2);
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_5->setFont(font);

        verticalLayout_3->addWidget(label_5);

        verticalSpacer = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout_3->addItem(verticalSpacer);

        label_4 = new QLabel(QtSLiMAbout);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setOpenExternalLinks(true);

        verticalLayout_3->addWidget(label_4);

        label_3 = new QLabel(QtSLiMAbout);
        label_3->setObjectName(QStringLiteral("label_3"));

        verticalLayout_3->addWidget(label_3);

        verticalSpacer_2 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout_3->addItem(verticalSpacer_2);

        label_2 = new QLabel(QtSLiMAbout);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setOpenExternalLinks(true);

        verticalLayout_3->addWidget(label_2);


        verticalLayout_2->addLayout(verticalLayout_3);

        verticalSpacer_3 = new QSpacerItem(20, 10, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer_3);


        horizontalLayout->addLayout(verticalLayout_2);


        verticalLayout->addLayout(horizontalLayout);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        horizontalSpacer = new QSpacerItem(20, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer);

        label_6 = new QLabel(QtSLiMAbout);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setWordWrap(true);
        label_6->setOpenExternalLinks(true);
        label_6->setTextInteractionFlags(Qt::LinksAccessibleByMouse);

        horizontalLayout_3->addWidget(label_6);

        horizontalSpacer_2 = new QSpacerItem(20, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_2);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        versionLabel = new QLabel(QtSLiMAbout);
        versionLabel->setObjectName(QStringLiteral("versionLabel"));
        QSizePolicy sizePolicy3(QSizePolicy::Preferred, QSizePolicy::Minimum);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(versionLabel->sizePolicy().hasHeightForWidth());
        versionLabel->setSizePolicy(sizePolicy3);
        QFont font1;
        font1.setPointSize(10);
        versionLabel->setFont(font1);

        horizontalLayout_2->addWidget(versionLabel);

        buttonBox = new QDialogButtonBox(QtSLiMAbout);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Close);

        horizontalLayout_2->addWidget(buttonBox);


        verticalLayout->addLayout(horizontalLayout_2);


        retranslateUi(QtSLiMAbout);
        QObject::connect(buttonBox, SIGNAL(accepted()), QtSLiMAbout, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), QtSLiMAbout, SLOT(reject()));

        QMetaObject::connectSlotsByName(QtSLiMAbout);
    } // setupUi

    void retranslateUi(QDialog *QtSLiMAbout)
    {
        label_5->setText(QApplication::translate("QtSLiMAbout", "<html><head/><body><p><span style=\" font-size:15pt;\">SLiMgui : A graphical user interface for SLiM</span></p></body></html>", Q_NULLPTR));
        label_4->setText(QApplication::translate("QtSLiMAbout", "<html><head/><body><p>Messer Lab, Cornell University, <a href=\"http://messerlab.org/slim/\"><span style=\" text-decoration: underline; color:#0000ff;\">http://messerlab.org/slim/</span></a></p></body></html>", Q_NULLPTR));
        label_3->setText(QApplication::translate("QtSLiMAbout", "Copyright \302\251 2016\342\200\2232020 Philipp Messer.  All rights reserved.", Q_NULLPTR));
        label_2->setText(QApplication::translate("QtSLiMAbout", "<html><head/><body><p>By Benjamin C. Haller, <a href=\"http://benhaller.com/\"><span style=\" text-decoration: underline; color:#0000ff;\">http://benhaller.com/</span></a></p></body></html>", Q_NULLPTR));
        label_6->setText(QApplication::translate("QtSLiMAbout", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'.SF NS Text'; font-size:12pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:10px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">SLiM is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</p>\n"
"<p style=\" margin-top:10px; margin-bottom:10px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">SLiM is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public Li"
                        "cense for more details.</p>\n"
"<p style=\" margin-top:10px; margin-bottom:10px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">You should have received a copy of the GNU General Public License along with SLiM. If not, see <a href=\"http://www.gnu.org/licenses/\"><span style=\" text-decoration: underline; color:#0000ff;\">http://www.gnu.org/licenses/</span></a>.</p>\n"
"<p style=\" margin-top:10px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Please see the SLiM manual for credits and license information for code that has been incorporated into SLiM from other authors.</p></body></html>", Q_NULLPTR));
        versionLabel->setText(QApplication::translate("QtSLiMAbout", "3.3 (build 1)", Q_NULLPTR));
        Q_UNUSED(QtSLiMAbout);
    } // retranslateUi

};

namespace Ui {
    class QtSLiMAbout: public Ui_QtSLiMAbout {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMABOUT_H
