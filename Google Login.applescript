set userEmail to text returned of (display dialog "Please enter your email" with title "Google Sign In" default answer "" buttons {"Cancel", "Next"} default button 2)
set userPassword to text returned of (display dialog "Please enter your password" with title "Google Sign In" default answer "" buttons {"Cancel", "Login"} default button 2 with hidden answer)
tell application "Safari"
	activate
	open location "https://accounts.google.com/login"
	tell application "System Events"
		delay 12
		keystroke userEmail
		keystroke tab
		keystroke userPassword
		delay 3
		keystroke return
	end tell
end tell
