import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 300
    height: 400
    SwipeView {
        id: view
        clip:true
        currentIndex: 1
        anchors.fill: parent
        Rectangle {
            id: firstPage
            color:"red"
        }
        Rectangle {
            id: secondPage
            color:"yellow"
        }
        Rectangle {
            id: thirdPage
            color:"green"
        }
    }
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        interactive: true
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
