-- Keep the default Dota rules; override only the two team capacities.
local PLAYERS_PER_TEAM = 12

function Activate()
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_GOODGUYS, PLAYERS_PER_TEAM)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_BADGUYS, PLAYERS_PER_TEAM)

    -- Do not offer additional teams in the custom-game team selection screen.
    for team = DOTA_TEAM_CUSTOM_1, DOTA_TEAM_CUSTOM_8 do
        GameRules:SetCustomGameTeamMaxPlayers(team, 0)
    end
end
