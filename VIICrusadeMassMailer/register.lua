--globals
VIICrusadeMassMailer_MainFrame = CreateFrame("FRAME", "VIICrusadeMassMailerMainFrame");
VIICrusadeMassMailer_MainFrame:RegisterEvent("ADDON_LOADED");
VIICrusadeMassMailer_MainFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
VIICrusadeMassMailer_MainFrame:RegisterEvent("MAIL_SHOW");
VIICrusadeMassMailer_MainFrame:RegisterEvent("MAIL_CLOSED");
VIICrusadeMassMailer_MainFrame:RegisterEvent("MAIL_SEND_SUCCESS");
VIICrusadeMassMailer_MainFrame:RegisterEvent("MAIL_SEND_FAIL");
VIICrusadeMassMailer_MainFrame:RegisterEvent("PLAYER_LOGOUT");

local function VIICrusadeMassMailerEventHandler(self, event, arg1, ...)
    if event == "ADDON_LOADED" and arg1 == "VIICrusadeMassMailer" then
        --Run this the first time the character loads this addon
        if VIICrusadeMassMailer_Debugging then
			print('VIICrusadeMassMailer DEBUG: Addon has been loaded')
		end
        VIICrusadeMassMailer_MainFrame:UnregisterEvent("ADDON_LOADED");
    elseif event == "PLAYER_ENTERING_WORLD" then
        if VIICrusadeMassMailer_Debugging then
			print('VIICrusadeMassMailer DEBUG: Player has entered the world')
		end
    elseif event == "MAIL_SHOW" then
        if VIICrusadeMassMailer_Debugging then
			print('VIICrusadeMassMailer DEBUG: Mail dialog has been opened')
		end
    end
end

VIICrusadeMassMailer_MainFrame:SetScript("OnEvent", VIICrusadeMassMailerEventHandler);
SLASH_VIICrusadeMassMailer = "/viicmm"
function SlashCmdList.VIICrusadeMassMailer(msg)
	print("Addon is loaded and working :) ")
end

if VIICrusadeMassMailer_Debugging then
    print('VIICrusadeMassMailer DEBUG: VIICrusadeMassMailer register file executed')
end