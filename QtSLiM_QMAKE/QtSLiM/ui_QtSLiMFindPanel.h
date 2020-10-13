/********************************************************************************
** Form generated from reading UI file 'QtSLiMFindPanel.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMFINDPANEL_H
#define UI_QTSLIMFINDPANEL_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_QtSLiMFindPanel
{
public:
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_2;
    QGridLayout *gridLayout;
    QLabel *replaceLabel;
    QLabel *findLabel;
    QLineEdit *findTextLineEdit;
    QLineEdit *replaceTextLineEdit;
    QLabel *statusText;
    QLabel *optionsLabel;
    QVBoxLayout *verticalLayout_3;
    QCheckBox *matchCaseCheckBox;
    QCheckBox *wholeWordCheckBox;
    QCheckBox *wrapAroundCheckBox;
    QVBoxLayout *verticalLayout;
    QPushButton *findNextButton;
    QPushButton *findPreviousButton;
    QSpacerItem *verticalSpacer;
    QPushButton *replaceAndFindButton;
    QPushButton *replaceButton;
    QPushButton *replaceAllButton;

    void setupUi(QDialog *QtSLiMFindPanel)
    {
        if (QtSLiMFindPanel->objectName().isEmpty())
            QtSLiMFindPanel->setObjectName(QStringLiteral("QtSLiMFindPanel"));
        QtSLiMFindPanel->resize(450, 209);
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(QtSLiMFindPanel->sizePolicy().hasHeightForWidth());
        QtSLiMFindPanel->setSizePolicy(sizePolicy);
        QtSLiMFindPanel->setMinimumSize(QSize(450, 0));
        QtSLiMFindPanel->setSizeGripEnabled(true);
        horizontalLayout = new QHBoxLayout(QtSLiMFindPanel);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(8, 8, 8, 8);
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(4);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        replaceLabel = new QLabel(QtSLiMFindPanel);
        replaceLabel->setObjectName(QStringLiteral("replaceLabel"));

        gridLayout->addWidget(replaceLabel, 1, 0, 1, 1);

        findLabel = new QLabel(QtSLiMFindPanel);
        findLabel->setObjectName(QStringLiteral("findLabel"));

        gridLayout->addWidget(findLabel, 0, 0, 1, 1);

        findTextLineEdit = new QLineEdit(QtSLiMFindPanel);
        findTextLineEdit->setObjectName(QStringLiteral("findTextLineEdit"));

        gridLayout->addWidget(findTextLineEdit, 0, 1, 1, 1);

        replaceTextLineEdit = new QLineEdit(QtSLiMFindPanel);
        replaceTextLineEdit->setObjectName(QStringLiteral("replaceTextLineEdit"));

        gridLayout->addWidget(replaceTextLineEdit, 1, 1, 1, 1);


        verticalLayout_2->addLayout(gridLayout);

        statusText = new QLabel(QtSLiMFindPanel);
        statusText->setObjectName(QStringLiteral("statusText"));
        QFont font;
        font.setPointSize(11);
        font.setItalic(true);
        statusText->setFont(font);
        statusText->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        verticalLayout_2->addWidget(statusText);

        optionsLabel = new QLabel(QtSLiMFindPanel);
        optionsLabel->setObjectName(QStringLiteral("optionsLabel"));

        verticalLayout_2->addWidget(optionsLabel);

        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setSpacing(8);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(12, -1, -1, -1);
        matchCaseCheckBox = new QCheckBox(QtSLiMFindPanel);
        matchCaseCheckBox->setObjectName(QStringLiteral("matchCaseCheckBox"));
        matchCaseCheckBox->setFocusPolicy(Qt::NoFocus);

        verticalLayout_3->addWidget(matchCaseCheckBox);

        wholeWordCheckBox = new QCheckBox(QtSLiMFindPanel);
        wholeWordCheckBox->setObjectName(QStringLiteral("wholeWordCheckBox"));
        wholeWordCheckBox->setFocusPolicy(Qt::NoFocus);

        verticalLayout_3->addWidget(wholeWordCheckBox);

        wrapAroundCheckBox = new QCheckBox(QtSLiMFindPanel);
        wrapAroundCheckBox->setObjectName(QStringLiteral("wrapAroundCheckBox"));
        wrapAroundCheckBox->setFocusPolicy(Qt::NoFocus);

        verticalLayout_3->addWidget(wrapAroundCheckBox);


        verticalLayout_2->addLayout(verticalLayout_3);


        horizontalLayout->addLayout(verticalLayout_2);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(9);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        findNextButton = new QPushButton(QtSLiMFindPanel);
        findNextButton->setObjectName(QStringLiteral("findNextButton"));
        findNextButton->setFocusPolicy(Qt::NoFocus);

        verticalLayout->addWidget(findNextButton);

        findPreviousButton = new QPushButton(QtSLiMFindPanel);
        findPreviousButton->setObjectName(QStringLiteral("findPreviousButton"));
        findPreviousButton->setFocusPolicy(Qt::NoFocus);

        verticalLayout->addWidget(findPreviousButton);

        verticalSpacer = new QSpacerItem(20, 0, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);

        replaceAndFindButton = new QPushButton(QtSLiMFindPanel);
        replaceAndFindButton->setObjectName(QStringLiteral("replaceAndFindButton"));
        replaceAndFindButton->setFocusPolicy(Qt::NoFocus);

        verticalLayout->addWidget(replaceAndFindButton);

        replaceButton = new QPushButton(QtSLiMFindPanel);
        replaceButton->setObjectName(QStringLiteral("replaceButton"));
        replaceButton->setFocusPolicy(Qt::NoFocus);

        verticalLayout->addWidget(replaceButton);

        replaceAllButton = new QPushButton(QtSLiMFindPanel);
        replaceAllButton->setObjectName(QStringLiteral("replaceAllButton"));
        replaceAllButton->setFocusPolicy(Qt::NoFocus);

        verticalLayout->addWidget(replaceAllButton);


        horizontalLayout->addLayout(verticalLayout);


        retranslateUi(QtSLiMFindPanel);

        findNextButton->setDefault(true);


        QMetaObject::connectSlotsByName(QtSLiMFindPanel);
    } // setupUi

    void retranslateUi(QDialog *QtSLiMFindPanel)
    {
        QtSLiMFindPanel->setWindowTitle(QApplication::translate("QtSLiMFindPanel", "Find & Replace", Q_NULLPTR));
        replaceLabel->setText(QApplication::translate("QtSLiMFindPanel", "Replace:", Q_NULLPTR));
        findLabel->setText(QApplication::translate("QtSLiMFindPanel", "Find:", Q_NULLPTR));
        statusText->setText(QApplication::translate("QtSLiMFindPanel", "status text lineedit ", Q_NULLPTR));
        optionsLabel->setText(QApplication::translate("QtSLiMFindPanel", "Options:", Q_NULLPTR));
        matchCaseCheckBox->setText(QApplication::translate("QtSLiMFindPanel", "Match case", Q_NULLPTR));
        wholeWordCheckBox->setText(QApplication::translate("QtSLiMFindPanel", "Whole word", Q_NULLPTR));
        wrapAroundCheckBox->setText(QApplication::translate("QtSLiMFindPanel", "Wrap around", Q_NULLPTR));
        findNextButton->setText(QApplication::translate("QtSLiMFindPanel", "Find Next", Q_NULLPTR));
        findPreviousButton->setText(QApplication::translate("QtSLiMFindPanel", "Find Previous", Q_NULLPTR));
        replaceAndFindButton->setText(QApplication::translate("QtSLiMFindPanel", "Replace && Find", Q_NULLPTR));
        replaceButton->setText(QApplication::translate("QtSLiMFindPanel", "Replace", Q_NULLPTR));
        replaceAllButton->setText(QApplication::translate("QtSLiMFindPanel", "Replace All", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMFindPanel: public Ui_QtSLiMFindPanel {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMFINDPANEL_H
