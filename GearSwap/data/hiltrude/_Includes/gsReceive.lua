windower.register_event('ipc message',function (msg)
	local broken = gsrSplit(msg, ' ')

    local command = table.remove(broken, 1)
    if command ~= 'send' then
        return
    end

	if #broken < 2 then return end

	local qual = table.remove(broken,1)
	local player = windower.ffxi.get_player()
	if qual:lower()==player.name:lower() then
		relevant_msg(table.concat(broken,' '))
	end
end)

function gsrSplit(msg, match)
	if msg == nil then return '' end
	local length = msg:len()
	local splitarr = {}
	local u = 1
	while u <= length do
		local nextanch = msg:find(match,u)
		if nextanch ~= nil then
			splitarr[#splitarr+1] = msg:sub(u,nextanch-match:len())
			if nextanch~=length then
				u = nextanch+match:len()
			else
				u = length
			end
		else
			splitarr[#splitarr+1] = msg:sub(u,length)
			u = length+1
		end
	end
	return splitarr
end

function relevant_msg(msg)
	local player = windower.ffxi.get_player()

	msg:gsub("<me>", tostring(player.name))
	msg:gsub("<hp>", tostring(player.vitals.hp))
	msg:gsub("<mp>", tostring(player.vitals.mp))
	msg:gsub("<hpp>", tostring(player.vitals.hpp))
	msg:gsub("<mpp>", tostring(player.vitals.mpp))
	msg:gsub("<tp>", tostring(player.vitals.tp))
	msg:gsub("<job>", tostring(player.main_job_full)..'/'..tostring(player.sub_job_full))
	msg:gsub("<mjob>", tostring(player.main_job_full))
	msg:gsub("<sjob>", tostring(player.sub_job_full))



	if msg:sub(1,2)=='//' then
		windower.send_command(msg:sub(3))
	elseif msg:sub(1,1)=='/' then
		windower.send_command('input '..msg)
	elseif msg:sub(1,3)=='atc' then
		windower.add_to_chat(55,msg:sub(5))
	else
		windower.send_command(msg)
	end

end
