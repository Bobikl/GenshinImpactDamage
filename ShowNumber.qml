import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
Item {
    property var listViewData
    property var listViewOrdinary
    id: control
    ColumnLayout {
        anchors.fill: parent
        ListView {
            id: listView
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: ListModel {id: historyModel}
            clip: true
            ScrollBar.vertical:  ScrollBar {}
            onCountChanged: {
                listView.currentIndex = count - 1
            }

            delegate: Item {
                height: label.implicitHeight
                width: parent ? parent.width : undefined
                property var object: historyModel.get(index)
                Label {
                    id: label
                    anchors.centerIn: parent
                    text: object ? object.text : ""
                    font.pixelSize: 20
                    color: "black"
                }
            }
        }
    }
    function showTest(number){
        if (number === 1){
            if (listViewData > 1000000 || listViewData < -1000000){
                historyModel.append({"text": "Error"})
            } else if (listViewData === 1){
                historyModel.append({"text":"NULL"})
            } else {
                historyModel.append({"text": "普通伤害: " + listViewOrdinary + "  " +  "暴击伤害: " + listViewData})
            }

        } else if (number === 2){
            historyModel.clear()
        }
    }
}
