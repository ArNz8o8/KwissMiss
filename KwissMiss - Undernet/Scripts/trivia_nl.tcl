######################################################################
#PLEASE customise the settings before rehashing your bot!            #
######################################################################

#  The full path to the file containing the questions and answers.
#  The account the bot runs on must have read access to this file.
set tgqdb "/home/8o8networkz/kwissmiss/scripts/Trivia_NL.questions"

#  The character that seperates the question and the answer in the
#  question/answer file.
set tgqdbsep "|"

#  What you set here defines how the bot expects the question/answer
#  pairs to be arranged.
#  If set to 1, bot expects lines in the format:
#    question<seperator>answer
#  If set to 0, bot expects lines in the format:
#    answer<seperator>question
set tgqdbquestionfirst 0

#  The full path to the file which tracks the scores. The account
#  the bot runs on must have read & write access to this file. If
#  the file does not exist, it will be created when needed.
set tgscf "/home/8o8networkz/kwissmiss/scripts/trivia.scores"

#  How to send error reports. Set to 1 to send error report to an
#  e-mail address of your choice, or 0 to record errors in a file.
#  Sending via e-mail requires that the bot have access to the "mail"
#  program. If the bot doesn't have access to this program (e.g. if
#  you're running the bot on the Windows platform), then set this to
#  0 to have errors recorded in a file.
set tgerrmethod 0

#  The full path to the file which records error reports. The
#  account the bot runs on must have read & write access to this
#  file. If the file does not exist, it will be created when needed.
set tgerrfil "/home/8o8networkz/kwissmiss/scripts/trivia.errors"

#  The e-mail address to send error reports to.
set tgerremail "you@somewhere.com"

#  If error reports are sent via e-mail, where will the bot create
#  a temp file? /tmp is usually a good idea.
set tgerrmailtmp "/tmp"

#  The full path to the file which the bot will use to generate
#  an HTML info page. The account the bot runs on must have read
#  & write access to this file. If the file does not exist, it will
#  be created when needed.
set tghtmlfile "//home/8o8networkz/frisheid/public_html/mychan.html"

#  How often (in seconds) does the html file get updated. Set to 0
#  to disable HTML page.
set tghtmlrefresh 0

#  The font to use on the html page.
set tghtmlfont "verdana,helvetica,arial"

#  The name of the channel where the game will be played. The game
#  can only be played on one channel.
set tgchan "#holland"

#  How many points to give a person for a correctly answered
#  question.
set tgpointsperanswer 1

#  The maximum number of hints to give before the question 'expires'
#  and the bot goes on to another one. This EXCLUDES the first hint
#  given as the question is asked (i.e. the hint which shows no letters,
#  only placeholders).
set tgmaxhint 2

#  Should the bot show the question on each hint (1) or only on the first (0)?
set tgalwaysshowq 0

#  Show questions in all CAPS (1) or not (0)?
set tgcapsquestion 0

#  Show answers in all CAPS (1) or not (0)?
set tgcapsanswer 0

#  Show hints in all CAPS (1) or not (0)?
set tgcapshint 0

#  The minimum number of correct answers in a row by one person which
#  puts them on a winning streak. Setting this to 0 will disable the
#  winning streak feature.
set tgstreakmin 3

#  The number of missed (i.e. unanswered, not skipped) questions to allow
#  before automatically stopping the game. Setting this to 0 will cause the
#  game to run until somebody uses the stop command, or the bot dies, gets
#  killed, pings out, or whatever.
set tgmaxmissed 5

#  The character to use as a placeholder in hints.
set tghintchar "_"

#  The time in seconds between hints.
set tgtimehint 30

#  The time in seconds between a correct answer, 'expired' or skipped question
#  and the next question being asked.
set tgtimenext 180

#  Phrases to use at random when someone answers a question correctly. This must
#  be a TCL list. If you don't know what that means, stick to the defaults.
set tgcongrats [list "Gefeliciteerd" "Goed zo" "Goed bezig" "Dat gaat lekker" "Je hebt het" "Zo moet het" "Laat maar zien hoe het moet" "Zie dat brein bij" "Nerd-Alert voor"]

#  Phrases to use when the question has 'expired'. Must also be a TCL list.
set tgnobodygotit [list "Niemand had het goed."]

#  Phrases to use when the question expired and there's another one coming up.
#  Yep, you guessed it... another TCL list.
set tgtrythenextone [list "Misschien weet je de volgende..."]

#  Will the bot calculate the time it took to get the correct
#  answer (1) or not (0)? (requires TCL 8.3 or higher).
set tgtimeanswer 1

#  Will the bot show the correct answer if nobody gets it (1) or not (0)?
set tgshowanswer 1

#  When someone answers a question, will the bot show just that person's score (0)
#  or will it show all players' scores (1) (default). This is useful in channels with
#  a large number (>20) players.
set tgshowallscores 0

#  Use bold codes in messages (1) or not (0)?
set tgusebold 0

#  Send private messages using /msg (1) or not (0)?
#  If set to 0, private messages will be sent using /notice
set tgpriv2msg 0

#  Word to use as /msg command to give help.
#  e.g. set tgcmdhelp "helpme" will make the bot give help when someone
#  does "/msg <botnick> helpme"
set tgcmdhelp "?"

#  Channel command used to start the game.
set tgcmdstart "!start"

#  Flags required to be able to use the start command.
set tgflagsstart "-|-"

#  Channel command used to stop the game.
set tgcmdstop "!stop"

#  Flags required to be able to use the stop command.
set tgflagsstop "o|o"

#  Channel command used to give a hint.
set tgcmdhint "!hint"

#  Flags required to be able to use the hint command.
set tgflagshint "-|-"

#  Disable the !hint command x seconds after someone uses it. This
#  prevents accidental double hints if two people use the command in
#  quick succession.
set tgtempnohint 10

#  Channel command used to skip the question.
set tgcmdskip "!skip"

#  Flags required to be able to use the skip command.
set tgflagsskip "o|o"

#  Channel command for showing the top 10 scores.
set tgcmdtop10 "!top10"

#  Flags required to use the top 10 command.
set tgflagstop10 "-|-"

#  /msg command used to reset scores.
set tgcmdreset "reset"

#  Flags required to be able to use the reset command.
set tgflagsreset "m|m"

#  Require password for resetting scores?
#  If enabled, you must use /msg bot reset <password> to reset scores.
#  The password is the one set by a user using '/msg bot pass'.
set tgresetreqpw 1

# Channel command used for score <- by ArNz|8o8
set tgcmdchanscore "!score"

