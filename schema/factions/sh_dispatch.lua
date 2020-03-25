
FACTION.name = "Dispatch"
FACTION.description = ""
FACTION.color = Color(35, 60, 70)
FACTION.models = {"models/combine_scanner.mdl"}
FACTION.isGloballyRecognized = true
FACTION.channels = {
	["union"] = true,
	["um"] = true,
	["terminal"] = true,
	["division"] = true,
	["cwui"] = true,
	["overwatch"] = true,
	["combine"] = true,
	["tac"] = true
}
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = true
FACTION.canRemoveWaypoints = true
FACTION.canUpdateWaypoints = true

function FACTION:GetDefaultName(client)
	return "S17:OW.AI-"..math.random(1000, 9999), true
end

function FACTION:OnSpawn(client)
	local scanners = ix.plugin.list["scanner"]

	if (scanners) then
		timer.Simple(0.1, function()
			scanners:CreateScanner(client, nil)
		end)
	end
end

FACTION_DISP = FACTION.index