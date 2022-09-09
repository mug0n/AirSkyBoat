-----------------------------------
-- Area: Kazham
--  NPC: Rarab
-- Nonstandard NPC w/o Nametag
-----------------------------------
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local path =
{
    97.211, -14.000, -101.790,
    97.211, -14.000, -101.790,
    97.211, -14.000, -101.790,
    97.211, -14.000, -101.790,
    103.751, -14.000, -100.245,
    103.751, -14.000, -100.245,
    103.751, -14.000, -100.245,
    100.553, -14.000, -101.574,
    100.553, -14.000, -101.574,
    100.553, -14.000, -101.574,
    100.553, -14.000, -101.574,
    102.540, -14.000, -105.244,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    99.715, -14.000, -99.986,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
    96.482, -14.000, -102.745,
}

entity.onSpawn = function(npc)
    npc:initNpcAi()
    npc:setPos(xi.path.first(path))
end

entity.onPath = function(npc)
    xi.path.patrol(npc, path, xi.path.flag.RUN)
end

return entity