#  Flags required to use the !Score command. <-- by ArNz|8o8
set tgflagschanscore "-|-"

#  /msg command for looking up somebody's score. 
set tgcmdlookup "score"

#  /msg command for looking up your target.
#  (i.e. the person ranked one higher than you).
set tgcmdtarget "target"

#  Channeld command for looking up your target. <- by ArNz|8o8
set tgcmdchantarget "!rank"

#  Flags required to use the !Target command. <-- by ArNz|8o8
set tgflagschantarget "-|-"

#  /msg command for reporting errors in questions and/or answers.
set tgcmderror "error"

#  Chan command to show channel's rules.

set tgcmdrules "rules"
set tgcmdchanrules "!rules"

#  Flags required to be able to use the skip command.
set tgflagsrules "o|o"

#  Channel's rules.
set tgrules "No advertising, no profanity, no harassing of users, no active scripts and no flooding. Break the rules and expect to be banned. Have fun. :-)"

#  Number of minutes between reminders of how to report errors.
set tgerrremindtime 180

#  COLOURS
#  The colour codes used are the same as those used by mIRC:
#  00:white        01:black        02:dark blue    03:dark green
#  04:red          05:brown        06:purple       07:orange
#  08:yellow       09:light green  10:turquoise    11:cyan
#  12:light blue   13:magenta      14:dark grey    15:light grey
#
#  Always specify colour codes as two digits, i.e. use "01" for
#  black, not "1".
#  You can specify a background colour using "00,04" (white text
#  on red background).
#  To disable a colour, use "".
#  Note that disabling some colours but not others may yield
#  unexpected results.

set tgcolourstart "07"		;#Game has started.
set tgcolourstop "07"		;#Game has stopped.
set tgcolourskip ""		;#Question has been skipped.
set tgcolourerr "07"		;#How to report errors.
set tgcolourmiss "07"		;#Nobody answered the question.
set tgcolourqhead ""		;#Question heading.
set tgcolourqbody ""		;#Question text
set tgcolourhint ""		;#Hint.
set tgcolourstrk ""		;#Person is on a winning streak.
set tgcolourscr1 ""		;#Score of person in first place.
set tgcolourscr2 ""		;#Score of person in second place.
set tgcolourscr3 ""		;#Score of person in third place.
set tgcolourrset ""		;#Scores have been reset.
set tgcolourstend ""		;#Winning streak ended.
set tgcolourmisc1 ""		;#Miscellaneous colour #1.
set tgcolourmisc2 ""		;#Miscellaneous colour #2.


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                   #
#    Any editing done beyond this point is done at your own risk!   #
#                                                                   #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#Misc checks & var initialisations
set tgver "1.5.nl"
set tgrel "release"
if {[info tclversion]<8.2} {
	putlog "\002[file tail [info script]]\002 failed to load: in order to use this script, eggdrop needs to be compiled to use tcl 8.2 or higher (recommended: latest stable version)."
	return
}
if {$tgtimeanswer==1&&[info tclversion]<8.3} {
	putlog "\002[file tail [info script]]\002 warning: timing of answers has been automatically disabled. this feature requires tcl 8.3 or higher."
	set tgtimeanswer 0
}
if {![info exists alltools_loaded]||$allt_version<205} {
	putlog "\002[file tail [info script]]\002 failed to load: please load alltools.tcl v1.14 or higher (available with eggdrop 1.6.13 or higher) before attempting to load this script."
	return
}
if {[utimerexists tghtml]!=""} {killutimer $tghtmlrefreshtimer}
if {$tghtmlrefresh>0} {
	set tghtmlrefreshtimer [utimer $tghtmlrefresh tghtml]
}
if {![file exists $tgqdb]} {
	putlog "\002[file tail [info script]]\002 failed to load: $tgqdb does not exist."
	return
}
if {[llength [split $tgchan]]!=1} {
	putlog "\002[file tail [info script]]\002 failed to load: too many channels specified."
	return
}
if {![info exists tgplaying]} {
	set ctcp-version "${ctcp-version} (with trivia.tcl $tgver ($tgrel) from www.eggdrop.za.net)"
	set tgplaying 0
}
if {![info exists tghintnum]} {set tghintnum 0}
if {![info exists tgmissed]} {set tgmissed 0}

#Binds
bind pubm $tgflagsstart "$tgchan %$tgcmdstart" tgstart
bind pubm $tgflagsstop "$tgchan %$tgcmdstop" tgstop
proc tgbindhintcmd {} {
	global tgflagshint tgcmdhint
	bind pubm $tgflagshint "$::tgchan %$tgcmdhint" tgforcehint
}
proc tgunbindhintcmd {} {
	global tgflagshint tgcmdhint
	unbind pubm $tgflagshint "$::tgchan %$tgcmdhint" tgforcehint
}
tgbindhintcmd
bind pubm $tgflagsskip "$tgchan %$tgcmdskip" tgskip
bind pubm $tgflagstop10 "$tgchan %$tgcmdtop10" tgshowtop10

#Binds added by ArNz|8o8

bind pubm $tgflagschanscore "$tgchan %$tgcmdchanscore" tgchanscorelookup
bind pubm $tgflagschantarget "$tgchan %$tgcmdchantarget" tgchantargetlookup
bind pubm $tgflagsrules "$tgchan %$tgcmdchanrules" tgruleschanmsg
#

bind msg - $tgcmdhelp tggivehelp
bind msg - $tgcmdlookup tgscorelookup
bind msg - $tgcmdtarget tgtargetlookup
bind msg - $tgcmderror tgerror
bind msg - $tgcmdrules tgrulesmsg
bind msg $tgflagsreset "$tgcmdreset" tgresetscores
bind kick - "$tgchan $botnick" tgbotgotkicked
bind evnt - disconnect-server tgbotgotdisconnected

#starts the game if it isn't running.
proc tgstart {nick host hand chan text} {
	global tgplaying tgstreak tgchan tgerrremindtime tgerrremindtimer tgmissed
	if {[strlwr $tgchan]==[strlwr $chan]} {
		if {$tgplaying==0} {
			tggamemsg "[tgcolstart]Kwis gestart door $nick!"
			tgnextq
			set tgplaying 1
			set tgstreak 0
			set tgmissed 0
			set tgerrremindtimer [timer $tgerrremindtime tgerrremind]
		}
	}
}

