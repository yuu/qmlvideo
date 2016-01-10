import QtQuick 2.5
import QtMultimedia 5.5

Item {
    id: root
    width: d_HD.width
    height: d_HD.height

    property var d_HD: Qt.size(1280, 720)
    property var d_fullHD: Qt.size(1920, 1080)

    property url source: "/path/file"

    MediaPlayer {
        id: player
        source: root.source
        autoPlay: true
    }

    VideoOutput {
        id: output
        source: player
        anchors.fill: parent
    }
}
