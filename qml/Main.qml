import Felgo 3.0
import QtQuick 2.0

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    NavigationStack {

        Page {
            title: qsTr("Main Page")

            Rectangle {
                id:button2
                anchors.centerIn: parent
                anchors.verticalCenterOffset: -dp(70)
                height:dp(60)
                width:parent.width*0.4
                color:"white"
                border.width:1
                border.color:"black"
                Text {
                    id: text2
                    text: qsTr("Single click")
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill:parent
                    onClicked:  {
                        button2.color="blue"
                        timer2.start()
                    }
                }
            }
            Timer {
                id:timer2
                interval:2000
                onTriggered: {
                    button2.color="white"
                }
            }

            Rectangle {
                id:button1
                anchors.centerIn: parent
                height:dp(60)
                width:parent.width*0.4
                color:"white"
                border.width:1
                border.color:"black"
                Text {
                    id: text1
                    text: qsTr("Double click")
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill:parent
                    onDoubleClicked:  {
                        button1.color="blue"
                        timer1.start()
                    }
                }
            }
            Timer {
                id:timer1
                interval:2000
                onTriggered: {
                    button1.color="white"
                }
            }
        }

    }
}