#stops the game if it's running.
proc tgstop {nick host hand chan text} {
	global tghinttimer tgnextqtimer tgplaying tgchan tgcurrentanswer tgstreak tgstreakmin
	global tgerrremindtimer tgrebindhinttimer
	if {[strlwr $tgchan]==[strlwr $chan]} {
		if {$tgplaying==1} {
			tggamemsg "[tgcolstop]Kwis gestopt door $nick!"
			if {$tgstreakmin>0&&[lindex [split $tgstreak ,] 1]>=$tgstreakmin} { tgstreakend }
			set tgstreak 0
			set tgplaying 0
			catch {unbind pubm -|- "$tgchan *" tgcheckanswer}
			if {[utimerexists tghint]!=""} {killutimer $tghinttimer}
			if {[utimerexists tgnextq]!=""} {killutimer $tgnextqtimer}
			if {[timerexists tgerrremind]!=""} {killtimer $tgerrremindtimer}
			if {[utimerexists tgrebindhinttimer]!=""} {killtimer $tgrebindhinttimer}
		}
	}
}

#gives a hint if there is currently a question to answer.
proc tgforcehint {nick host hand chan text} {
	global tghinttimer tgnextqtimer tgplaying tgchan tgcurrentanswer tgstreak tgstreakmin
	global tgtempnohint tgmaxhintcurrent tghintnum tgrebindhinttimer tgtempnohint
	if {[strlwr $tgchan]==[strlwr $chan]} {
		if {$tgplaying==1&&[utimerexists tghint]!=""} {
			killutimer $tghinttimer
			tghint
			tgunbindhintcmd
			if {$tghintnum<$tgmaxhintcurrent} {
				set tgrebindhinttimer [utimer $tgtempnohint tgbindhintcmd]
			}
		}
	}
}

#skips the current question if one has been asked.
proc tgskip {nick host hand chan text} {
	global tghinttimer tgnextqtimer tgplaying tgchan tgcurrentanswer tgstreak
	global tgstreakmin tgtimenext tgrebindhinttimer
	if {[strlwr $tgchan]==[strlwr $chan]} {
		if {$tgplaying==1&&[utimerexists tghint]!=""} {
			tggamemsg "[tgcolskip]Skipping to next question by [tgcolmisc2]$nick's[tgcolskip] request..."
			if {$tgstreakmin>0&&[lindex [split $tgstreak ,] 1]>=$tgstreakmin&&[strlwr [lindex [split $tgstreak ,] 0]]==[strlwr $nick]} {
				tgstreakend
				set tgstreak 0
			}
			catch {unbind pubm -|- "$tgchan *" tgcheckanswer}
			killutimer $tghinttimer
			if {[utimerexists tgrebindhinttimer]!=""} {killtimer $tgrebindhinttimer}
			set tgnextqtimer [utimer $tgtimenext tgnextq]
		}
	}
}

#reminds channel how to report errors in questions/answers
proc tgerrremind {} {
	global tgerrremindtimer tgerrremindtime botnick tgcmderror
	tggamemsg "[tgcolerr]Hallo, ik ben $botnick, en ik ben de gastvrouw voor vandaag.."
	set tgerrremindtimer [timer $tgerrremindtime tgerrremind]
}

#bot got kicked. stop the game.
proc tgbotgotkicked {nick host hand chan targ text} {
	tgquietstop
}

#bot got disconnected. stop the game.
proc tgbotgotdisconnected {disconnect-server} {
	tgquietstop
}

#stops the game without telling the channel.
proc tgquietstop {} {
	global tgplaying tgstreak tgchan tgcurrentanswer tghinttimer tgnextqtimer tgerrremindtimer
	global tgrebindhinttimer
	if {$tgplaying==1} {
		set tgstreak 0
		set tgplaying 0
		catch {unbind pubm -|- "$tgchan *" tgcheckanswer}
		if {[utimerexists tghint]!=""} {killutimer $tghinttimer}
		if {[utimerexists tgnextq]!=""} {killutimer $tgnextqtimer}
		if {[timerexists tgerrremind]!=""} {killtimer $tgerrremindtimer}
		if {[utimerexists tgrebindhinttimer]!=""} {killtimer $tgrebindhinttimer}
	}
}

#reads the question database.
proc tgreadqdb {} {
	global tgqdb tgquestionstotal tgquestionslist
	set tgquestionstotal 0
	set tgquestionslist ""
	set qfile [open $tgqdb r]
	set tgquestionslist [split [read -nonewline $qfile] "\n"]
	set tgquestionstotal [llength $tgquestionslist]
	close $qfile
}

#selects the next question.
proc tgnextq {} {
	global tgqdb tgcurrentquestion tgcurrentanswer tgquestionnumber
	global tgquestionstotal tghintnum tgchan tgquestionslist tgqdbsep tgqdbquestionfirst
	global tgcapsquestion tgcapsanswer
	tgreadqdb
	set tgcurrentquestion ""
	set tgcurrentanswer ""
	while {$tgcurrentquestion == ""} {
		set tgquestionnumber [rand [llength $tgquestionslist]]			
		set tgquestionselected [lindex $tgquestionslist $tgquestionnumber]
		set tgcurrentquestion [lindex [split $tgquestionselected $tgqdbsep] [expr $tgqdbquestionfirst^1]]
		if {$tgcapsquestion==1} {
			set tgcurrentquestion [strupr $tgcurrentquestion]
		}
		set tgcurrentanswer [string trim [lindex [split $tgquestionselected $tgqdbsep] $tgqdbquestionfirst]]
		if {$tgcapsanswer==1} {
			set tgcurrentanswer [strupr $tgcurrentanswer]
		}
	}
	unset tghintnum
	tghint
	bind pubm -|- "$tgchan *" tgcheckanswer
	return
}

