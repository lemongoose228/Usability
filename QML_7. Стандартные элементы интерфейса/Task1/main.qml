import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Window {
    width: 550
    height: 700
    
    visible: true
    
    color:"#eeeeee"
    
    
    Item {
        width: 250
        height: 180
        anchors.centerIn: parent
        //color:"#444"
        GridLayout {
            anchors.fill: parent
            columns: 2
            TextField {
                id: login
                Layout.columnSpan: 2
                //text:"Login"
                placeholderText: "Log in"
                font.pixelSize: 16
                color: focus ? "black" : "grey"
                focus:true
                Layout.fillWidth:true
            }
            TextField {
                id: pass
                text:"Pasword"
                Layout.columnSpan: 2
                placeholderText: "Password"
                echoMode: TextInput.Password
                font.pixelSize: 16
                color: focus ? "black" : "grey"
                Layout.fillWidth:true
            }
            Button {
                text: "Log in"
                Layout.fillWidth:true
            }
            Button {
                text:  "Clear"
                Layout.fillWidth:true
                onClicked: {
                    login.text = ""
                    pass.text = ""
                }
            }
        }
    }
}
