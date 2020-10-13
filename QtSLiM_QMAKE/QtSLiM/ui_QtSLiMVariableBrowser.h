/********************************************************************************
** Form generated from reading UI file 'QtSLiMVariableBrowser.ui'
**
** Created by: Qt User Interface Compiler version 5.9.7
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QTSLIMVARIABLEBROWSER_H
#define UI_QTSLIMVARIABLEBROWSER_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QTreeWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QtSLiMVariableBrowser
{
public:
    QVBoxLayout *verticalLayout;
    QTreeWidget *browserTreeWidget;

    void setupUi(QWidget *QtSLiMVariableBrowser)
    {
        if (QtSLiMVariableBrowser->objectName().isEmpty())
            QtSLiMVariableBrowser->setObjectName(QStringLiteral("QtSLiMVariableBrowser"));
        QtSLiMVariableBrowser->resize(400, 300);
        verticalLayout = new QVBoxLayout(QtSLiMVariableBrowser);
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        browserTreeWidget = new QTreeWidget(QtSLiMVariableBrowser);
        QTreeWidgetItem *__qtreewidgetitem = new QTreeWidgetItem();
        __qtreewidgetitem->setText(0, QStringLiteral("1"));
        browserTreeWidget->setHeaderItem(__qtreewidgetitem);
        browserTreeWidget->setObjectName(QStringLiteral("browserTreeWidget"));
        browserTreeWidget->setMinimumSize(QSize(300, 200));
        QFont font;
        font.setPointSize(11);
        browserTreeWidget->setFont(font);
        browserTreeWidget->setFocusPolicy(Qt::StrongFocus);
        browserTreeWidget->setFrameShape(QFrame::NoFrame);
        browserTreeWidget->setFrameShadow(QFrame::Plain);
        browserTreeWidget->setLineWidth(0);
        browserTreeWidget->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        browserTreeWidget->setEditTriggers(QAbstractItemView::NoEditTriggers);
        browserTreeWidget->setProperty("showDropIndicator", QVariant(false));
        browserTreeWidget->setSelectionMode(QAbstractItemView::NoSelection);
        browserTreeWidget->setIndentation(13);
        browserTreeWidget->setExpandsOnDoubleClick(false);

        verticalLayout->addWidget(browserTreeWidget);


        retranslateUi(QtSLiMVariableBrowser);

        QMetaObject::connectSlotsByName(QtSLiMVariableBrowser);
    } // setupUi

    void retranslateUi(QWidget *QtSLiMVariableBrowser)
    {
        QtSLiMVariableBrowser->setWindowTitle(QApplication::translate("QtSLiMVariableBrowser", "Variable Browser", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QtSLiMVariableBrowser: public Ui_QtSLiMVariableBrowser {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QTSLIMVARIABLEBROWSER_H
