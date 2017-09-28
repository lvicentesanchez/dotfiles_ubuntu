Config { font = "xft:Meslo LG M DZ for Powerline:size=10"
       , bgColor = "#002b36"
       , fgColor = "#657b83"
       , position = Static { xpos = 0 , ypos = 0, width = 3520, height = 32 }
       , commands = [ Run Cpu ["-L","3","-H","50","--normal","#859900","--high","#dc322f"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Swap [] 10
                    , Run Date "%F %H:%M" "date" 10
                    , Run StdinReader
                    , Run Battery [
	              "-t", "<acstatus>: <left>% - <timeleft>",
	              "--",
	              --"-c", "charge_full",
	              "-O", "AC",
	              "-o", "Bat",
	              "-h", "#859900",
	              "-l", "#dc322f"
	              ] 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% <fc=#c0c0c0>|</fc> %memory% * %swap% <fc=#c0c0c0>|</fc> %battery% <fc=#c0c0c0>|</fc> %date% <fc=#c0c0c0>|</fc>"
       }
