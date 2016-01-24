import QtQuick 2.5
import QtMultimedia 5.5

Item {
    id: root
    width: d_HD.width
    height: d_HD.height

    property size d_HD: Qt.size(1280, 720)
    property size d_fullHD: Qt.size(1920, 1080)

    property url source
    property alias rate: player.playbackRate
    property alias volume: player.volume
    property alias mute: player.muted
    property alias autoPlay: player.autoPlay
    property alias loop: player.loops

    MediaPlayer {
        id: player
        source: root.source
        autoPlay: true

        onError: {
            if (player.NoError != error) {
                console.log("[Video.qml] Error:" + error + " " + errorString);
            }
        }
    }

    VideoOutput {
        id: output
        source: player
        anchors.fill: parent
    }

    function startPause() {
        switch (player.playbackState) {
            case MediaPlayer.PlayingState:
                player.pause();
                break;
            case MediaPlayer.PausedState:
                player.play();
                break;
            case MediaPlayer.StoppedState:
                player.play();
                break;
        }
    }
}
