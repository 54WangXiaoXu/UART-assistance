import QtQuick 2.4

EdgeDisplayForm {

    property var focusStatus: 0  //等于2不允许切换

    setMouseArea.onHoveredChanged: {
        console.log("焦点在设置按钮")
                setGray.visible = false
                setWhite.visible = true
        if(focusStatus == 1) {
            focusStatus = 0
            setGray.visible =  true
            setWhite.visible = false
        }
    }

    setMouseArea.onReleased:  {
        console.log("单击了设置按钮")
        setRect.visible = true
        helpRect.visible = false
        helpMouseArea.enabled = true
        setMouseArea.enabled = false
        setGray.visible = false
        setWhite.visible = true
        focusStatus = 1
        helpGray.visible = true
        helpWhite.visible = false
}

    helpMouseArea.onHoveredChanged: {
        console.log("焦点在帮助按钮")
        if(focusStatus == 0) {
            helpGray.visible = false
            helpWhite.visible = true
            focusStatus = 1
        }
        else if(focusStatus == 1) {
            focusStatus = 0
            helpGray.visible =  true
            helpWhite.visible = false
        }


    }

    helpMouseArea.onReleased: {
        console.log("单击了帮助按钮")
        helpRect.visible = true
        setRect.visible = false
        helpMouseArea.enabled = false
        setMouseArea.enabled = true
        helpGray.visible = false
        helpWhite.visible = true
        focusStatus = 1
        setGray.visible = true
        setWhite.visible = false

}

}
