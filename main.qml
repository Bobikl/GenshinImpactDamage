import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.0

Window {
    id: window
    width: 900
    height: 600
    minimumWidth: 900
    minimumHeight: 600
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        anchors.fill: parent
        color: "lightgrey"
    }

    RowLayout {
        anchors.fill: parent
        AllTextInput {
            id: allTextInput
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        ColumnLayout {
            spacing: 5
            ShowNumber {
                id: showNumber
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            AllButton {
                id: allButton
                Layout.fillHeight: true
                Layout.fillWidth: true
                onPressed: {
                    allTextInput.calculationEngine(number)
                    allTextInput.clearNumber(number)
                    showNumber.listViewData = allTextInput.textInputData
                    showNumber.listViewOrdinary = allTextInput.ordinaryNumber
                    showNumber.showTest(number)
                }
            }
        }
    }
}
