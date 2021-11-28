tell application "System Preferences"
	run
	set current pane to pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell tab group 1 of window "内蔵Retinaディスプレイ" of application process "System Preferences"
		if (value of slider 1) = 0 then
			tell slider 1
				set value to 0.25
			end tell
			if (value of checkbox "輝度を自動調節") = 0 then
				click checkbox "輝度を自動調節"
			end if
		else
			if (value of checkbox "輝度を自動調節") = 1 then
				click checkbox "輝度を自動調節"
			end if
			
			tell slider 1
				set value to 0
			end tell
		end if
	end tell
end tell