#shows timed hints.
proc tghint {} {
	global tgmaxhint tghintnum tgcurrentanswer tghinttimer tgchan
	global tgtimehint tghintchar tgquestionnumber tgquestionstotal
	global tgcurrentquestion tghintcharsused tgnextqtimer tgtimenext tgstreak tgstreakmin
	global tgnobodygotit tgtrythenextone tgmissed tgmaxmissed tgcmdstart tgshowanswer
	global tgtimestart tgtimeanswer tgalwaysshowq tgmaxhintcurrent tgtempnohint tgcapshint
	if {![info exists tghintnum]} { 
      set tghintnum 0 
      regsub -all -- "\[^A-Za-z0-9\]" $tgcurrentanswer "" _hintchars 
      set tgmaxhintcurrent [expr [strlen $_hintchars]<=$tgmaxhint?[expr [strlen $_hintchars]-1]:$tgmaxhint] 
      catch {tgunbindhintcmd} 
      if {$tgmaxhintcurrent>0} { 
         set tgrebindhinttimer [utimer $tgtempnohint tgbindhintcmd] 
      } 
   } else { incr tghintnum } 
	
	if {$tghintnum >= [expr $tgmaxhintcurrent+1]} {
		incr tgmissed
		set _msg ""
		append _msg "[tgcolmiss][lindex $tgnobodygotit [rand [llength $tgnobodygotit]]]"
		if {$tgshowanswer==1} {
			append _msg " Het antwoord was [tgcolmisc2]$tgcurrentanswer[tgcolmiss]."
		}
		if {$tgmaxmissed>0&&$tgmissed>=$tgmaxmissed} {
			append _msg " Hmm... $tgmissed vragen onbeantwoord! Tijd om te stoppen dus.. Om het spel toch weer te spelen, type $tgcmdstart"
			tgquietstop
		} else {
			append _msg " [lindex $tgtrythenextone [rand [llength $tgtrythenextone]]]"
		}
		tggamemsg "[tgcolmiss]$_msg"
		if {$tgstreakmin>0&&[lindex [split $tgstreak ,] 1]>=$tgstreakmin} { tgstreakend }
		set tgstreak 0
		catch {unbind pubm -|- "$tgchan *" tgcheckanswer}
		if {$tgmaxmissed==0||$tgmissed<$tgmaxmissed} {
			set tgnextqtimer [utimer $tgtimenext tgnextq]
		}
		return
	} elseif {$tghintnum == 0} {
		set i 0
		set _hint {}
		set tghintcharsused {}
		foreach word [split $tgcurrentanswer] {
			regsub -all -- "\[A-Za-z0-9\]" $word $tghintchar _current
			lappend _hint $_current
		}
		if {$tgtimeanswer==1} {
			set tgtimestart [clock clicks -milliseconds]
		}
	} elseif {$tghintnum == 1} {
		set i 0
		set _hint {}
		while {$i<[llength [split $tgcurrentanswer]]} {
			set _word [lindex [split $tgcurrentanswer] $i]
			set j 0
			set _newword {}
			while {$j<[strlen $_word]} {
				if {$j==0} {
					append _newword [stridx $_word $j]
					lappend tghintcharsused $i,$j
				} else {
					if {[string is alnum [stridx $_word $j]]} {
						append _newword $tghintchar
					} else {
						append _newword [stridx $_word $j]
						lappend tghintcharsused $i,$j
					}
				}
				incr j
			}
			lappend _hint $_newword
			incr i
		}
		} else {
			set i 0
			set _hint {}
			while {$i<[llength [split $tgcurrentanswer]]} {
				set _word [lindex [split $tgcurrentanswer] $i]
				set j 0
				set _newword {}
				set _selected [rand [strlen $_word]]
				regsub -all -- "\[^A-Za-z0-9\]" $_word "" _wordalnum
				if {[strlen $_wordalnum]>=$tghintnum} {
					while {[lsearch $tghintcharsused $i,$_selected]!=-1||[string is alnum [stridx $_word $_selected]]==0} {
					 set _selected [rand [strlen $_word]]
					}
				}
				lappend tghintcharsused $i,$_selected
				while {$j<[strlen $_word]} {
					if {[lsearch $tghintcharsused $i,$j]!=-1||[string is alnum [stridx $_word $j]]==0} {
						append _newword [stridx $_word $j]
					} else {
						if {[string is alnum [stridx $_word $j]]} {
							append _newword $tghintchar
						}
				}
				incr j
			}
			lappend _hint $_newword
			incr i
		}
	}
	if {$tgcapshint==1} {
		set _hint [strupr $_hint]
	}
	# tggamemsg "[tgcolqhead]===== Question [expr $tgquestionnumber+1]/$tgquestionstotal [expr $tghintnum?"(Hint $tghintnum/$tgmaxhintcurrent)":""] ====="
	if {$tgalwaysshowq==1||$tghintnum==0} {
		tggamemsg "[expr $tgquestionnumber+1]: [tgcolqbody]$tgcurrentquestion"
	}
	tggamemsg "[tgcolhint]Hint: [join $_hint]"
	set tghinttimer [utimer $tgtimehint tghint]
}

#triggered when someone uses !top10 command
proc tgshowtop10 {nick host hand chan text} {
	global tgscores tgchan tgscorestotal
	if {[strlwr $chan]==[strlwr $tgchan]} {
		tggetscores
		if {$tgscorestotal>0} {
			if {$tgscorestotal>9} {
				set _max 9
			} else {
				set _max [expr $tgscorestotal-1]
			}
			set i 0
			while {$i<=$_max} {
				set _item [lindex $tgscores $i]
				set _nick [join [lindex [split $_item ,] 2]]
				set _score [join [lindex [split $_item ,] 0]]
				if {$i==0} {
					append _scores "[tgcolscr1]$_nick $_score"
				} elseif {$i==1} {
					append _scores ", [tgcolscr2]$_nick $_score"
				} elseif {$i==2} {
					append _scores ", [tgcolscr3]$_nick $_score"
				} else {
					append _scores ", [tgcolmisc1]$_nick $_score"
				}
				incr i
			}
			tggamemsg "[tgcolmisc1]Top 10: $_scores"
		} else {
			tggamemsg "[tgcolmisc1]Score table is empty."
		}
	}
}

#checks if anyone has said the correct answer on channel.
proc tgcheckanswer {nick host hand chan text} {
	global tgcurrentanswer
	if {[strlwr $tgcurrentanswer] == [tgstripcodes [strlwr [string trim $text]]]} {
		tgcorrectanswer $nick
	}
}

