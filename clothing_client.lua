RegisterCommand('setclothes', function(source, args, rawCommand)
    local ped = PlayerPedId() -- Get the player's ped
    local gender = args[1] -- 'male' or 'female'
    local drawable = tonumber(args[2]) -- Drawable ID
    local texture = tonumber(args[3]) -- Texture ID
    local palette = tonumber(args[4]) or 0 -- Palette (optional)

    if gender and drawable and texture then
        if gender == 'male' then
            -- Apply clothing for male character
            SetPedComponentVariation(ped, 11, drawable, texture, palette) -- Upper body
        elseif gender == 'female' then
            -- Apply clothing for female character
            SetPedComponentVariation(ped, 11, drawable, texture, palette) -- Upper body
        else
            TriggerEvent('chat:addMessage', {
                args = {"[Clothing]", "Invalid gender. Use 'male' or 'female'."}
            })
        end
    else
        TriggerEvent('chat:addMessage', {
            args = {"[Clothing]", "Usage: /setclothes [male/female] [drawable_id] [texture_id] [palette_id]"}
        })
    end
end, false)

-- Helper function to notify users
function notify(message)
    TriggerEvent('chat:addMessage', {
        args = {"[Clothing]", message}
    })
end
