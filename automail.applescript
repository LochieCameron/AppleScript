# Edit the details here
set recipientName to "Lochie Cameron"
set recipientAddress to "lochiecameron@gmail.com"
set theSubject to "AppleScript Automated Email"
set theContent to "This email was automated using applescript"
# Do not edit below unless you know what your doing!

tell application "Mail"
	
	set theMessage to make new outgoing message with properties {subject:theSubject, content:theContent, visible:true}
	tell theMessage
		make new to recipient with properties {name:recipientName, address:recipientAddress}
		send
		
	end tell
end tell