#triggered when someone says the correct answer.
proc tgcorrectanswer {nick} {
	global tgcurrentanswer tghinttimer tgtimenext tgchan tgnextqtimer tgstreak tgstreakmin
	global tgscoresbyname tgranksbyname tgranksbynum tgcongrats tgscorestotal tgmissed
	global tgtimestart tgshowallscores tgrealnames tgscoresbyrank tgtimeanswer
	tggetscores
	if {![info exists tgranksbyname([strlwr $nick])]} {
		set _oldrank 0
	} else {
		set _oldrank $tgranksbyname([strlwr $nick])
	}
	tgincrscore $nick
	tggetscores
	set _newrank $tgranksbyname([strlwr $nick])
	set _timetoanswer ""
	if {$tgtimeanswer==1} {
		set _timetoanswer [expr [expr [clock clicks -milliseconds]-$tgtimestart]/1000.00]
	}
	set _msg "[tgcolmisc1][lindex $tgcongrats [rand [llength $tgcongrats]]] [tgcolmisc2]$nick[tgcolmisc1]! Het antwoord was [tgcolmisc2]$tgcurrentanswer[tgcolmisc1].[expr $tgtimeanswer==1?" Je had het goed in [tgcolmisc2]$_timetoanswer[tgcolmisc1] seconden.":""]"
	if {$_newrank<$_oldrank} {
		if {$_newrank==1} {
			append _msg " Je staat nu op de eerste plek!"
		} else {
			if {$tgshowallscores==0} {
				append _msg " Je bent een plek omhoog gegaan!"
			} else {
				append _msg " Je staat nu op de [tgcolmisc2][expr $tgranksbyname([strlwr $nick])][tgcolmisc1][expr $tgranksbyname([strlwr $nick])==1?"ste":"de"] plaats, achter [tgcolmisc2]$tgrealnames($tgranksbynum([expr $_newrank-1]))[tgcolmisc1] met [tgcolmisc2]$tgscoresbyrank([expr $_newrank-1])[tgcolmisc1]punten."
			}
		}
	}
	tggamemsg "$_msg"
	if {$tgstreak!=0} {
		if {[lindex [split $tgstreak ,] 0]==[strlwr $nick]} {
			set tgstreak [strlwr $nick],[expr [lindex [split $tgstreak ,] 1]+1]
			if {$tgstreakmin>0&&[lindex [split $tgstreak ,] 1]>=$tgstreakmin} {
				tggamemsg "[tgcolstrk][tgcolmisc2]$nick[tgcolstrk] is lekker bezig! [tgcolmisc2][lindex [split $tgstreak ,] 1] [tgcolstrk]juiste antwoorden alweer!"
			}
		} else {
			if {$tgstreakmin>0&&[lindex [split $tgstreak ,] 1]>=$tgstreakmin} { tgstreakend }
			set tgstreak [strlwr $nick],1
		}
	} else {
		set tgstreak [strlwr $nick],1
	}
	set tgmissed 0
	tgshowscores $nick
	catch {unbind pubm -|- "$tgchan *" tgcheckanswer}
	killutimer $tghinttimer
	set tgnextqtimer [utimer $tgtimenext tgnextq]
}

#read current scores from file, sort and store in variable.
proc tggetscores {} {
	global tgscf tgscorestotal tgscores tgscoresbyname tgranksbyname tgranksbynum
	global tgrealnames tgscoresbyrank
	if {[file exists $tgscf]&&[file size $tgscf]>2} {
		set _sfile [open $tgscf r]
		set tgscores [lsort -dict -decreasing [split [gets $_sfile]]]
		close $_sfile
		set tgscorestotal [llength $tgscores]
	} else {
		set tgscores ""
		set tgscorestotal 0
	}
	if {[info exists tgscoresbyname]} {unset tgscoresbyname}
	if {[info exists tgranksbyname]} {unset tgranksbyname}
	if {[info exists tgrealnames]} {unset tgrealnames}
	if {[info exists tgranksbynum]} {unset tgranksbynum}
	set i 0
	while {$i<[llength $tgscores]} {
		set _item [lindex $tgscores $i]
		set _nick [lindex [split $_item ,] 2]
		set _lwrnick [lindex [split $_item ,] 3]
		set _score [lindex [split $_item ,] 0]
		set tgscoresbyname($_lwrnick) $_score
		set tgrealnames($_lwrnick) $_nick
		set tgranksbyname($_lwrnick) [expr $i+1]
		set tgranksbynum([expr $i+1]) $_lwrnick
		set tgscoresbyrank([expr $i+1]) $_score
		incr i
	}
	return
}

#increment someone's score.
proc tgincrscore {who} {
	global tgscores tgscf tgpointsperanswer tgscorestotal tgscoresbyname
	tggetscores
	if {$tgscorestotal>0} {
		set i 0
		if {![info exists tgscoresbyname([strlwr $who])]} {
			append _newscores "1,[expr 1000000000000.0/[unixtime]],$who,[strlwr $who] "
		}
		while {$i<[llength $tgscores]} {
			set _item [lindex $tgscores $i]
			set _nick [lindex [split $_item ,] 2]
			set _time [lindex [split $_item ,] 1]
			set _score [lindex [split $_item ,] 0]
			if {[strlwr $who]==[strlwr $_nick]} {
				append _newscores "[expr $_score+$tgpointsperanswer],[expr 1000000000000.0/[unixtime]],$who,[strlwr $who][expr [expr [llength $tgscores]-$i]==1?"":"\ "]"
			} else {
				append _newscores "$_score,$_time,$_nick,[strlwr $_nick][expr [expr [llength $tgscores]-$i]==1?"":"\ "]"
			}
			incr i
		}
	} else {
		append _newscores "1,[expr 1000000000000.0/[unixtime]],$who,[strlwr $who]"
	}
	set _sfile [open $tgscf w]
	puts $_sfile "$_newscores"
	close $_sfile
	return
}

#shows the current scores on channel.
proc tgshowscores {nick} {
	global tgscores tgchan tgscorestotal tgshowallscores tgranksbyname tgranksbynum
	global tgscoresbyname tgrealnames tgscoresbyrank
	tggetscores
	set i 0
	if {$tgshowallscores} {
		while {$i<[llength $tgscores]} {
			set _item [lindex $tgscores $i]
			set _nick [lindex [split $_item ,] 2]
			set _score [lindex [split $_item ,] 0]
			if {$i==0} {
				append _scores "[tgcolscr1]$_nick $_score"
			} elseif {$i==1} {
				append _scores ", [tgcolscr2]$_nick $_score"
			} elseif {$i==2} {
				append _scores ", [tgcolscr3]$_nick $_score"
			} elseif {[onchan $_nick $tgchan]} {
				append _scores ", [tgcolmisc1]$_nick $_score"
			}
			incr i
		}
		tggamemsg "[tgcolmisc1]De stand: $_scores"
	} else {
		if {$tgranksbyname([strlwr $nick])==1} {
			set _tgt "."
		} else {
			set _tgt ", achter [tgcolmisc2]$tgrealnames($tgranksbynum([expr $tgranksbyname([strlwr $nick])-1]))[tgcolmisc1] met [tgcolmisc2]$tgscoresbyrank([expr $tgranksbyname([strlwr $nick])-1])[tgcolmisc1]."
		}
		tggamemsg "[tgcolmisc2]$nick [tgcolmisc1]heeft nu [tgcolmisc2]$tgscoresbyname([strlwr $nick]) [tgcolmisc1][expr $tgscoresbyname([strlwr $nick])==1?"punt":"punten"] en staat op de [tgcolmisc2][expr $tgranksbyname([strlwr $nick])][tgcolmisc1][expr $tgranksbyname([strlwr $nick])==1?"ste":"de"] plaats."
	}
}

