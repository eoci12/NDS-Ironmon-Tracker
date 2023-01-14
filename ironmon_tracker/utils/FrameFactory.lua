FrameFactory = {}

local Frame = dofile(Paths.FOLDERS.UI_BASE_CLASSES.."/Frame.lua")
local Box = dofile(Paths.FOLDERS.UI_BASE_CLASSES.."/Box.lua")
local Component = dofile(Paths.FOLDERS.UI_BASE_CLASSES.."/Component.lua")
local Layout = dofile(Paths.FOLDERS.UI_BASE_CLASSES.."/Layout.lua")
local Icon = dofile(Paths.FOLDERS.UI_BASE_CLASSES .. "/Icon.lua")

function FrameFactory.createArrowFrame(iconName, parentFrame, frameWidth, verticalOffset, horizontalOffset, backgroundColor, borderColor)
    verticalOffset = verticalOffset or 0
    horizontalOffset = horizontalOffset or 0
    local arrowFrame =
        Frame(
        Box(
            {
                x = 0,
                y = 0
            },
            {
                width = frameWidth,
                height = 12
            },
            backgroundColor, borderColor
        ),
        Layout(Graphics.ALIGNMENT_TYPE.VERTICAL, 0, {x = horizontalOffset, y = verticalOffset}),
        parentFrame
    )
   local arrowButton = 
        Icon(
        Component(arrowFrame, Box({x = 0, y = 0}, {width = 12, height = 12}, nil, nil)),
        iconName,
        {x = 2, y = 1}
    )
    return {
        ["frame"] = arrowFrame,
        ["button"] = arrowButton
    }
end