_MomWakeUpText::
	text "MOM: Right."
	line "All boys leave"
IF DEF(_YELLOW)
	cont "home someday."
ELSE
	cont "home some day."
ENDC
	cont "It said so on TV."

	para "It's a good thing"
	line "that you have new"
	cont "running shoes!"
	
	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

_MomWakeUpText2::
	text "MOM: Right."
	line "All girls leave"
IF DEF(_YELLOW)
	cont "home someday."
ELSE
	cont "home some day."
ENDC
	cont "It said so on TV."

	para "It's a good thing"
	line "that you have new"
	cont "running shoes!"
	
	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done	
	
_MomHealText1::
IF DEF(_YELLOW)
	text "MOM: ",$52,", if"
	line "your drive your"
	cont "#MON too hard,"
	cont "they'll dislike"
	cont "you."

	para "You should take a"
	line "rest."
	prompt
ELSE
	text "MOM: ",$52,"!"
	line "You should take a"
	cont "quick rest."
	prompt
ENDC

_MomHealText2::
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

_StandByMeText::
	text "There's a movie"
	line "on TV. Arnold"
	cont "Schwarzenegger"
	cont "is a cyborg!."

	para "I better go!"
	done

_TVWrongSideText::
	text "Oops, wrong side."
	done