#reset current scores.
proc tgresetscores {nick host hand text} {
	global tgscf tgscorestotal tgscores tgplaying tgresetreqpw
	if {($tgresetreqpw==1 && [passwdok $hand $text]) || $tgresetreqpw==0} {
		if {[file exists $tgscf]&&[file size $tgscf]>2} {
			set _sfile [open $tgscf w]
			puts $_sfile ""
			close $_sfile
			set tgscores ""
			set tgscorestotal 0
		}
		tggamemsg "[tgcolrset]===== Score table reset by $nick! ====="
	}
}

#triggered when a winning streak ends.
proc tgstreakend {} {
		global tgstreak tgrealnames
		tggamemsg "[tgcolstend]Daar gaat je score [tgcolmisc2]$tgrealnames([lindex [split $tgstreak ,] 0])![tgcolstend] "
		return
}



#triggered when someone /msgs the bot with the score lookup command.
proc tgscorelookup {nick host hand text} {
	global tgscoresbyname tgranksbyname tgscorestotal tgrealnames
	if {$text==""} { set text $nick } else { set text [lindex [split $text] 0] }
	tggetscores
	if {![info exists tgscoresbyname([strlwr $text])]} {
		if {[strlwr $text]==[strlwr $nick]} {
			set _who "[tgcolmisc1]Jij bent"
		} else {
			set _who "[tgcolmisc2]$text [tgcolmisc1]is"
		}
		[tgpriv] $nick "[tgbold]$_who [tgcolmisc1]niet te vinden op de score lijst."
	} else {
		if {[strlwr $text]==[strlwr $nick]} {
			set _who "[tgcolmisc1]Jij hebt"
		} else {
			set _who "[tgcolmisc2]$tgrealnames([strlwr $text]) [tgcolmisc1]heeft"
		}
		[tgpriv] $nick "[tgbold]$_who [tgcolmisc2]$tgscoresbyname([strlwr $text])[tgcolmisc1] punten, en staat op de [tgcolmisc2][expr $tgranksbyname([strlwr $nick])][tgcolmisc1][expr $tgranksbyname([strlwr $nick])==1?"ste":"de"] plaats."
	}
}

#triggered when someone types !score in the channel <- by ArNz|8o8
proc tgchanscorelookup {nick host hand chan text} {
	global tgscoresbyname tgranksbyname tgscorestotal tgrealnames tgchan tgscores
	
	if {$text=="!score"} { set text $nick } else { set text [lindex [split $text] 0] }
	tggetscores
	if {![info exists tgscoresbyname([strlwr $text])]} {
		if {[strlwr $text]==[strlwr $nick]} {
			set _who "[tgcolmisc1]Jij bent"
		} else {
			set _who "[tgcolmisc2]$text [tgcolmisc1]is"
		}
		tggamemsg "[tgbold]$_who [tgcolmisc1]niet te vinden op de score lijst."
	} else {
		if {[strlwr $text]==[strlwr $nick]} {
			set _who "[tgcolmisc1]Jij hebt"
		} else {
			set _who "[tgcolmisc2]$tgrealnames([strlwr $text]) [tgcolmisc1]heeft"
		}
		tggamemsg "[tgbold]$_who [tgcolmisc2]$tgscoresbyname([strlwr $text])[tgcolmisc1] [expr $tgscoresbyname([strlwr $nick])==1?"punt":"punten"] en staat op de [tgcolmisc2][expr $tgranksbyname([strlwr $nick])][tgcolmisc1][expr $tgranksbyname([strlwr $nick])==1?"ste":"de"] plaats."
	}
}

#triggered when someone types !rank in the channel <- by ArNz|8o8
proc tgchantargetlookup {nick host hand chan text} {
	global tgscoresbyname tgranksbyname tgscorestotal tgranksbynum tgrealnames
	tggetscores
	if {![info exists tgscoresbyname([strlwr $nick])]} {
		tggamemsg "[tgbold][tgcolmisc1]Je staat nog niet op de score lijst."
	} elseif {$tgranksbyname([strlwr $nick])==1} {
		tggamemsg "[tgbold][tgcolmisc1]Je staat eerste met [tgcolmisc2]$tgscoresbyname($tgranksbynum([expr $tgranksbyname([strlwr $nick])]))[tgcolmisc1] [expr $tgscoresbyname([strlwr $nick])==1?"punt":"punten"]. Way to go!"
	} else {
		tggamemsg "[tgbold][tgcolmisc1]Je staat momenteel [tgcolmisc2][expr $tgranksbyname([strlwr $nick])][tgcolmisc1][expr $tgranksbyname([strlwr $nick])==1?"ste":"de"]. Je hebt [tgcolmisc2]$tgscoresbyname($tgranksbynum([expr $tgranksbyname([strlwr $nick])]))[tgcolmisc1] [expr $tgscoresbyname([strlwr $nick])==1?"punt":"punten"]. Je volgende slachtoffer is [tgcolmisc2]$tgrealnames($tgranksbynum([expr $tgranksbyname([strlwr $nick])-1])) [tgcolmisc1]met [tgcolmisc2]$tgscoresbyname($tgranksbynum([expr $tgranksbyname([strlwr $nick])-1]))[tgcolmisc1] [expr $tgscoresbyname([strlwr $nick])==1?"punt":"punten"]."
	}
}

#triggered when someone /msgs the bot with the target lookup command.
proc tgtargetlookup {nick host hand text} {
	global tgscoresbyname tgranksbyname tgscorestotal tgranksbynum tgrealnames
	tggetscores
	if {![info exists tgscoresbyname([strlwr $nick])]} {
		[tgpriv] $nick "[tgbold][tgcolmisc1]Je staat nog niet op de score lijst."
	} elseif {$tgranksbyname([strlwr $nick])==1} {
		[tgpriv] $nick "[tgbold][tgcolmisc1]Je staat eerste!"
	} else {
		[tgpriv] $nick "[tgbold][tgcolmisc1]Je staat op plek [tgcolmisc2]$tgscoresbyname([strlwr $nick])[tgcolmisc1]. Je volgende slachtoofer is [tgcolmisc2]$tgrealnames($tgranksbynum([expr $tgranksbyname([strlwr $nick])-1])) [tgcolmisc1]met [tgcolmisc2]$tgscoresbyname($tgranksbynum([expr $tgranksbyname([strlwr $nick])-1]))[tgcolmisc1], welke staat op [tgcolmisc2][ordnumber [expr $tgranksbyname([strlwr $nick])-1]] [tgcolmisc1]van de [tgcolmisc2]$tgscorestotal[tgcolmisc1]."
	}
}

