print("=======================")
print("Loadout Script by ECLIP3S Loaded")
print("=======================")

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/loadout" then
	TriggerClientEvent("yt:policeLoadout", source)
    CancelEvent()
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end