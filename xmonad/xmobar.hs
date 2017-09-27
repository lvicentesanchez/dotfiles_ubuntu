Config { font = "xft:Meslo LG M DZ for Powerline:size=10"
       , bgColor = "black"
       , fgColor = "grey"
       , position = Static { xpos = 0 , ypos = 0, width = 3520, height = 32 }
       , commands = [ Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
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
	              "-h", "green",
	              "-l", "red"
	              ] 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %memory% * %swap% | %battery% | <fc=#ee9a00>%date%</fc> |"
       }