#triggered when someone /msgs the bot with the error reporting command.
proc tgerror {nick host hand text} {
	global tgquestionstotal tgquestionslist tgerrmethod tgerrfil tgerremail tgerrmailtmp
	if {$text==""||![string is int [lindex [split $text] 0]]} {
		[tgpriv] $nick "[tgbold][tgcolmisc1]You need to specify the number of the question."
		return
	}
	tgreadqdb
	set _qnum [lindex [split $text] 0]
	if {$_qnum>$tgquestionstotal} {
		[tgpriv] $nick "[tgbold][tgcolmisc1]No such question."
		return
	}
	set _qques [lindex [split [lindex $tgquestionslist [expr $_qnum-1]] |] 1]
	set _qans [lindex [split [lindex $tgquestionslist [expr $_qnum-1]] |] 0]
	set _desc [join [lrange [split $text] 1 end]]
	if {$_desc==""} { set _desc "No further info given for this error." }
	if {$tgerrmethod==1} {
		set _fname $tgerrmailtmp\trivia[rand 100000].tmp
		set _file [open $_fname w]
	} else {
		set _file [open $tgerrfil a]
	}
	puts $_file ""
	puts $_file "Error report generated [strftime %A,\ %d\ %B\ %Y\ @\ %H:%M:%S]"
	puts $_file "Reported by:\t$nick!$host"
	puts $_file "Question #:\t$_qnum"
	puts $_file "Question:\t$_qques"
	puts $_file "Answer:\t\t$_qans"
	puts $_file "Comments:\t$_desc"
	puts $_file "------------------------------"
	close $_file
	if {$tgerrmethod==1} {
		exec mail -s "trivia.tcl error report from $nick" $tgerremail < $_fname
		file delete $_fname
		[tgpriv] $nick "[tgbold][tgcolmisc1]Thanks! Your error report has been e-mailed to my owner."
	} else {
		[tgpriv] $nick "[tgbold][tgcolmisc1]Thanks! Your error report has been logged and will be looked at as soon as possible."
	}
}

#triggered when op uses the !rules command.
proc tgruleschanmsg {nick host hand chan text} {
	global tgrules
	tggamemsg "The channel's rules are as follows: $tgrules"
}

#triggered when someone /msgs the bot with the help command.
proc tggivehelp {nick host hand {text ""}} {
	global botnick tgcmdlookup tgcmdhelp tgcmdstart tgcmdstop tgchan tgflagsstop
	global tgcmdstop tgflagshint tgcmdhint tgflagsskip tgcmdskip tgflagsreset tgcmdreset
	global tgcmdtarget tgcmderror tgcmdrules tgflagsstart
	if {$text==""} {
		[tgpriv] $nick "You have access to the following /MSG commands:"
		[tgpriv] $nick "To use, /MSG $botnick <command>"
		[tgpriv] $nick "  \002[strupr $tgcmdrules]\002"
		[tgpriv] $nick "   -- Lists the channel rules."
		[tgpriv] $nick "  \002[strupr $tgcmdlookup]\002 \[nick\]"
		[tgpriv] $nick "   -- Shows you the rank & score of \[nick\], if specified,"
		[tgpriv] $nick "    otherwise, shows you your own rank & score."
		[tgpriv] $nick "  \002[strupr $tgcmdtarget]\002"
		[tgpriv] $nick "   -- Shows you the rank & score of the person ranked"
		[tgpriv] $nick "    one above you."
		[tgpriv] $nick "  \002[strupr $tgcmderror]\002 <number> \[description\]"
		[tgpriv] $nick "   -- Reports an error in question <number>"
		[tgpriv] $nick "    The description is optional, but helpful."
		if {[matchattr $hand $tgflagsreset $tgchan]} {
			[tgpriv] $nick "  \002[strupr $tgcmdreset]\002"
			[tgpriv] $nick "   -- Resets the score table."
		}
		[tgpriv] $nick "For a list of channel commands, /MSG $botnick [strupr $tgcmdhelp] PUBCMDS"
	}
	if {[strlwr $text]=="pubcmds"} {
		[tgpriv] $nick "You have access to the following channel commands:"
		if {[matchattr $hand $tgflagsstart $tgchan]} {
			[tgpriv] $nick "  \002$tgcmdstart\002 -- starts the trivia game."
		}
		if {[matchattr $hand $tgflagsstop $tgchan]} {
			[tgpriv] $nick "  \002$tgcmdstop\002 -- stops the trivia game."
		}
		if {[matchattr $hand $tgflagshint $tgchan]} {
			[tgpriv] $nick "  \002$tgcmdhint\002 -- shows a hint."
		}
		if {[matchattr $hand $tgflagsskip $tgchan]} {
			[tgpriv] $nick "  \002$tgcmdskip\002 -- skips current question."
		}
		[tgpriv] $nick "For a list of /MSG commands, /MSG $botnick [strupr $tgcmdhelp]"
	}
}

# Returns text without colour, bold, etc. control codes.
# This is a stripped down version of the proc in MC_8's mc.moretools.tcl.
proc tgstripcodes {text} {
	regsub -all -- "\003(\[0-9\]\[0-9\]?(,\[0-9\]\[0-9\]?)?)?" $text "" text
	set text "[string map -nocase [list \002 "" \017 "" \026 "" \037 ""] $text]"
	return $text
}

proc tggamemsg {what} {
	global tgchan
	putquick "PRIVMSG $tgchan :[tgbold]$what"
}

