Config { font = "xft:Meslo LG M DZ for Powerline:size=10,FontAwesome:size=10"
       , bgColor = "#002b36"
       , fgColor = "#657b83"
       , position = Static { xpos = 0 , ypos = 0, width = 3520, height = 32 }
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ <fc=#c0c0c0>|</fc> %coretemp% <fc=#c0c0c0>|</fc> %memory% <fc=#c0c0c0>|</fc> %bright% <fc=#c0c0c0>|</fc> %volume% <fc=#c0c0c0>|</fc> %battery% <fc=#c0c0c0>|</fc> %date% <fc=#c0c0c0>|</fc>"
       , commands = [ Run StdinReader

                    , Run CoreTemp       [ "--template" , "Temp: <core0>°C <core1>°C <core2>°C <core3>°C"
                                             , "--Low"      , "40"        -- units: °C
                                             , "--High"     , "80"        -- units: °C
                                             , "--low"      , "#859900"
                                             , "--normal"   , "#b58900"
        	                             , "--high"     , "#dc322f"
                                             ] 30

                    , Run Memory         [ "--template" ,"Mem: <usedratio>%"
                                            , "--Low"      , "20"        -- units: %
                                            , "--High"     , "90"        -- units: %
                                            , "--low"      , "#859900"
                                            , "--normal"   , "#b58900"
                                            , "--high"     , "#dc322f"
                                            ] 30

                    , Run Date           "%F %H:%M" "date" 30

                    , Run Battery        [ "--template" , "Batt: <acstatus>"
                                            , "--Low"      , "10"        -- units: %
                                            , "--High"     , "80"        -- units: %
                                            , "--low"      , "#dc322f"
                                            , "--normal"   , "#b58900"
                                            , "--high"     , "#859900"
                                            , "--" -- battery specific options
                                                    -- discharging status
                                                    , "-o"	, "<left>% (<timeleft>)"
                                                    -- AC "on" status
                                                    , "-O"	, "<fc=#b58900>Charging (<timeleft>)</fc>"
                                                    -- charged status
                                                    , "-i"	, "<fc=#859900>Charged</fc>"

                                            ] 30
                    , Run Com "/bin/sh"  [ "-c", "~/.xmonad/volume.sh"
                                            ] "volume" 30

                    , Run Brightness     [ "--template"   , " <percent>%"
                                            , "--"
                                            , "--device"     , "intel_backlight"
                                            ] 30
                    ]
       }
