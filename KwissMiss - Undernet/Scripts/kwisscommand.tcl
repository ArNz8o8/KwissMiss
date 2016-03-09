#set password for nick identification if you are changing nick to registered nick and it has the same password as the botnick
set password "--"

#Commands


bind pub m !mode pub_do_mode 
bind pub m !away pub_do_away
bind pub m !back pub_do_back
bind pub m !rehash pub_do_rehash
bind pub m !global pub:global
bind pub m !access pub_access
bind pub m !info pub_info
bind pub m !save pub_do_save
bind pub m !safe pub_do_safe
bind pub o !restart pub_do_restart
bind pub m !chattr chattr:pub


#code 
bind pub m !identify  do_identify

#----------------------------------------------------------------
proc pub_do_bot {nick host hand channel text} {
  
  puthelp "PRIVMSG $nick :!away <msg> - Set the bot away with a message."
  puthelp "PRIVMSG $nick :!back - Sets the bot back."
  puthelp "PRIVMSG $nick :!bot - Brings up this menu. more commands to go.such as2!jump !restart !rehash !save !ban !kban !act !say !global !join !part !chattr !adduser !botnick !uptime to avoid get flooding on Pvt its restircted"
  puthelp "PRIVMSG $nick :2End of bot commands."
  return
}

#----------------------------------------------------------------

#Set the bot away.
proc pub_do_away {nick host handle channel testes} {
set why [lrange $testes 0 end]
if {$why == ""} {
putserv "PRIVMSG $channel :!away <Het away bericht>"
return 1
}
putserv "AWAY :$why"
putserv "PRIVMSG $channel :Away MSG ingesteld op $why."
return 1
}
#end of pub_do_away

#----------------------------------------------------------------

#Set the bot back.
proc pub_do_back {nick host handle channel testes} {
putserv "AWAY :"
putserv "PRIVMSG $channel :Ik ben terug van weggeweest."
}
#end of pub_do_back

#----------------------------------------------------------------

#Change the mode in the channel
proc pub_do_mode {nick host handle channel testes} {
set who [lindex $testes 0]
if {![botisop $channel]} {
putserv "PRIVMSG $channel :Ik heb geen ops in $channel en die wil ik ook niet"
return 1
}
if {$who == ""} {
putserv "PRIVMSG $channel :Gebruik: !mode <Channel mode die je wilt instellen>"
return 1
}
putserv "MODE $channel $who"
return 1
}
#end of pub_do_mode


#Set the rehash
proc pub_do_rehash  {nick host handle channel testes} {
  global botnick 
 set who [lindex $testes 0] 
 if {$who == ""} {
 rehash 
 putquick "PRIVMSG $channel : Rehashing TCL scripts voor KwissMiss"
 return 1
}
}

#Set the restart
proc pub_do_restart  {nick host handle channel testes} {
  global botnick
 set who [lindex $testes 0]
 if {$who == ""} {
  putquick "PRIVMSG $channel : Ik doe niet aan herstarten via een publiek commando. Graag inloggen via Telnet."
 return 1
}
}

#Set the jump
proc pub_do_jump  {nick host handle channel testes} {
  global botnick
 set who [lindex $testes 0]
 if {$who == ""} {
 jump
 putquick "PRIVMSG $channel : Changing Servers"
 return 1
}
}

#Set the safe
proc pub_do_safe  {nick host handle channel testes} {
  global botnick
 set who [lindex $testes 0]
 if {$who == ""} {
 
 putquick "PRIVMSG $channel :Het commando is !save, niet !safe slimmert."
 
 return 1
}
}

#Set the save
proc pub_do_save  {nick host handle channel testes} {
  global botnick
 set who [lindex $testes 0]
 if {$who == ""} {
 save
 putquick "PRIVMSG $channel :Opslaan User bestanden."
 putquick "PRIVMSG $channel :Opslaan Kanaal bestanden."
 putquick "PRIVMSG $channel :Alles gedaan. Fijne dag nog!"
 return 1
}
}

#Hop the bot!

# Set this to 1 if the bot should hop upon getting deopped, 0 if it should ignore it.
 set hopondeop 1

# Set this to 1 if the bot should kick those who deop it upon returning, 0 if not.
# NOTE: The bot owner will be immune to this kick even if it is enabled.
 set kickondeop 0

#Don't Edit anything below!

bind pub m "!hop" hop:pub
bind pub m "!cycle" hop:pub
bind msg m "hop" hop:msg
bind mode - * hop:mode

proc hop:pub { nick uhost hand chan text } {
 putlog "Hopping kanaal $chan op verzoek van $nick"
 putserv "PRIVMSG $chan :Cycle Command gebruikt door $nick, Cycling "
 putserv "PART :$chan"
 putserv "JOIN :$chan"
 putserv "PRIVMSG $chan :"
}

proc hop:msg { nick uhost hand text } {
 putlog "Hopping kanaal $text op verzoek van $nick"
 putserv "PART :$text"
 putserv "JOIN :$text"
 putserv "PRIVMSG $text :Cycle Command was aangevraagd door $nick "
}

proc hop:mode { nick uhost hand chan mc vict } {
global hopondeop kickondeop botnick owner
if {$mc == "-o" && $vict == $botnick && $hopondeop == 1} {
 putlog "Hopping kanaal $chan vanwege deop"
 putserv "PRIVMSG $chan :"
 putserv "PART :$chan"
 putserv "JOIN :$chan"
 putserv "PRIVMSG $chan :"
  if {$nick != $owner && $kickondeop == 1} {
   putserv "KICK $chan $nick"
}
}
}
#join/part section, newly added 

bind pub m "!join" join:pub 