proc tgbold {} {
	global tgusebold
	if {$tgusebold==1} { return "\002" }
}
proc tgcolstart {} {
	global tgcolourstart
	if {$tgcolourstart!=""} { return "\003$tgcolourstart" }
}
proc tgcolstop {} {
	global tgcolourstop
	if {$tgcolourstop!=""} { return "\003$tgcolourstop" }
}
proc tgcolskip {} {
	global tgcolourskip
	if {$tgcolourskip!=""} { return "\003$tgcolourskip" }
}
proc tgcolerr {} {
	global tgcolourerr
	if {$tgcolourerr!=""} { return "\003$tgcolourerr" }
}
proc tgcolmiss {} {
	global tgcolourmiss
	if {$tgcolourmiss!=""} { return "\003$tgcolourmiss" }
}
proc tgcolqhead {} {
	global tgcolourqhead
	if {$tgcolourqhead!=""} { return "\003$tgcolourqhead" }
}
proc tgcolqbody {} {
	global tgcolourqbody
	if {$tgcolourqbody!=""} { return "\003$tgcolourqbody" }
}
proc tgcolhint {} {
	global tgcolourhint
	if {$tgcolourhint!=""} { return "\003$tgcolourhint" }
}
proc tgcolstrk {} {
	global tgcolourstrk
	if {$tgcolourstrk!=""} { return "\003$tgcolourstrk" }
}
proc tgcolscr1 {} {
	global tgcolourscr1
	if {$tgcolourscr1!=""} { return "\003$tgcolourscr1" }
}
proc tgcolscr2 {} {
	global tgcolourscr2
	if {$tgcolourscr2!=""} { return "\003$tgcolourscr2" }
}
proc tgcolscr3 {} {
	global tgcolourscr3
	if {$tgcolourscr3!=""} { return "\003$tgcolourscr3" }
}
proc tgcolrset {} {
	global tgcolourrset
	if {$tgcolourrset!=""} { return "\003$tgcolourrset" }
}
proc tgcolstend {} {
	global tgcolourstend
	if {$tgcolourstend!=""} { return "\003$tgcolourstend" }
}
proc tgcolmisc1 {} {
	global tgcolourmisc1
	if {$tgcolourmisc1!=""} { return "\003$tgcolourmisc1" }
}
proc tgcolmisc2 {} {
	global tgcolourmisc2
	if {$tgcolourmisc2!=""} { return "\003$tgcolourmisc2" }
}
proc tgpriv {} {
	global tgpriv2msg
	if {$tgpriv2msg==1} { return "putmsg" } else { return "putnotc" }
}

#this generates an html file with all the people on the chan with
#their score, as well as a list of all scores, sorted by rank
proc tghtml {} {
	global tgchan botnick tghtmlfile tghtmlrefresh server tgscoresbyname tgranksbyname
	global tgscorestotal tgranksbyname tgrealnames tgscoresbyrank tgranksbynum tgplaying
	global tgquestionstotal tghtmlrefreshtimer tghtmlfont
	tggetscores
	tgreadqdb
	set _file [open $tghtmlfile~new w]
	puts $_file "<!DOCTYPE HTML PUBLIC \"-/W3C/DTD HTML 4.01 Transitional/EN\">"
	puts $_file "<html>"
	puts $_file " <head>"
	puts $_file "  <title>$botnick's trivia channel: $tgchan on [lindex [split $server :] 0]</title>"
	puts $_file "  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">"
	puts $_file "  <meta http-equiv=\"refresh\" content=\"$tghtmlrefresh\">"
	puts $_file "  <meta name=\"generator\" content=\"trivia.tcl script for eggdrop. http://www.eggdrop.za.net/\">"
	puts $_file "  <style type=\"text/css\">"
	puts $_file "  <!--"
	puts $_file "  body,td{font-family:$tghtmlfont;font-size:13px;}"
	puts $_file "  a{text-decoration:none;color:#09f;}"
	puts $_file "  -->"
	puts $_file "  </style>"
	puts $_file " </head>"
	puts $_file " <body>"
	puts $_file "  <h1>$tgchan on [lindex [split $server :] 0]</h1>"
	puts $_file "  <hr size=\"1\" noshade>"
	if {![onchan $botnick $tgchan]} {
		puts $_file "  <p>Hmmm... for some reason I'm not on $tgchan at the moment. Please try again later.</p>"
	} else {
		puts $_file "  <p>Trivia game is currently <b>[expr $tgplaying==1?"on":"off"]</b>. There are <b>$tgquestionstotal</b> questions in the database."
		puts $_file "  <p>People on $tgchan right now:<br>"
		puts $_file "  <table width=\"50%\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\"><tr><td><table width=\"100%\" cellspacing=\"3\" border=\"0\">"
		puts $_file "   <tr>"
		puts $_file "    <td><b>Nick</b></td>"
		puts $_file "    <td><b>Score</b></td>"
		puts $_file "    <td><b>Rank</b></td>"
		puts $_file "    <td><b>Idle</b></td>"
		puts $_file "   </tr>"
		foreach nick [lsort [chanlist $tgchan]] {
			puts $_file "   <tr>"
			puts $_file "    <td>[expr [isop $nick $tgchan]?"@":""][expr [isvoice $nick $tgchan]?"+":""]$nick[expr [string match $nick $botnick]?" (that's me!)":""]</td>"
			if {[info exists tgscoresbyname([strlwr $nick])]} {
				puts $_file "    <td>$tgscoresbyname([strlwr $nick])</td>"
			} else {
				puts $_file "    <td>-</td>"
			}
			if {[info exists tgranksbyname([strlwr $nick])]} {
				puts $_file "    <td>$tgranksbyname([strlwr $nick])</td>"
			} else {
				puts $_file "    <td>-</td>"
			}
			puts $_file "   <td>[expr [getchanidle $nick $tgchan]>10?"[getchanidle $nick $tgchan]m":"-"]</td>"
			puts $_file "   </tr>"
		}
		puts $_file "  </table></td></tr></table>"
	}
	if {$tgscorestotal>0} {
		puts $_file "  <p><small>There [expr $tgscorestotal==1?"is":"are"] currently <b>$tgscorestotal</b> [expr $tgscorestotal==1?"nick":"nicks"] in the score table:<br>"
		set _rank 1
		while {$_rank<=$tgscorestotal} {
			puts $_file "  <b>$_rank</b>. $tgrealnames($tgranksbynum($_rank)) $tgscoresbyrank($_rank)<br>"
			incr _rank
		}
	} else {
		puts $_file "  <p><small>There are currently no nicks in the score table.<br>"
	}
	puts $_file "  </small></p>"
	puts $_file "  <hr size=\"1\" noshade>"
	puts $_file "  <small>Generated on [strftime %A,\ %d\ %B\ %Y\ @\ %H:%M:%S] by <a href=\"http://www.eggdrop.za.net/\">trivia.tcl</a> for <a href=\"http://www.eggheads.org\">eggdrop</a>.<br>"
	puts $_file "  This page is automatically updated (and refreshed if supported by your browser) every [expr $tghtmlrefresh==1?"second":"$tghtmlrefresh seconds"].</small>"
	puts $_file " </body>"
	puts $_file "</html>"
	close $_file
	file rename -force $tghtmlfile~new $tghtmlfile
	set tghtmlrefreshtimer [utimer $tghtmlrefresh tghtml]
}

putlog "======================================================="
putlog "* trivia.tcl $tgver ($tgrel) by ArNz|8o8 loaded"
putlog "* Dutch Questions 4/3/2016"
tgreadqdb
putlog "* $tgquestionstotal questions in $tgqdb"
putlog "======================================================="
