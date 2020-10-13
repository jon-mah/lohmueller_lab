/********************************************************************************
** Form generated from reading UI file 'QtSLiMPreferences.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMPREFERENCES_H
#define UI_QTSLIMPREFERENCES_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QFontComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_QtSLiMPreferences
{
public:
    QVBoxLayout *verticalLayout;
    QGroupBox *startupGroup;
    QVBoxLayout *verticalLayout_2;
    QRadioButton *startupRadioCreateNew;
    QRadioButton *startupRadioOpenFile;
    QSpacerItem *verticalSpacer;
    QGroupBox *displayFontGroup;
    QVBoxLayout *verticalLayout_4;
    QFontComboBox *fontComboBox;
    QHBoxLayout *horizontalLayout_2;
    QSpinBox *fontSizeSpinBox;
    QLabel *label_4;
    QSpacerItem *verticalSpacer_2;
    QGroupBox *syntaxHighlightingGroup;
    QVBoxLayout *verticalLayout_3;
    QCheckBox *syntaxHighlightScript;
    QCheckBox *syntaxHighlightOutput;
    QSpacerItem *verticalSpacer_5;
    QGroupBox *lineNumberingGroup;
    QVBoxLayout *verticalLayout_5;
    QCheckBox *showLineNumbers;
    QCheckBox *highlightCurrentLine;
    QSpacerItem *verticalSpacer_3;
    QGroupBox *autosaveGroup;
    QVBoxLayout *verticalLayout_6;
    QCheckBox *autosaveOnRecycle;
    QCheckBox *showSaveIfUntitled;
    QSpacerItem *verticalSpacer_6;
    QFrame *line;
    QSpacerItem *verticalSpacer_4;
    QPushButton *resetSuppressedButton;
    QLabel *label_5;

    void setupUi(QDialog *QtSLiMPreferences)
    {
        if (QtSLiMPreferences->objectName().isEmpty())
            QtSLiMPreferences->setObjectName(QStringLiteral("QtSLiMPreferences"));
        QtSLiMPreferences->resize(282, 665);
        verticalLayout = new QVBoxLayout(QtSLiMPreferences);
        verticalLayout->setSpacing(6);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setSizeConstraint(QLayout::SetFixedSize);
        verticalLayout->setContentsMargins(-1, 12, -1, -1);
        startupGroup = new QGroupBox(QtSLiMPreferences);
        startupGroup->setObjectName(QStringLiteral("startupGroup"));
        QSizePolicy sizePolicy(QSizePolicy::Minimum, QSizePolicy::Minimum);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(startupGroup->sizePolicy().hasHeightForWidth());
        startupGroup->setSizePolicy(sizePolicy);
        startupGroup->setStyleSheet(QStringLiteral("QGroupBox { font-weight: bold; }"));
        verticalLayout_2 = new QVBoxLayout(startupGroup);
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(6, 6, 6, 6);
        startupRadioCreateNew = new QRadioButton(startupGroup);
        startupRadioCreateNew->setObjectName(QStringLiteral("startupRadioCreateNew"));
        startupRadioCreateNew->setChecked(true);

        verticalLayout_2->addWidget(startupRadioCreateNew);

        startupRadioOpenFile = new QRadioButton(startupGroup);
        startupRadioOpenFile->setObjectName(QStringLiteral("startupRadioOpenFile"));

        verticalLayout_2->addWidget(startupRadioOpenFile);


        verticalLayout->addWidget(startupGroup);

        verticalSpacer = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        displayFontGroup = new QGroupBox(QtSLiMPreferences);
        displayFontGroup->setObjectName(QStringLiteral("displayFontGroup"));
        displayFontGroup->setStyleSheet(QStringLiteral("QGroupBox { font-weight: bold; }"));
        verticalLayout_4 = new QVBoxLayout(displayFontGroup);
        verticalLayout_4->setSpacing(6);
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        verticalLayout_4->setContentsMargins(6, 6, 6, 6);
        fontComboBox = new QFontComboBox(displayFontGroup);
        fontComboBox->setObjectName(QStringLiteral("fontComboBox"));
        fontComboBox->setFocusPolicy(Qt::NoFocus);
        fontComboBox->setEditable(false);
        fontComboBox->setWritingSystem(QFontDatabase::Latin);
        fontComboBox->setFontFilters(QFontComboBox::MonospacedFonts|QFontComboBox::ScalableFonts);

        verticalLayout_4->addWidget(fontComboBox);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        fontSizeSpinBox = new QSpinBox(displayFontGroup);
        fontSizeSpinBox->setObjectName(QStringLiteral("fontSizeSpinBox"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(fontSizeSpinBox->sizePolicy().hasHeightForWidth());
        fontSizeSpinBox->setSizePolicy(sizePolicy1);
        fontSizeSpinBox->setMinimumSize(QSize(50, 0));
        fontSizeSpinBox->setMaximumSize(QSize(50, 16777215));
        fontSizeSpinBox->setFocusPolicy(Qt::NoFocus);
        fontSizeSpinBox->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        fontSizeSpinBox->setMinimum(6);
        fontSizeSpinBox->setMaximum(50);
        fontSizeSpinBox->setValue(12);

        horizontalLayout_2->addWidget(fontSizeSpinBox);

        label_4 = new QLabel(displayFontGroup);
        label_4->setObjectName(QStringLiteral("label_4"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(label_4->sizePolicy().hasHeightForWidth());
        label_4->setSizePolicy(sizePolicy2);

        horizontalLayout_2->addWidget(label_4);


        verticalLayout_4->addLayout(horizontalLayout_2);


        verticalLayout->addWidget(displayFontGroup);

        verticalSpacer_2 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_2);

        syntaxHighlightingGroup = new QGroupBox(QtSLiMPreferences);
        syntaxHighlightingGroup->setObjectName(QStringLiteral("syntaxHighlightingGroup"));
        sizePolicy.setHeightForWidth(syntaxHighlightingGroup->sizePolicy().hasHeightForWidth());
        syntaxHighlightingGroup->setSizePolicy(sizePolicy);
        syntaxHighlightingGroup->setStyleSheet(QStringLiteral("QGroupBox { font-weight: bold; }"));
        verticalLayout_3 = new QVBoxLayout(syntaxHighlightingGroup);
        verticalLayout_3->setSpacing(6);
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        verticalLayout_3->setContentsMargins(6, 6, 6, 6);
        syntaxHighlightScript = new QCheckBox(syntaxHighlightingGroup);
        syntaxHighlightScript->setObjectName(QStringLiteral("syntaxHighlightScript"));
        syntaxHighlightScript->setChecked(true);

        verticalLayout_3->addWidget(syntaxHighlightScript);

        syntaxHighlightOutput = new QCheckBox(syntaxHighlightingGroup);
        syntaxHighlightOutput->setObjectName(QStringLiteral("syntaxHighlightOutput"));
        syntaxHighlightOutput->setChecked(true);

        verticalLayout_3->addWidget(syntaxHighlightOutput);


        verticalLayout->addWidget(syntaxHighlightingGroup);

        verticalSpacer_5 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_5);

        lineNumberingGroup = new QGroupBox(QtSLiMPreferences);
        lineNumberingGroup->setObjectName(QStringLiteral("lineNumberingGroup"));
        sizePolicy.setHeightForWidth(lineNumberingGroup->sizePolicy().hasHeightForWidth());
        lineNumberingGroup->setSizePolicy(sizePolicy);
        lineNumberingGroup->setStyleSheet(QStringLiteral("QGroupBox { font-weight: bold; }"));
        verticalLayout_5 = new QVBoxLayout(lineNumberingGroup);
        verticalLayout_5->setSpacing(6);
        verticalLayout_5->setObjectName(QStringLiteral("verticalLayout_5"));
        verticalLayout_5->setContentsMargins(6, 6, 6, 6);
        showLineNumbers = new QCheckBox(lineNumberingGroup);
        showLineNumbers->setObjectName(QStringLiteral("showLineNumbers"));

        verticalLayout_5->addWidget(showLineNumbers);

        highlightCurrentLine = new QCheckBox(lineNumberingGroup);
        highlightCurrentLine->setObjectName(QStringLiteral("highlightCurrentLine"));

        verticalLayout_5->addWidget(highlightCurrentLine);


        verticalLayout->addWidget(lineNumberingGroup);

        verticalSpacer_3 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_3);

        autosaveGroup = new QGroupBox(QtSLiMPreferences);
        autosaveGroup->setObjectName(QStringLiteral("autosaveGroup"));
        sizePolicy.setHeightForWidth(autosaveGroup->sizePolicy().hasHeightForWidth());
        autosaveGroup->setSizePolicy(sizePolicy);
        autosaveGroup->setStyleSheet(QStringLiteral("QGroupBox { font-weight: bold; }"));
        verticalLayout_6 = new QVBoxLayout(autosaveGroup);
        verticalLayout_6->setSpacing(6);
        verticalLayout_6->setObjectName(QStringLiteral("verticalLayout_6"));
        verticalLayout_6->setContentsMargins(6, 6, 6, 6);
        autosaveOnRecycle = new QCheckBox(autosaveGroup);
        autosaveOnRecycle->setObjectName(QStringLiteral("autosaveOnRecycle"));

        verticalLayout_6->addWidget(autosaveOnRecycle);

        showSaveIfUntitled = new QCheckBox(autosaveGroup);
        showSaveIfUntitled->setObjectName(QStringLiteral("showSaveIfUntitled"));

        verticalLayout_6->addWidget(showSaveIfUntitled);


        verticalLayout->addWidget(autosaveGroup);

        verticalSpacer_6 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_6);

        line = new QFrame(QtSLiMPreferences);
        line->setObjectName(QStringLiteral("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        verticalSpacer_4 = new QSpacerItem(20, 8, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer_4);

        resetSuppressedButton = new QPushButton(QtSLiMPreferences);
        resetSuppressedButton->setObjectName(QStringLiteral("resetSuppressedButton"));
        resetSuppressedButton->setAutoDefault(false);

        verticalLayout->addWidget(resetSuppressedButton);

        label_5 = new QLabel(QtSLiMPreferences);
        label_5->setObjectName(QStringLiteral("label_5"));
        sizePolicy.setHeightForWidth(label_5->sizePolicy().hasHeightForWidth());
        label_5->setSizePolicy(sizePolicy);

        verticalLayout->addWidget(label_5);


        retranslateUi(QtSLiMPreferences);

        QMetaObject::connectSlotsByName(QtSLiMPreferences);
    } // setupUi

    void retranslateUi(QDialog *QtSLiMPreferences)
    {
        QtSLiMPreferences->setWindowTitle(QApplication::translate("QtSLiMPreferences", "SLiMgui Preferences", Q_NULLPTR));
        startupGroup->setTitle(QApplication::translate("QtSLiMPreferences", "When SLiMgui starts:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        startupRadioCreateNew->setToolTip(QApplication::translate("QtSLiMPreferences", "a new untitled window with a default WF model will be created on startup", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        startupRadioCreateNew->setText(QApplication::translate("QtSLiMPreferences", "Create a new simulation window", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        startupRadioOpenFile->setToolTip(QApplication::translate("QtSLiMPreferences", "the \"open file\" panel will be run at startup", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        startupRadioOpenFile->setText(QApplication::translate("QtSLiMPreferences", "Ask for a script file to open", Q_NULLPTR));
        displayFontGroup->setTitle(QApplication::translate("QtSLiMPreferences", "Display font:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        fontComboBox->setToolTip(QApplication::translate("QtSLiMPreferences", "the font to use for script and output views", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
#ifndef QT_NO_TOOLTIP
        fontSizeSpinBox->setToolTip(QApplication::translate("QtSLiMPreferences", "the font size to use for script and output views", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        label_4->setText(QApplication::translate("QtSLiMPreferences", "points", Q_NULLPTR));
        syntaxHighlightingGroup->setTitle(QApplication::translate("QtSLiMPreferences", "Enable syntax highlighting:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        syntaxHighlightScript->setToolTip(QApplication::translate("QtSLiMPreferences", "enabled syntax highlighting in script views; this may cause poor performance with long scripts", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        syntaxHighlightScript->setText(QApplication::translate("QtSLiMPreferences", "In the script area", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        syntaxHighlightOutput->setToolTip(QApplication::translate("QtSLiMPreferences", "enabled syntax highlighting in output views; this may cause poor performance with large amounts of output", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        syntaxHighlightOutput->setText(QApplication::translate("QtSLiMPreferences", "In the output area", Q_NULLPTR));
        lineNumberingGroup->setTitle(QApplication::translate("QtSLiMPreferences", "Line numbering:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        showLineNumbers->setToolTip(QApplication::translate("QtSLiMPreferences", "show line numbers in a gutter on the left of script views", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        showLineNumbers->setText(QApplication::translate("QtSLiMPreferences", "Show line numbers", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        highlightCurrentLine->setToolTip(QApplication::translate("QtSLiMPreferences", "highlight the current editing line in script views", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        highlightCurrentLine->setText(QApplication::translate("QtSLiMPreferences", "Highlight current line", Q_NULLPTR));
        autosaveGroup->setTitle(QApplication::translate("QtSLiMPreferences", "Autosave:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        autosaveOnRecycle->setToolTip(QApplication::translate("QtSLiMPreferences", "save to disk automatically whenever the model is recycled", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        autosaveOnRecycle->setText(QApplication::translate("QtSLiMPreferences", "Autosave on every recycle", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        showSaveIfUntitled->setToolTip(QApplication::translate("QtSLiMPreferences", "if autosave is enabled, run a \"save file\" panel if the model has not yet been saved", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        showSaveIfUntitled->setText(QApplication::translate("QtSLiMPreferences", "Show save panel if untitled", Q_NULLPTR));
        resetSuppressedButton->setText(QApplication::translate("QtSLiMPreferences", "Reset suppressed alert panels", Q_NULLPTR));
        label_5->setText(QApplication::translate("QtSLiMPreferences", "<html><head/><body><p align=\"center\"><span style=\" font-size:11pt; font-style:italic;\">This resets all of the &quot;do not show this<br/>message again&quot; flags across SLiMgui.</span></p></body></html>", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMPreferences: public Ui_QtSLiMPreferences {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMPREFERENCES_H
