import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Window {
    width:400
    height:600
    color:"#eee"
    property string passwordField: ""
    Column {
        spacing: 30
        anchors.centerIn:parent
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Enter your password:"
        }
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 15
            Repeater {
                model: 6
                Label {
                    font.pixelSize: 32
                    text: "*"
                    color:index < passwordField.length ? "black" : "light grey"
                }
            }
        }
        Grid {
            columns: 3
            rowSpacing:5
            columnSpacing: 5
            Repeater {
                model: 12
                Button {
                    text: {
                        if (index == 9)
                            return ""
                        if (index == 10)
                            return 0
                        if (index == 11)
                            return "Clear"
                        return index + 1
                    }
                    width: 100
                    onClicked: {
                        if(passwordField.length == 6)
                            return
                        if(index == 11) {
                            passwordField = ""
                            return
                        }
                        passwordField += text
                    }
                }
            }
        }
        Button {
            text:"Log in"
            onClicked: {
                if(passwordField == "111111")
                    status.text = "Ok"
                else
                    status.text = "Wrong password"
            }
        }
        Label {
            id: status
            text:""
        }
    }
}
