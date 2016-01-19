import QtQuick 2.5
import "content/video"

Video {
    id: root
    width: d_HD.width
    height: d_HD.height
    focus: true
    source: "/path/video"

    Keys.onPressed: {
        if (event.key == Qt.Key_Space)
            root.startPause();
    }
}
