function SendGuildieMail(recipientName, messageSubject, messageBody)
	if recipientName == nil then
		print("recipientName was nil. Aborting SendGuildieMail");
		do return end
	end
	
	if messageSubject == nil then
		print("messageSubject was nil. Aborting SendGuildieMail");
		do return end
	end
	
	if messageBody == nil then
		print("messageBody was nil. Aborting SendGuildieMail");
		do return end
	end
	
	if VIICrusadeMassMailer_Debugging then
		print("VIICrusadeMassMailer DEBUG: SendGuildieMail called for Recipient '" .. recipientName .. "'")
	end
	
	SendMail(recipientName, messageSubject, messageBody)
end

function OpenSendEmailInterface()
	
end