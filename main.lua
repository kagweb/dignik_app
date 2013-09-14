-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- show default status bar (iOS)
display.setStatusBar( display.DefaultStatusBar )

-- include Corona's "widget" library
local widget = require "widget"
local storyboard = require "storyboard"

display.setDefault( "background", 255, 255, 255 )

local function onFirstView( event )
  storyboard.gotoScene( "view1" )
end

local function onSecondView( event )
  storyboard.gotoScene( "view2" )
end

local function onThirdView( event )
  storyboard.gotoScene( "view3" )
end

local tabButtons =
{
  {
    label="アイテムを探す",
    defaultFile = "assets/tabIcon.png",
    overFile = "assets/tabIcon-down.png",
    width = 64, height = 64,
    onPress = onFirstView,
    selected = true
  },
  {
    label="アイテムを登録",
    defaultFile = "assets/tabIcon.png",
    overFile = "assets/tabIcon-down.png",
    width = 64, height = 64,
    onPress = onSecondView
  },
  {
    label="設定",
    defaultFile = "assets/tabIcon.png",
    overFile = "assets/tabIcon-down.png",
    width = 64, height = 64,
    onPress = onThirdView
  }
}

-- create the actual tabBar widget
local tabBar = widget.newTabBar
{
    top = display.contentHeight - 50,
    buttons = tabButtons,
    width = display.contentWidth,
    backgroundFile = "assets/tabbar.png",
    tabSelectedLeftFile = "assets/tabBar_tabSelectedLeft.png",
    tabSelectedMiddleFile = "assets/tabBar_tabSelectedMiddle.png",
    tabSelectedRightFile = "assets/tabBar_tabSelectedRight.png",
    tabSelectedFrameWidth = 20,
    tabSelectedFrameHeight = 52,
}

storyboard.gotoScene( "view1" );
