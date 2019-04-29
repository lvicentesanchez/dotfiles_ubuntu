import Graphics.X11.ExtraTypes.XF86
import System.IO
import System.Posix.Env (putEnv)
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.BinarySpacePartition
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.SpawnOnce(spawnOnce)

main = do
    putEnv "_JAVA_AWT_WM_NONREPARENTING=1"
    xmproc <- spawnPipe "xmobar ~/.xmonad/xmobar.hs"
    xmonad $ docks $ def
        { terminal = "kitty --single-instance"
        , startupHook = do
            spawnOnce "feh --bg-scale -z \"/home/luis/Pictures/Wallpapers/Cthulhu - 02.png\"" 
            spawnOnce "stalonetray -c ~/.config/stalonetrayrc"
            spawnOnce "nm-applet"
            spawnOnce "redshift-gtk"
            spawnOnce "setxkbmap -option compose:rctrl"
            spawnOnce "light-locker" 
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
        , ((mod4Mask, xK_m)              , spawn "xrandr --output DP-1 --auto --primary --left-of eDP-1")
        , ((mod4Mask .|. shiftMask, xK_m), spawn "xrandr --output DP-1 --off")
        --, ((mod4Mask .|. shiftMask, xK_l), spawn "dm-tool lock")
        , ((mod4Mask .|. shiftMask, xK_l), spawn "light-locker-command -l")
        , ((0, xF86XK_MonBrightnessUp)   , spawn "light -A 5")
        , ((0, xF86XK_MonBrightnessDown) , spawn "light -U 5")
        , ((0, xF86XK_AudioRaiseVolume)  , spawn "pactl set-sink-volume 0 +5%")
        , ((0, xF86XK_AudioLowerVolume)  , spawn "pactl set-sink-volume 0 -5%")
        , ((0, xF86XK_AudioMute)         , spawn "pactl set-sink-mute 0 toggle")
        ]

myLayout = avoidStruts $ emptyBSP ||| Full

myNormalBorderColor = "#657b83"

myFocusedBorderColor = "#b58900"
