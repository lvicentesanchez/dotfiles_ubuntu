import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.BinarySpacePartition
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.SpawnOnce(spawnOnce)
import System.IO

main = do
    xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
    -- make sure to edit paths to xmobar and .xmobarrc to match your system.
    -- If xmobar is in your $PATH, with config ~/.xmobarrc you don't need the
    -- xmobar path or config file, use: xmproc <- spawnPipe "xmobar"  
    xmonad $ docks $ def
        { terminal = "urxvtc"
        , startupHook = do
            spawn "feh --bg-scale -z \"/home/luis/Pictures/Wallpapers/Cthulhu - 02.png\""            
            spawn "stalonetray -c ~/.config/stalonetrayrc"
            spawn "nm-applet"
            spawn "redshift-gtk"
            spawn "urxvtd -f -o -q"
        , normalBorderColor = myNormalBorderColor
        , focusedBorderColor = myFocusedBorderColor
	, manageHook = manageDocks <+> manageHook def
        , layoutHook = myLayout --avoidStruts  $  layoutHook def
        , logHook = dynamicLogWithPP $ xmobarPP
                  { ppOutput = hPutStrLn xmproc
                  , ppTitle = xmobarColor "#657b83" "" . shorten 100   
                  , ppCurrent = xmobarColor "#c0c0c0" "" . wrap "" ""
                  , ppSep     = xmobarColor "#c0c0c0" "" " | "
                  , ppUrgent  = xmobarColor "#ff69b4" ""
                  }
        , modMask = mod4Mask     
        } `additionalKeys`
        [ ((mod4Mask, xK_b)              , sendMessage ToggleStruts)
        , ((mod4Mask, xK_d)              , spawn "rofi -bw 1 -show drun")
        , ((mod4Mask, xK_m)              , spawn "xrandr --output DP1 --auto --primary --left-of eDP1")
        , ((mod4Mask .|. shiftMask, xK_m), spawn "xrandr --output DP1 --off")
        , ((mod4Mask .|. shiftMask, xK_l), spawn "dm-tool lock")
        ]

myLayout = avoidStruts $ emptyBSP ||| Full

myNormalBorderColor = "#002b36"

myFocusedBorderColor = "#657b83"

xmobarTitleColor = "green"
