--       MIT License
--      Copyright (c) 2022 doodle, CoolJar10

local messages = {}

messages.greeting = {
    " just slid into the Wilderness, welcome.",
    " , welcome to the Wilderness.",
    " -- a wild survivor just appeared.",
    " is now a wild pokemon.",
}

function messages.get_message(mtype)
    if RANDOM_MESSAGES then
        return messages[mtype][math.random(1, #messages[mtype])]
    end
end

minetest.register_on_joinplayer(function(player)
    local player_name = player:get_player_name()
    if minetest.check_player_privs(player, {kick=true, creative=true, fast=true}) then
    minetest.chat_send_all(minetest.colorize("#ffa06b",
    "[Server]: Give a warm welcome to staff member, ".. player_name))
    else
    minetest.chat_send_all((minetest.colorize("#ffa06b",
    "[Server]: " .. player_name .. messages.get_message"greeting")
    ))
    end
end)
