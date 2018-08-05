import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    MainForm{
        anchors.fill:parent
        mouseArea.onClicked: {
            console.log(qsTr("click"))
        }
    }

    Item{
        Rectangle{
            id:rect1
            width: 36
            height: 36
            color:"red"
        }
        Rectangle{
            id:rect2
            width: 30
            height: 30
            color:"blue"
        }
    }


    Text {
        anchors.centerIn:parent
        text: "hello world!!"
    }
    Item{
        id:chaine_test
        property string str1: "bonjour tous le monde"
        property int taille: str1.length
        property string str2: str1+" %1".arg(taille)

    }

 /*   MouseArea{
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button === Qt.RightButton){
                rect2.y=rect2.y+10
                console.log(chaine_test.str1)
                console.log(chaine_test.str2)
            }
            else{
                rect2.y=rect2.y-10
                console.log(chaine_test.taille)
            }
        }
    }*/


}

