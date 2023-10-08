RegisterNUICallback('join', function(data, cb)
    local rchannel = tonumber(data)
    if not rchannel then
        return Radio:Notify('Failed','Invalid Radio Station' , 'error')
    end
    if rchannel > Shared.MaxFrequency or rchannel == 0 then
        return Radio:Notify('Failed', 'Invalid Radio Station' , 'error')
    end
    if rchannel == Radio.RadioChannel then
        return Radio:Notify('Failed', 'You are on the station', 'error')
    end
    local connectChannel = math.floor(rchannel + 0.5)
    if Shared.RestrictedChannels[connectChannel] then
        local type = Shared.RestrictedChannels[connectChannel].type
        local name = Shared.RestrictedChannels[connectChannel].name
        if type == 'job' and lib.table.contains(name, Radio.PlayerJob) then
            Radio:connecttoradio(rchannel)
            Radio:update()
        elseif type == 'gang' and lib.table.contains(name, Radio.PlayerGang) then
            Radio:connecttoradio(rchannel)
            Radio:update()
        else
            Radio:Notify('Failed', 'Restricted Channel', 'error')
        end
    else
        Radio:connecttoradio(rchannel)
        Radio:update()
    end
    cb("ok")
end)

RegisterNUICallback('leave', function(_, cb)
    if Radio.RadioChannel ~= 0 then
        Radio:leaveradio()
    end
    cb("ok")
end)

RegisterNUICallback("volumeChange", function(data, cb)
    data = tonumber(data)
    Radio:Notify('Set Volume', 'Volume Changed to '..data, 'success')
	exports["pma-voice"]:setRadioVolume(data)
    Radio.Volume = data
    cb('ok')
end)

RegisterNUICallback("hideUI", function(_, cb)
    TriggerEvent('mm_radio:client:remove')
    cb('ok')
end)

RegisterNUICallback('addFav', function(data, cb)
    data = tonumber(data)
    if Radio.RadioChannel == data then
        Radio.favourite[#Radio.favourite+1] = data
        Radio.userfav[#Radio.userfav+1] = data
        SetResourceKvp('radioSettings', json.encode(Radio.userfav))
    end
    cb("ok")
end)

RegisterNUICallback('removeFav', function(data, cb)
    data = tonumber(data)
    if Radio.RadioChannel == data then
        for index, val in ipairs(Radio.favourite) do
            if val == data then
                table.remove(Radio.favourite, index)
            end
        end
        for index, val in ipairs(Radio.userfav) do
            if val == data then
                table.remove(Radio.userfav, index)
            end
        end
        SetResourceKvp('radioSettings', json.encode(Radio.userfav))
    end
    cb("ok")
end)