proc join:pub { nick uhost hand chan text } {
 putlog "Joining channel $text by $nick's Request"
 putserv "PRIVMSG $chan :Joining channel $text by $nick's Request"
 putserv "JOIN :$text"
 channel add $text
 putserv "PRIVMSG $chan :"
}

bind pub m "!part" part:pub 

proc part:pub { nick uhost hand chan text } {
  set chan [lindex $text 0]
  if {![isdynamic $chan]} {
  puthelp "PRIVMSG $chan :$nick: Dat kanaal is niet dynamisch!"
  return 0
 }
  if {![validchan $chan]} {
  puthelp "PRIVMSG $chan :$nick: Dat kanaal bestaat niet!"
  return 0
 }

 putlog "Parting $chan by $nick's Request"
 putserv "PRIVMSG $chan :$chan verlaten op verzoek van $nick"
 putserv "PART :$chan"
 channel remove $chan
 }

# End - join/part 
# botnick - small routine to bot to change nicks.

bind pub m "!botnick" botnick:pub

proc botnick:pub { mynick uhost hand chan text  } {
global nick password
putlog "Changing botnick "
putserv "PRIVMSG $chan :Mijn nick veranderen?? Doen we niet.. "

}
# end botnick

#uptime 

bind pub m "!uptime" uptime:pub

proc uptime:pub {nick host handle channel arg} {
 global uptime
 set uu [unixtime]
 set tt [incr uu -$uptime]
 puthelp "PRIVMSG $channel :$nick: Mijn uptime is [duration $tt]."
}

#End of uptime

#addchattr with flags


proc chattr:pub {nick uhost handle channel arg} {
 set handle [lindex $arg 0]
 set flags [lindex $arg 1]
 if {![validuser $handle]} {
  puthelp "PRIVMSG $channel :$nick: Die gebruiker bestaat niet!"
  return 0
 }
 if {$flags == ""} {
  puthelp "PRIVMSG $channel :$nick: Syntax: .chattr <handle> <+|-><flags>"
  return 0
 }
 chattr $handle $flags
 puthelp "PRIVMSG $channel :Zo, gelukt! $nick."
}
#adduser 
bind pub m "!adduser" adduser:pub

proc adduser:pub {nick uhost handle channel arg} {
 set handle [lindex $arg 0]
 set hostmask [lindex $arg 1]
 if {[validuser $handle]} {
  puthelp "PRIVMSG $channel :$nick: Die gebruiker bestaat al!"
  return 0
 }
 if {$hostmask == ""} {
  set host [getchanhost $handle]
  if {$host == ""} {
   puthelp "PRIVMSG $channel :$nick: Ik kan niets met $handle's host."
   puthelp "PRIVMSG $channel :$nick: Doe: !adduser <handle> <hostmask (nick!user@host) wildcard acceptable>" 
   return 0
 }
  if {![validuser $handle]}  {
   adduser $handle *!$host
   puthelp "PRIVMSG $channel :Zo, gelukt! $nick."
  }
 }
  if {![validuser $handle]}  {
  adduser $handle $hostmask
  puthelp "PRIVMSG $channel :Zo, gelukt! $nick."

  }
 }
#end
#deluser 
bind pub m "!deluser" deluser:pub

proc deluser:pub {nick uhost handle channel arg} {
 set handle [lindex $arg 0]
 set hostmask [lindex $arg 1]
 if {[validuser $handle]} {
  deluser $handle 
  puthelp "PRIVMSG $channel :$nick: Gebruiker is verwijdert uit mijn database!"
  return 0
 }
 if {![validuser $handle]} {
  puthelp "PRIVMSG $channel :$nick: Gebruiker bestaat niet in mijn database!"
  return 0
 }
}

#access
proc pub_access {nick uhost handle chan arg} {

 if {![validuser [lindex $arg 0]]} {puthelp "PRIVMSG $channel :[lindex $arg 0] bestaat niet";return}
 if {[matchattr [lindex $arg 0] n]} {puthelp "PRIVMSG $channel :[lindex $arg 0] is een de Bot Owner";return}
 if {[matchattr [lindex $arg 0] m]} {puthelp "PRIVMSG $channel :[lindex $arg 0] is een Bot Master";return}
 if {[matchattr [lindex $arg 0] o]} {puthelp "PRIVMSG $channel :[lindex $arg 0] is een Bot Operator";return}
 puthelp "PRIVMSG $channel :[lindex $arg 0] is een standaard gebruiker, mag reminders gebruiken"
}

#info
proc pub_info {nick uhost handle chan arg} {
 if {$arg == "none"} {
  setuser $handle info ""
  puthelp "PRIVMSG $chan :Zo, gelukt $nick."
 }
 if {$arg != "none" && $arg != ""} {
  setuser $handle info $arg
  puthelp "PRIVMSG $chan :Zo, gelukt $nick."
 }
 if {$arg == ""} {
  if {[getuser $handle info] == ""} {
   puthelp "PRIVMSG $chan :$nick: Je hebt geen info regel."
   return 0 
  }
  puthelp "PRIVMSG $chan :$nick: Jouw info is: [getuser $handle info]"
 }
}


#end
#say & act 

proc pub:say {nick uhost handle chan arg} {puthelp "PRIVMSG $channel :$arg"}
proc pub:global {nick uhost handle chan arg} {
 foreach chan [channels] {
  puthelp "PRIVMSG $chan :\002 $arg \002 Dit bericht is op verzoek van $nick "
 }
}
proc pub:act {nick uhost handle chan arg} {puthelp "PRIVMSG $channel :\001ACTION $arg\001"}

putlog "KwissMis Public Commands Script 1.0 done by ArNz|8o8 "

