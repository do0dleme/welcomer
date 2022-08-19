--       MIT License
--      Copyright (c) 2022 doodle

minetest.register_on_newplayer(function(player)
    minetest.chat_send_all(minetest.colorize("#ffa06b",
    "[Server]: Give a warm welcome to newcomer, " .. player:get_player_name())
    )
end)

minetest.register_on_joinplayer(function(player)
    if minetest.check_player_privs(player, {kick=true, creative=true, fast=true}) then
    minetest.chat_send_all(minetest.colorize("#ffa06b",
    "[Server]: Give a warm welcome to staff member, ".. player:get_player_name()))
    else
    minetest.chat_send_all((minetest.colorize("#ffa06b",
    "[Server]: Welcome back to the Wilderness, ".. player:get_player_name())
    ))
    end
end)
