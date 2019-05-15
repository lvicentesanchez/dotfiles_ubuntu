Config { font = "xft:Fira Code:size=11,Font Awesome 5 Free:size=11"
       , bgColor = "#1d2021"
       , fgColor = "#d5c4a1"
       , position = Static { xpos = 0 , ypos = 0, width = 3520, height = 32 }
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ <fc=#c0c0c0>|</fc> %coretemp% <fc=#c0c0c0>|</fc> %memory% <fc=#c0c0c0>|</fc> %bright% <fc=#c0c0c0>|</fc> %pulse:Master% <fc=#c0c0c0>|</fc> %battery% <fc=#c0c0c0>|</fc> %date% <fc=#c0c0c0>|</fc>"
       , commands = [ Run StdinReader

                    , Run CoreTemp       [ "--template" , "Temp: <core0>°C <core1>°C <core2>°C <core3>°C"
                                             , "--Low"      , "40"        -- units: °C
                                             , "--High"     , "80"        -- units: °C
                                             , "--low"      , "#b8bb26"
                                             , "--normal"   , "#fabd2f"
        	                             , "--high"     , "#ff5d38"
                                             ] 30

                    , Run Memory         [ "--template" ,"Mem: <usedratio>%"
                                            , "--Low"      , "20"        -- units: %
                                            , "--High"     , "90"        -- units: %
                                            , "--low"      , "#b8bb26"
                                            , "--normal"   , "#fabd2f"
                                            , "--high"     , "#ff5d38"
                                            ] 30

                    , Run Date           "%F %H:%M" "date" 30

                    , Run Battery        [ "--template" , "Batt: <acstatus>"
                                            , "--Low"      , "10"        -- units: %
                                            , "--High"     , "80"        -- units: %
                                            , "--low"      , "#ff5d38"
                                            , "--normal"   , "#fabd2f"
                                            , "--high"     , "#b8bb26"
                                            , "--" -- battery specific options
                                                    -- discharging status
                                                    , "-o"	, "<left>% (<timeleft>)"
                                                    -- AC "on" status
                                                    , "-O"	, "<fc=#fabd2f>Charging (<timeleft>)</fc>"
                                                    -- charged status
                                                    , "-i"	, "<fc=#b8bb26>Charged</fc>"

                                            ] 30

                    , Run Volume "pulse" "Master"
                                         [ "--template" , "<status> <volume>%"
                                            , "--"
                                            , "--on"        , " "
                                            , "--onc"       , "#859900"
                                            , "--off"       , ""
                                            , "--offc"      , "#dc322f"
                                            ] 30


                    , Run Brightness     [ "--template"   , " <percent>%"
                                            , "--"
                                            , "--device"     , "intel_backlight"
                                            ] 30
                    ]
       }
