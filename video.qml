import QtQuick 2.5
import QtMultimedia 5.5

Item {
    id: root

    property var d_HD: Qt.size(1280, 720)
    property var d_fullHD: Qt.size(1920, 1080)

    Video {
        id: video
        width: d_HD.width
        height: d_HD.height

        source: "~/Videos/vokoscreen-2015-12-22_19-08-05.mkv"
    }
}
