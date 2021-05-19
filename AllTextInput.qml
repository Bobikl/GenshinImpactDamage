import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
//ssmwcg@163.com
Item {
    property int textInputData
    property int ordinaryNumber

    id: control

    RowLayout {
        anchors.fill: parent
        Item {
            Layout.fillWidth: true

        }
        ColumnLayout {
            spacing: 10
            Text {text: "仅供参考"; font.pixelSize: 15}
            Item {
                Layout.fillHeight: true
            }
            RowLayout {
                spacing: 10

                ColumnLayout {
                    spacing: 15
                    Text {text: "  面板总攻击力"; font.pixelSize: 20}
                    Text {text: "  暴击伤害"; font.pixelSize: 20}
                    Text {text: "  元素伤害加成"; font.pixelSize: 20}
                    Text {text: "  元素精通伤害加成"; font.pixelSize: 20}
                    Text {text: "  技能倍率"; font.pixelSize: 20}
                    Text {text: "  怪物抗性"; font.pixelSize: 20}
                    Text {text: "  角色等级"; font.pixelSize: 20}
                    Text {text: "  怪物等级"; font.pixelSize: 20}
//                    Text {text: "  命座加成伤害加成"; font.pixelSize: 20}
                }
                ColumnLayout {
                    spacing: 12
                    TextField {
                        id: textInput1
                        focus: true
                        font.pixelSize: 22
                        selectByMouse: true
                        maximumLength: 10
                        validator: IntValidator{bottom: 0; top: 100000}
                        background: Rectangle {
                            border.color: "black"
                            border.width: 1
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput2
                        font.pixelSize: 22
                        selectByMouse: true
                        maximumLength: 6
                        background: Rectangle {
                            border.color: "black"
                            border.width: 1
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput3
                        font.pixelSize: 22
                        selectByMouse: true
                        anchors.margins: 4
                        maximumLength: 6
                        background: Rectangle {
                            border.color: "black"
                            border.width: 1
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput4
                        focus: true
                        font.pixelSize: 22
                        selectByMouse: true
                        maximumLength: 5
                        background: Rectangle {
                            border.color: "black"
                            border.width: 1
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput5
                        focus: true
                        font.pixelSize: 22
                        selectByMouse: true
                        maximumLength: 4
                        background: Rectangle {
                            border.width: 1
                            border.color: "black"
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput6
                        font.pixelSize: 22
                        focus: true
                        selectByMouse: true
                        validator: IntValidator{bottom: -100; top: 150}
                        background: Rectangle {
                            border.width: 1
                            border.color: "black"
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput7
                        font.pixelSize: 22
                        selectByMouse: true
                        validator: IntValidator{bottom: 0; top: 100}
                        background: Rectangle {
                            border.width: 1
                            border.color: "black"
                            radius: 3
                        }
                    }
                    TextField {
                        id: textInput8
                        font.pixelSize: 22
                        selectByMouse: true
                        validator: IntValidator {bottom: 0; top: 200}
                        background: Rectangle {
                            border.color: "black"
                            border.width: 1
                            radius: 3
                        }
                    }
//                    TextField {
//                        id: textInput9
//                        font.pixelSize: 22
//                        selectByMouse: true
//                        validator: IntValidator {bottom: 0; top: 1000}
//                        background: Rectangle {
//                            border.color: "black"
//                            border.width: 1
//                            radius: 3
//                        }
//                    }
                }
            }
            RowLayout {
                spacing: 10
                Text {text: "  命座伤害加成"; font.pixelSize: 20}

                Item {
                    width: 30
                }

                ComboBox {
                    id: cbItems0
                    implicitWidth: textInput1.implicitWidth
                    currentIndex: 0
                    model: ["无", "卢老爷1命"]
                    background: Rectangle {
                        implicitHeight: textInput1.implicitHeight
                        border.color: "black"
                        radius: 3
                    }

                    popup: Popup {
                        y: 6
                        width: cbItems0.implicitWidth
                        height: 150
                        padding: 1
                        background: Rectangle {
                            color: "white"
                        }
                        ListView {
                            anchors.fill: parent
                            implicitHeight: popup.implicitHeight
                            implicitWidth: 50
                            clip: true
                            model: cbItems0.delegateModel
                            ScrollBar.vertical: ScrollBar {
                                width: 10
                                policy: ScrollBar.AlwaysOn
                            }
                        }
                    }
                }
            }
            RowLayout {
                spacing: 10
                Text {text: "  反应系数"; font.pixelSize: 20}

                Item {
                    width: 70
                }

                ComboBox {
                    id: cbItems
                    implicitWidth: textInput1.implicitWidth
                    currentIndex: 0
                    model: ["无", "火蒸发水: 1.5", "水蒸发火: 2.0", "火融化冰: 2.0", "冰融化火: 1.5"]
                    background: Rectangle {
                        implicitHeight: textInput1.implicitHeight
                        border.color: "black"
                        radius: 3
                    }

                    popup: Popup {
                        y: 6
                        width: cbItems.implicitWidth
                        height: 150
                        padding: 1
                        background: Rectangle {
                            color: "white"
                        }
                        ListView {
                            anchors.fill: parent
                            implicitHeight: popup.implicitHeight
                            implicitWidth: 50
                            clip: true
                            model: cbItems.delegateModel
                            ScrollBar.vertical: ScrollBar {
                                width: 10
                                policy: ScrollBar.AlwaysOn
                            }
                        }
                    }
                }
            }
            RowLayout {
                spacing: 10
                Text {text: "  圣遗物套装效果"; font.pixelSize: 20}

                Item {
                    width: 9
                }

                ComboBox {
                    id: cbItems1
                    implicitWidth: textInput1.implicitWidth
                    currentIndex: 0
                    model: [ "无", "渡火套", "魔女四件套(1层)", "魔女四件套(2层)"]
                    background: Rectangle {
                        implicitHeight: textInput1.implicitHeight
                        border.color: "black"
                        radius: 3
                    }
                    popup: Popup {
                        id: popup
                        y: 6
                        width: cbItems1.width
                        height: 150
                        padding: 1
                        background: Rectangle {
                            color: "white"
                        }

                        ListView {
                            anchors.fill: parent
                            implicitHeight: popup.height
                            clip: true
                            model: cbItems1.delegateModel
                            ScrollBar.vertical: ScrollBar {
                                width: 10
                                policy: ScrollBar.AlwaysOn
                            }
                        }
                    }
                }
            }

            RowLayout {
                spacing: 10
                Text {text: "  特殊加成"; font.pixelSize: 20}

                Item {
                    width: 70
                }

                ComboBox {
                    id: cbItems2
                    implicitWidth: textInput1.implicitWidth
                    currentIndex: 0
                    model: ["无", "螭骨剑精1满层被动"]
                    background: Rectangle {
                        implicitHeight: textInput1.implicitHeight
                        border.color: "black"
                        radius: 3
                    }

                    popup: Popup {
                        y: 6
                        width: cbItems2.implicitWidth
                        height: 150
                        padding: 1
                        background: Rectangle{
                            color: "white"
                        }

                        ListView {
                            anchors.fill: parent
                            implicitHeight: popup.implicitHeight
                            clip: true
                            model: cbItems2.delegateModel
                            ScrollBar.vertical: ScrollBar {
                                width: 10
                                policy: ScrollBar.AlwaysOn
                            }
                        }
                    }
                }
            }

            Item {
                Layout.fillHeight: true
            }
        }
        Item {
            Layout.fillWidth: true
        }
    }
        function calculationEngine(number){
        if (number === 1){

//            textInput1.text = 869
//            textInput2.text = 98.2
//            textInput3.text = 61.6
//            textInput4.text = 25.6
//            textInput5.text = 151
//            textInput6.text = -10
//            textInput7.text = 90
//            textInput8.text = 84

            //1525
            //1667
//            textInput1.text = 1044
//            textInput2.text = 121.5
//            textInput3.text = 61.6
//            textInput4.text = 29.4
//            textInput5.text = 151
//            textInput6.text = -10
//            textInput7.text = 90
//            textInput8.text = 84

            var a = (Number(textInput1.text) === 0 ? 1 : Number(textInput1.text))//攻击力
            var b = (Number(textInput2.text) === 0 ? 0 : Number(textInput2.text))//暴击伤害
            var c = (Number(textInput3.text) === 0 ? 0 : Number(textInput3.text))//元素伤害
            var d = (Number(textInput4.text) === 0 ? 0 : Number(textInput4.text))//元素精通
            var e = (Number(textInput5.text) === 0 ? 100 : Number(textInput5.text))//技能倍率
            var f = (Number(textInput6.text) === 0 ? 0 : Number(textInput6.text))//怪物抗性
            var x = (Number(textInput7.text) === 0 ? 1 : Number(textInput7.text))//角色等级
            var y = (Number(textInput8.text) === 0 ? 1 : Number(textInput8.text))//怪物等级
            //等级系数差
            var g
            if( (x + 100) / (x + y + 200) === 0.5) {
                    g = 1
            } else {
                g = (x + 100) / (x + y + 200)
            }

            //抗性
            var res
            if (f < 0){
                res = (1 - f / 100 / 2)
            } else if (f > 0 && f < 75) {
                res = (1 - f / 100)
            } else if (f > 75) {
                res = (1 / (1 + 4 * f /100))
            } else {
                res = 1
            }
            //反应倍率
            var h
            if (cbItems.currentIndex === 1){
                h = 1.5
            } else if (cbItems.currentIndex === 2){
                h = 2
            } else if (cbItems.currentIndex === 3){
                h = 2
            } else if (cbItems.currentIndex === 4){
                h = 1.5
            } else {
                h = 1
            }

            //套装
            var ss
            if(cbItems1.currentIndex === 1) {
                ss = 0.3
            } else {
                ss = 0
            }

            // a 攻击力
            // b 暴击伤害
            // c 元素伤害
            // d 元素精通
            // e 技能倍率
            // res 怪物抗性
            // x 角色等级
            // y 怪物等级
            // z 命座加成
            // g 等级差系数

            //命座
            var z = 0

            //普通情况下
            var variable = 0
            var ordinary = 0
            var testNumber = 0
//            if (cbItems0.currentIndex === 0 && cbItems1.currentIndex === 0 && cbItems2.currentIndex === 0){
//                variable = a * (b / 100 + 1) * (c / 100 + 1) * e / 100 * res * g * (h * (1 + d / 100))
//                ordinary = variable / (b / 100 + 1)
//            }
            variable = a * (b / 100 + 1) * (c / 100 + 1) * e / 100 * res * g * (h * (1 + d / 100))

            if(cbItems0.currentIndex == 1){ //卢老爷1命(不包含元素伤害加成)
                var cbItems0Temporary01
                z = 0.152
                cbItems0Temporary01 = a * (b / 100 + 1) * e / 100 * res * g * z * (h * (1 + d / 100))
                variable += cbItems0Temporary01
            }

            //3431
            //7431
            //7996
            //16003

            //6825 no 15%
            //7370
            //2231
            if(cbItems1.currentIndex === 2 && cbItems.currentIndex === 0) {//魔女套(1)不反应
                var cbItems1Number = 15 / 2
                var cbItems1Temporary02 = a * (b / 100 + 1) * (cbItems1Number / 100) * e / 100 * res * g
                variable += cbItems1Temporary02
            }

            if(cbItems1.currentIndex === 2 && cbItems.currentIndex !== 0) {//魔女套(1)反应(????)
                var cbItems1Number1 = 15 / 2
                var cbItems1TestNumber = a * (b / 100 + 1) * ((cbItems1Number1 + c) / 100 + 1) * e / 100 * res * g * (h * ((d + 15) / 100 + 1.0008)) -
                        a * (b / 100 + 1) * (c / 100 + 1) * e / 100 * res * g * (h * (1 + d / 100))
                variable += cbItems1TestNumber
            }
            //3692 5062
            if(cbItems1.currentIndex === 3 && cbItems.currentIndex === 0) {//魔女套(2)不反应
                var cbItems1Number0 = 15 / 2 + 15 / 2 + 15 / 2
                var cbItems1Temporary002 = a * (b / 100 + 1) * (cbItems1Number0 / 100) * e / 100 * res * g
                variable += cbItems1Temporary002
            }

            if(cbItems1.currentIndex === 3 && cbItems.currentIndex !== 0) {//魔女套(2)反应(????)
                var cbItems1Number2 = 15 / 2 + 7.5
                var cbItems1TestNumber2 = a * (b / 100 + 1) * ((cbItems1Number2 + c) / 100 + 1) * e / 100 * res * g * (h * ((d + 15) / 100 + 1.0016)) -
                        a * (b / 100 + 1) * (c / 100 + 1) * e / 100 * res * g * (h * (1 + d / 100))
                variable += cbItems1TestNumber2
            }


            textInputData = variable
            //非暴击伤害
            ordinary = variable / (b / 100 + 1)
            ordinaryNumber = ordinary
            //3431



//            if (cbItems2.currentIndex === 1){ //螭骨剑(去掉元素加成)
//                var onther1 = a * (b / 100 + 1) * (d / 100 + 1) * e / 100 * res * g * h * 0.3
//                textInputData = onther1 + variable + testNumber
//                ordinaryNumber = (onther1 / (b /100 + 1)) + ordinary
//            } else {
//                ordinaryNumber = ordinary
//                textInputData = variable
//            }

//            if (cbItems2.currentIndex === 1 && cbItems1.currentIndex === 0){ //螭骨剑(去掉元素加成) + 渡火套
//                var onther2 = a * (b / 100 + 1) * (d / 100 + 1) * e / 100 * res * g * h * 0.3
//                var testNumber = a * (c / 100 + 1) * (d / 100 + 1) * e / 100 * res * g * ss
//                textInputData = onther2 + variable + testNumber
//                ordinaryNumber = (onther1 / (b /100 + 1)) + ordinary
//                console.log(res)
//            } else {
//                ordinaryNumber = ordinary
//                textInputData = variable
//            }


//            console.log(a)
//            console.log(b / 100 + 1)
//            console.log(c / 100 + 1)
//            console.log(d / 100 + 1)
//            console.log(e / 100)
//            console.log(res)
//            console.log(g)
//            console.log(h)
//            console.log(z)
        }
    }

    function clearNumber(number){
        if (number === 2){
            textInput2.text = ""
            textInput3.text = ""
            textInput4.text = ""
            textInput5.text = ""
            textInput6.text = ""
            textInput7.text = ""
            textInput8.text = ""
            textInput1.text = ""
            cbItems0.currentIndex = 0
            cbItems.currentIndex = 0
            cbItems1.currentIndex = 0
            cbItems2.currentIndex = 0
        }
    }
}










