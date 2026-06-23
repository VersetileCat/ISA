local ASSETS = require(106185438771863)
local SETTINGS = require(ASSETS["SETTINGS"]:Clone())


















-- by Player_57.
--[[
	Credits:
		Rin - original MUGEN Character
		

]]
--[[ -----------------------------------------

				-- yomi --

----------------------------------------- ]]--

-- // Infinite Soulabyss
-- // The prison of all souls



-- ErringPaladin10: The prints are from wlw,
-- ErringPaladin10: Goto https://gofile.io/d/tgIw8y for the Original file!
-- ErringPaladin10: If you are too lazy to read the 'NOTES.txt' file in the gofile link,
-- ErringPaladin10: Here is what it contains:

-------------------------------------NOTES.TXT-------------------------------------
--// This is the Original file from the AssetId (11348039741)!
--// ErringPaladin10: If 'IsPublicDomain' is true then it is OnSale
--// ErringPaladin10: I have No idea what 'IsForSale' is for because of 'IsPublicDomain'

--{
--  "TargetId": 11348039741,
--  "ProductType": "User Product",
--  "AssetId": 11348039741,
--  "ProductId": 1328882251,
--  "Name": "funny",
--  "Description": "",
--  "AssetTypeId": 10,
--  "Creator": {
--    "Id": 3695523523,
--    "Name": "Seafaroo",
--    "CreatorType": "Group",
--    "CreatorTargetId": 15318441,
--    "HasVerifiedBadge": false
--  },
--  "IconImageAssetId": 0,
--  "Created": "2022-10-22T16:06:30.943Z",
--  "Updated": "2023-09-07T05:55:01.663Z",
--  "PriceInRobux": null,
--  "PriceInTickets": null,
--  "Sales": 0,
--  "IsNew": false,
--  "IsForSale": false,
--  "IsPublicDomain": false,
--  "IsLimited": false,
--  "IsLimitedUnique": false,
--  "Remaining": null,
--  "MinimumMembershipLevel": 0,
--  "ContentRatingTypeId": 0,
--  "SaleAvailabilityLocations": null,
--  "SaleLocation": null,
--  "CollectibleItemId": null,
--  "CollectibleProductId": null,
--  "CollectiblesItemDetails": null
--}
-------------------------------------NOTES.TXT-------------------------------------

















--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
print("--[[ --------------------------------------------------------------------")
print("[[ The prison of all souls. ]]\n")

--[[ ----------------------------------

			-- SERVICES --

---------------------------------- ]]--

local players = game:GetService("Players")
local deb = game:GetService("Debris")
local runs = game:GetService("RunService")
local reps = game:GetService("ReplicatedStorage")
local phs = game:GetService("PhysicsService")
local nws = game:GetService("NetworkServer")
local ts = game:GetService("TweenService")
local chatsrv = game:GetService("Chat")
local txtsrv = game:GetService("TextService")
local lighting = game:GetService("Lighting")
local hs = game:GetService("HttpService")
local sss = game:GetService("ServerScriptService")
local jointserv = game:GetService("JointsService")
local rnd = Random.new(tick())


---------------- For easier reference ----------------
local heartbeat = runs.Heartbeat
local stepped = runs.Stepped
local defer = function(...) pcall(task.defer, ...) end
local msin = math.sin
local mrad = math.rad
function msinrad(val)
	return msin(mrad(val))
end



--[[ ----------------------------------

		-- SCRIPT INITIAL --

---------------------------------- ]]--
local plr = getfenv().owner-- players:WaitForChild("tricky3685", 5)
local INITIALCFRAME = CFrame.new()
pcall(function()
	INITIALCFRAME = plr.Character.HumanoidRootPart.CFrame
end)
local userid = plr.UserId


---------------- INSTANCES ----------------
print("- [\n> [ISA] Loading instances...")


local LOCALSCRIPTS = ASSETS.LocalScripts:Clone() --script.LocalScripts:Clone()

local CSESFX = LOCALSCRIPTS.Others.Modules.CSE.SFX;

local Theme = CSESFX.THEME;
Theme.SoundId = "rbxassetid://133182122828281";

local Theme2 = CSESFX.THEME2;
Theme2.SoundId = "rbxassetid://79920884531126";

local Theme3 = CSESFX.THEME3;
Theme3.SoundId = "rbxassetid://106501809990440";
Theme3.PlaybackSpeed = 0.438;
Theme3.Volume = 10

local Theme4 = CSESFX.THEME4;
Theme4.SoundId = "rbxassetid://96596234258242";

local MODULES = ASSETS.Modules:Clone() --script.Modules:Clone()

-- LOCALSCRIPTS
local OwnerLS = LOCALSCRIPTS.Owner:Clone()
local RepLS = LOCALSCRIPTS.Others:Clone()
local OwnerLSValues = OwnerLS.ScriptValues
local RepLSValues = RepLS.ScriptValues

-- MODULES
local CSF = require(MODULES.CSF)()

--script.Disabled = true
--script:Destroy()


local DIE

function KKR()


	-- by Player_57.
--[[ ----------------------------------

-- Welcome to the Abyss, --

---------------------------------- ]]--

	-- // where ghosts shall fall.
	-- // ...can't you see the light from up above?

--[[

KAKUREN = {
	MainFunctions = table
	InstFunctions = table
	Kieru = {
		KieruParts = table
		KieruPriorityEvents = table
		KieruLoopEvent = event
		KieruInstEvent = event
		KieruFilter = function
	}
	SNLimit = num (defer limit: currently 10) (can't check if reached limit so yeah)
}

---------------------------------------------------------------------
NOTES:
- for workspace:GetDescendants(), make sure table is flipped to start from bottom to top of tree (so that all instances are actually messed with without getting destroyed first)
- When Executing: only script, basepart, and model are destroyed since other instances do not need to be destroyed


---------------------------------------------------------------------
---------------------------------------------------------------------

------------------------------ MORTEM -------------------------------
	MainFunctions:
		- Destroy: inst
		
		- Descript
		
		- Execute: inst, FunctionSTRENGTH, PropertySTRENGTH, LoopEvents, InstEvents, PriorityEvents
			* Runs all of an instance's InstanceFunctions, (Destroys it after but depends on instance)
			* The InstanceFunctions to be ran depends on what kind of instance it is (no duplicates/redundancy)
		
		- IsInKieruTable: inst, table (optional)
			* Returns true if part has been banished via checking recorded properties
			* specify table to check that table instead of default
		- GetKieruData: inst --> KieruData
		
		- AddKieruData: KieruData
			* add KieruData to list of things to be vanished
		- Kieru: inst
			* Records properties of a part and Executes any part with those same properties
		- UnKieru
			* Removes all Kieru recordings
		- SetKieruFilter: function
			* Set the function that will return a table of parts that the vanish will filter out
			
		- LoopConnections: function, LoopSTRENGTH --> eventstable
			* Used for an attack
			* Provides the LoopCheck events of an attack as a table
		
		- Anima: loopevents, instevents, priorityevents
			* Clear everything
			* Note: redefine the tables as the original tables will be unusable
			* This will make sure that no other events will be inserted into the tables (they might be too fast)
		
		- HN: Hypernull function (event skipper)
		- SN: Supernull function (defer priority spam)
		
		- StopAll
			* Removes all Kieru recordings
			* Disconnects KieruLoopEvent and KieruInstEvent
			* Cleans up KieruPriorityEvents
			* Intended for the STOPSCRIPT function of a script (when you want to stop everything)
			
			
	
	-----------------------------------------------------------------
	InstFunctions:
	
		Humanoid:
			- Damage
			- ZeroHealth
			- ChangeState
			- SetChangeState
			
		BasePart:
			- BreakJoints
			- Explosion
			- INFExplosion
			- Void
			- MeshZeroScale
			- MeshNINFOffset
			- MeshZSNINFOff
			- ApplyEmptyMesh
			- VPFDerender
			
		Model:
			- BreakJoints
			- Void
			
		DataModelMesh:
			- ZeroScale
			- NINFOffset
			- ZSNINFOff
			
		Player:
			- Banish
			
		Script:
			- Descript
		
		MISC
			- LockVoid
			- ForceVoid
			- InternalEliminate
	
	-----------------------------------------------------------------
	STRENGTHS
	FunctionSTRENGTH
		- 1: Normal Call
		- 2: HYPERNULL Call
		
	PropertySTRENGTH
		- 1: Normal Property Set
		- 2: Normal Property Set + Changed
		- 3: Normal Property Set + PRIORITY
		- 4: HYPERNULL Property Set + HYPERNULL Changed
		** VPFDerender is an exception as running the event last is better so priority is not needed
	
	LoopSTRENGTH
		- 1: Heartbeat, Stepped
		- 2: Heartbeat, Stepped, Heartbeat PRIORITY, Stepped PRIORITY
		- 3: Strength 2 but with Supernull + Hypernull (may also play a part in function kill (e.g. Player:Banish CharacterAdded InstEvents))
	
	
			
	
	-----------------------------------------------------------------
	KIERU (Vanish)
	
	KieruParts = {
		PropertyTable,
		PropertyTable
	
	
	}
	
	
	
	-----------------------------------------------------------------
	
	LoopEvents = {
		EventName = MainFunctions:LoopConnections Table
	}
	InstEvents = {
		Instance = {
			EventName = Event
		}
	}
	PriorityEvents = {
		Instance = {
			EventName = Event
		}
	}

---------------------------------------------------------------------		
		
]]

	local players = game:GetService("Players")
	local deb = game:GetService("Debris")
	local runs = game:GetService("RunService")
	local reps = game:GetService("ReplicatedStorage")
	local phs = game:GetService("PhysicsService")
	local ts = game:GetService("TweenService")
	local chatsrv = game:GetService("Chat")
	local txtsrv = game:GetService("TextService")
	local lighting = game:GetService("Lighting")
	local hs = game:GetService("HttpService")
	local sss = game:GetService("ServerScriptService")
	local cols = game:GetService("CollectionService")

	local rnd = Random.new(os.clock())
	local heartbeat = runs.Heartbeat
	local stepped = runs.Stepped

	local defer = function(...) pcall(task.defer, ...) end

--[[ ----------------------------------

		-- INITIAL --

---------------------------------- ]]--

	--local CSF = require(script.CSF:Clone())()
	local emptymeshpart = MODULES.EmptyMesh:Clone()


	local KAKUREN = {}
	---------------------------------------------------------------------


	local MainFunctions = {}
	local InstFunctions = {}
	KAKUREN.MainFunctions = MainFunctions
	KAKUREN.InstFunctions = InstFunctions

	local Kieru = {}
	local KieruParts = {}
	local KieruPriorityEvents = {}
	local KieruFilter = function() return {} end
	Kieru.KieruParts = KieruParts
	Kieru.KieruPriorityEvents = KieruPriorityEvents
	Kieru.KieruFilter = KieruFilter
	KAKUREN.Kieru = Kieru
	-- Kieru.KieruInstEvent will be set at Kieru section
	-- Kieru.KieruLoopEvent will be set at Kieru section

	---------------------------------------------------------------------

	-- Anima Metatable
	local am = { -- Shuts down all DescendantAdded/all Priorities from reconnecting because it's too god damn fast wtf
		__index = function(tab, i)
			pcall(function()
				rawget(tab, i):Disconnect()
			end)
			pcall(function()
				for name, event in rawget(tab, i) do
					event:Disconnect()
				end
			end)
		end,
		__newindex = function(tab, i, value)
			pcall(function()
				value:Disconnect()
			end)
			pcall(function()
				for name, event in value do
					event:Disconnect()
				end
			end)
		end,
	}


	---------------------------------------------------------------------

	-- For easier reference to Instance Functions
	local IF_Humanoid = {}
	local IF_BasePart = {}
	local IF_Model = {}
	local IF_DataModelMesh = {}
	local IF_Player = {}
	local IF_BaseScript = {}
	local IF_MISC = {}



	---------------------------------------------------------------------
	-- Hypernull
	local HYPF = Instance.new("BindableFunction")
	local function Hypernull(func, ...)
		HYPF.OnInvoke = function(...)
			if pcall(HYPF.Invoke, HYPF, ...) == false then
				func(...)
			end
		end
		if pcall(HYPF.Invoke, HYPF, ...) == false then
			func(...) return
		end
	end

	-- Supernull
	local SNLimit = 10
	KAKUREN.SNLimit = SNLimit

	local function Supernull(IND, func, ...)
		local amount = 0
		local MAX = math.max(unpack(IND))
		local overflow
		overflow = function(...)
			amount = amount + 1
			if table.find(IND, amount) then
				func(...)
			end
			if amount == MAX then
				return
			end
			defer(overflow, ...)
		end
		defer(overflow, ...)
	end

	function MainFunctions:HN(func, ...)
		Hypernull(func, ...)
	end
	function MainFunctions:SN(IND, func, ...)
		Supernull(IND, func, ...)
	end


	-- MAIN FUNCTIONS ---------------------------------------------------

	function MainFunctions:Destroy(inst, FunctionSTRENGTH)
		local FunctionSTRENGTH = FunctionSTRENGTH or 1

		local function exec()
			pcall(function()
				inst:Destroy()
			end)
		end

		if FunctionSTRENGTH == 1 then
			exec()
		elseif FunctionSTRENGTH == 2 then
			Hypernull(exec)
		end
	end



	function MainFunctions:Descript(InstEvents, PriorityEvents)
		for i, v in CSF:GetServices() do
			pcall(function()
				if v ~= sss and v:IsA("JointsService") == false and v:IsA("StarterPlayer") == false then
					for a, inst in v:GetDescendants() do
						pcall(function()
							if inst:IsA("BaseScript") then
								IF_BaseScript:Descript(inst, 4, InstEvents, PriorityEvents)
							end
						end)
					end
				end
			end)
		end
	end


	---------------------------------------------------------------------
	-- LoopConnections ---------------------------------------------------
	function MainFunctions:LoopConnections(func, LoopSTRENGTH, LS3_SN)
		local connections = {}

		local LoopSTRENGTH = LoopSTRENGTH or 1
		if runs:IsClient() and LoopSTRENGTH >= 3 then
			LoopSTRENGTH = 2 -- wtf crash
		end

		local function modifiedfunc()
			func()
			if LoopSTRENGTH == 4 then
				Supernull({1, 2, 5, SNLimit}, func)
			end
		end

		local dupe = 1
		if LoopSTRENGTH == 2 or LoopSTRENGTH == 3 then
			dupe = 2
		elseif LoopSTRENGTH == 4 then
			dupe = 3
		end
		for i = 1, dupe do
			if LoopSTRENGTH >= 3 then
				local function PreLoops(func)
					local t1func = function()
						while connections.Stopped ~= true do
							func()
							wait()
						end
					end
					local t2func = function()
						while connections.Stopped ~= true do
							func()
							task.wait()
						end
					end
					local thread1 = coroutine.create(t1func)
					local thread2 = coroutine.create(t2func)
					coroutine.close(thread1)
					coroutine.close(thread2)

					local ThreadChecker
					ThreadChecker = heartbeat:Connect(function()
						if connections.Stopped == true then
							ThreadChecker:Disconnect()
							return
						end

						-- Script Timeout protection
						if coroutine.status(thread1) == "dead" then
							thread1 = coroutine.create(t1func)
							coroutine.resume(thread1)
						end
						if coroutine.status(thread2) == "dead" then
							thread2 = coroutine.create(t2func)
							coroutine.resume(thread2)
						end
					end)
				end
				PreLoops(modifiedfunc)
			end


			-- RUNSERVICE
			do
				local RS = {}
				RS["Heartbeat"] = heartbeat:Connect(modifiedfunc)
				RS["Stepped"] = stepped:Connect(modifiedfunc)

				if LoopSTRENGTH >= 2 then
					local function HeartbeatP()
						RS["HeartbeatP"]:Disconnect()
						RS["HeartbeatP"] = heartbeat:Connect(HeartbeatP)
						modifiedfunc()
					end
					RS["HeartbeatP"] = heartbeat:Connect(HeartbeatP)
					local function SteppedP()
						RS["SteppedP"]:Disconnect()
						RS["SteppedP"] = stepped:Connect(SteppedP)
						modifiedfunc()
					end
					RS["SteppedP"] = stepped:Connect(SteppedP)
				end

				if runs:IsClient() then
					RS["RenderStepped"] = runs.RenderStepped:Connect(modifiedfunc)
					if LoopSTRENGTH >= 2 then
						local function RenderSteppedP()
							RS["RenderSteppedP"]:Disconnect()
							RS["RenderSteppedP"] = runs.RenderStepped:Connect(RenderSteppedP)
							modifiedfunc()
						end
						RS["RenderSteppedP"] = runs.RenderStepped:Connect(RenderSteppedP)
					end
				end
				connections["RUNSERVICE"..i] = RS
			end

			-- TWEENP
			if LoopSTRENGTH >= 3 then
				local Data = {}
				local Object = Instance.new("NumberValue")
				Object:Destroy()
				Data.Object = Object
				Data.Event = Object.Changed:Connect(function()
					modifiedfunc()
					if LoopSTRENGTH == 3 then
						Supernull(LS3_SN or {1, 2, SNLimit}, modifiedfunc)
					end
				end)
				Data.Tween = ts:Create(
					Object,
					TweenInfo.new(20, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true),
					{Value = 9e9}
				)
				Data.Tween:Play()
				connections["TWEEN"..i] = Data
			end
		end

		return connections
	end



	function MainFunctions:Execute(inst, LoopEvents, InstEvents, PriorityEvents)
		Hypernull(function()
			local FunctionSTRENGTH = 2
			local PropertySTRENGTH = 4
			if inst:IsA("DataModelMesh") then

				--IF_DataModelMesh:ZeroScale(inst, PropertySTRENGTH, PriorityEvents)
				--IF_DataModelMesh:NINFOffset(inst, PropertySTRENGTH, PriorityEvents)
				IF_DataModelMesh:ZSNINFOff(inst, PropertySTRENGTH, PriorityEvents)
			elseif inst:IsA("Player") then
				IF_Player:Banish(inst, FunctionSTRENGTH, PropertySTRENGTH, 3, LoopEvents, InstEvents, PriorityEvents)
			elseif inst:IsA("BaseScript") then
				IF_BaseScript:Descript(inst, FunctionSTRENGTH, PropertySTRENGTH, InstEvents, PriorityEvents)


			elseif inst:IsA("Humanoid") then

				--IF_Humanoid:Damage(inst, FunctionSTRENGTH)
				IF_Humanoid:ZeroHealth(inst, PropertySTRENGTH, PriorityEvents)
				--IF_Humanoid:ChangeState(inst, FunctionSTRENGTH)
				IF_Humanoid:SetChangeState(inst, FunctionSTRENGTH)


			elseif inst:IsA("BasePart") then

				--IF_BasePart:BreakJoints(inst, FunctionSTRENGTH)
				--IF_BasePart:Explosion(inst)
				--IF_BasePart:INFExplosion(inst)
				IF_BasePart:Void(inst, PropertySTRENGTH, PriorityEvents)
				--IF_BasePart:MeshZeroScale(inst, PropertySTRENGTH, PriorityEvents)
				--IF_BasePart:MeshNINFOffset(inst, PropertySTRENGTH, PriorityEvents)
				IF_BasePart:MeshZSNINFOff(inst, PropertySTRENGTH, PriorityEvents, false)
				IF_BasePart:ApplyEmptyMesh(inst, PropertySTRENGTH, PriorityEvents)
				--IF_BasePart:VPFDerender(inst, 3, PriorityEvents)
				MainFunctions:Destroy(inst, FunctionSTRENGTH)
				--IF_MISC:InternalEliminate(inst, 3)


			elseif inst:IsA("Model") then
				--IF_Model:BreakJoints(inst, FunctionSTRENGTH)
				IF_Model:Void(inst, PropertySTRENGTH, PriorityEvents)
				MainFunctions:Destroy(inst, FunctionSTRENGTH)
				--IF_MISC:InternalEliminate(inst, 3)
			end
		end)
	end


	-- Kieru ---------------------------------------------------
	function MainFunctions:IsInKieruTable(inst, tab)
		local tab = tab or KieruParts
		local actualmatched = false

		for a, props in tab do -- Check for properties
			if props.ClassName == inst.ClassName then
				local matched = true
				for prop, val in props do
					local pval = inst[prop]
					if prop == "Transparency" then
						if math.abs(pval-val) > 0.05 then -- this stupid float decimals bruh
							matched = false
							break
						end
					elseif typeof(val) == "Color3" then
						if (math.abs(val.R-pval.R) > 0.005) or (math.abs(val.G-pval.G) > 0.005) or (math.abs(val.B-pval.B) > 0.005) then
							matched = false
							break
						end
					elseif typeof(val) == "Vector3" then
						if (math.abs(val.X-pval.X) > 0.05) or (math.abs(val.Y-pval.Y) > 0.05) or (math.abs(val.Z-pval.Z) > 0.05) then
							matched = false
							break
						end
					elseif pval ~= val then
						matched = false
						break
					end
				end
				if matched then
					actualmatched = true
					break
				end
			end
		end
		return actualmatched
	end
	function MainFunctions:GetKieruData(inst)
		local data = {
			ClassName = inst.ClassName,
			Transparency = inst.Transparency,
			Anchored = inst.Anchored,
			CanCollide = inst.CanCollide,
			Material = inst.Material,
			Size = inst.Size
		}
		if inst:IsA("Part") then
			data.Shape = inst.Shape
		elseif inst:IsA("MeshPart") then
			data.MeshId = inst.MeshId
			data.MeshSize = inst.MeshSize
		end
		return data
	end

	function MainFunctions:AddKieruData(KieruData)
		table.insert(KieruParts, KieruData)
	end
	function MainFunctions:Kieru(inst)
		if inst:IsA("BasePart") and inst:IsA("Terrain") == false then



			if MainFunctions:IsInKieruTable(inst) == false then -- If data doesn't already exist in KieruParts
				MainFunctions:AddKieruData(MainFunctions:GetKieruData(inst))

			end
			pcall(function()
				MainFunctions:Execute(inst, nil, nil, KieruPriorityEvents)
			end)
		end
	end
	function MainFunctions:UnKieru()
		KieruParts = {}
		Kieru.KieruParts = KieruParts

		-- Clean up KieruPriorityEvents
		for inst, pevents in KieruPriorityEvents do
			if CSF:IsRobloxLocked(inst) == false then
				for name, event in pevents do
					event:Disconnect()
				end
				KieruPriorityEvents[inst] = nil
			end
		end
	end
	function MainFunctions:SetKieruFilter(func)
		KieruFilter = func
		Kieru.KieruFilter = KieruFilter
	end


	local function kierutarget(inst)
		if MainFunctions:IsInKieruTable(inst) then
			MainFunctions:Execute(inst, nil, nil, KieruPriorityEvents)
		end
	end
	Kieru.KieruLoopEvent = MainFunctions:LoopConnections(function()
		if #KieruParts <= 0 then return end
		Hypernull(function()
			local filter = KieruFilter()
			local desc = workspace:GetDescendants()
			for i = #desc, 1, -1 do
				local inst = desc[i]
				pcall(function()
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false and table.find(filter, inst) == nil then
						kierutarget(inst)
					end
				end)
			end
		end)
	end, 4)

	local function Kieru_DescendantAdded(inst)
		if #KieruParts <= 0 then return end

		Kieru.KieruInstEvent:Disconnect()
		Kieru.KieruInstEvent = workspace.DescendantAdded:Connect(Kieru_DescendantAdded)

		Supernull({2}, function()
			if CSF:IsRobloxLocked(inst) == false then
				pcall(function()
					if inst:IsA("BasePart") and table.find(KieruFilter(), inst) == nil then
						kierutarget(inst)
					end
				end)
			end
			Supernull({1}, function()
				Hypernull(function()
					local filter = KieruFilter()
					local desc = workspace:GetDescendants()
					for i = #desc, 1, -1 do
						local inst = desc[i]
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false and table.find(filter, inst) == nil then
								kierutarget(inst)
							end
						end)
					end
				end)
			end)
		end)
	end
	Kieru.KieruInstEvent = workspace.DescendantAdded:Connect(Kieru_DescendantAdded)



	-- Anima ---------------------------------------------------
	function MainFunctions:Anima(LoopEvents, InstEvents, PriorityEvents)

		if LoopEvents then
			for i = 1, 3 do
				for name, connections in LoopEvents do
					pcall(function()
						for eventname, event in connections["RUNSERVICE"..i] do
							pcall(function()
								event:Disconnect()
							end)
						end

						local TPData = connections["TWEEN"..i]
						TPData.Event:Disconnect()
						TPData.Tween:Cancel()
						TPData.Object:Destroy()

						connections.Stopped = true
					end)
				end
			end

			setmetatable(LoopEvents, am)
		end

		if InstEvents then
			for inst, events in InstEvents do

				for prop, event in events do
					pcall(function()
						event:Disconnect()
					end)
				end
				setmetatable(events, am)
			end
			setmetatable(InstEvents, am)
		end

		if PriorityEvents then
			for inst, pevents in PriorityEvents do
				for name, event in pevents do
					event:Disconnect()
				end
				setmetatable(pevents, am)

			end
			setmetatable(PriorityEvents, am)
		end
	end


	-- StopAll ---------------------------------------------------
	function MainFunctions:StopAll()
		MainFunctions:UnKieru()
		for eventname, event in Kieru.KieruLoopEvent do
			pcall(function()
				event:Disconnect()
			end)
		end
		Kieru.KieruInstEvent:Disconnect()
	end


	-- INST FUNCTIONS ---------------------------------------------------


	-- HUMANOID
	InstFunctions.Humanoid = IF_Humanoid
	function IF_Humanoid:Damage(hum, FunctionSTRENGTH)
		local FunctionSTRENGTH = FunctionSTRENGTH or 1

		local function exec()
			pcall(function()
				hum:TakeDamage(hum.MaxHealth)
			end)
		end

		if FunctionSTRENGTH == 1 then
			exec()

		elseif FunctionSTRENGTH == 2 then
			Hypernull(exec)
		end
	end
	function IF_Humanoid:ZeroHealth(hum, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[hum]
			if events == nil then
				events = {}
				PriorityEvents[hum] = events
			end
		end

		local function exec()
			pcall(function()
				hum.Health = 0
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec()

		elseif PropertySTRENGTH == 2 then

			if events.Health == nil or events.Health.Connected == false then
				events.Health = hum:GetPropertyChangedSignal("Health"):Connect(exec)
			end
			exec()

		elseif PropertySTRENGTH == 3 then

			if events.Health == nil or events.Health.Connected == false then

				local function sethealth()
					events.Health:Disconnect()
					events.Health = hum:GetPropertyChangedSignal("Health"):Connect(sethealth)

					exec()
				end
				events.Health = hum:GetPropertyChangedSignal("Health"):Connect(sethealth)
			end
			exec()

		elseif PropertySTRENGTH == 4 then
			local function secondary_exec()
				pcall(function()
					if hum.Health ~= 0 then
						Hypernull(exec)
					end
				end)
			end

			if events.Health == nil or events.Health.Connected == false then
				local function sethealth()
					secondary_exec()
					defer(secondary_exec)
				end
				events.Health = hum:GetPropertyChangedSignal("Health"):Connect(sethealth)
			end

			secondary_exec()
		end
	end

	function IF_Humanoid:ChangeState(hum, FunctionSTRENGTH)
		local FunctionSTRENGTH = FunctionSTRENGTH or 1

		local function exec()
			pcall(function()
				hum:ChangeState(Enum.HumanoidStateType.Dead)
			end)
		end

		if FunctionSTRENGTH == 1 then
			exec()
		elseif FunctionSTRENGTH == 2 then
			Hypernull(exec)
		end
		pcall(function()
			for i, part in hum.Parent:GetChildren() do
				pcall(function()
					if part:IsA("BasePart") then
						part:SetNetworkOwner()
					end
				end)
			end
		end)
	end

	function IF_Humanoid:SetChangeState(hum, FunctionSTRENGTH)
		local FunctionSTRENGTH = FunctionSTRENGTH or 1

		local function exec()
			pcall(function()
				hum:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
			end)
			pcall(function()
				hum:ChangeState(Enum.HumanoidStateType.Dead)
			end)
		end

		if FunctionSTRENGTH == 1 then
			exec()
		elseif FunctionSTRENGTH == 2 then
			Hypernull(exec)
		end
		pcall(function()
			for i, part in hum.Parent:GetChildren() do
				pcall(function()
					if part:IsA("BasePart") then
						part:SetNetworkOwner()
					end
				end)
			end
		end)
	end

	-- BASEPART
	InstFunctions.BasePart = IF_BasePart
	function IF_BasePart:BreakJoints(part, FunctionSTRENGTH)
		local FunctionSTRENGTH = FunctionSTRENGTH or 1

		local function exec()
			pcall(function()
				part:BreakJoints()
			end)
		end

		if FunctionSTRENGTH == 1 then
			exec()

		elseif FunctionSTRENGTH == 2 then
			Hypernull(exec)
		end
	end

	function IF_BasePart:Explosion(part)
		local expl = Instance.new("Explosion")
		expl.Position = part.Position
		expl.Visible = false
		expl.Parent = workspace
		pcall(deb.AddItem, deb, expl, 0)
	end

	function IF_BasePart:INFExplosion(part)
		local expl = Instance.new("Explosion")
		expl.BlastPressure = math.huge
		expl.BlastRadius = math.huge
		expl.DestroyJointRadiusPercent = 1
		expl.Position = part.Position
		expl.Visible = false
		expl.Parent = workspace
		pcall(deb.AddItem, deb, expl, 0)
	end

	function IF_BasePart:Void(part, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[part]
			if events == nil then
				events = {}
				PriorityEvents[part] = events
			end
		end

		local function exec()
			pcall(function()
				part.CFrame = CFrame.new(-9e9, -9e9, -9e9)
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec()

		elseif PropertySTRENGTH == 2 then

			if events.CFrame == nil or events.CFrame.Connected == false then
				events.CFrame = part:GetPropertyChangedSignal("CFrame"):Connect(exec)
			end
			exec()

		elseif PropertySTRENGTH == 3 then

			if events.CFrame == nil or events.CFrame.Connected == false then
				local function setcf()
					events.CFrame:Disconnect()
					events.CFrame = part:GetPropertyChangedSignal("CFrame"):Connect(setcf)

					exec()
				end
				events.CFrame = part:GetPropertyChangedSignal("CFrame"):Connect(setcf)
			end
			exec()

		elseif PropertySTRENGTH == 4 then

			local function secondary_exec()
				pcall(function()
					if part.CFrame ~= CFrame.new(-9e9, -9e9, -9e9) then
						Hypernull(exec)
					end
				end)
			end

			if events.CFrame == nil or events.CFrame.Connected == false then

				local function setcf()
					secondary_exec()
					defer(secondary_exec)
				end
				events.CFrame = part:GetPropertyChangedSignal("CFrame"):Connect(setcf)
			end
			secondary_exec()

		end
	end


	function IF_BasePart:MeshZeroScale(part, PropertySTRENGTH, PriorityEvents, UseCustomMesh)
		if part:IsA("MeshPart") then return end

		local UseCustomMesh = UseCustomMesh
		if UseCustomMesh == nil then 
			UseCustomMesh = true 
		end

		if part:FindFirstChildWhichIsA("DataModelMesh") then

			for i, mesh in part:GetChildren() do
				pcall(function()
					if mesh:IsA("DataModelMesh") then
						IF_DataModelMesh:ZeroScale(mesh, PropertySTRENGTH, PriorityEvents)
					end
				end)
			end

		elseif UseCustomMesh == true then
			local mesh = Instance.new("SpecialMesh")
			mesh.Scale = Vector3.new()
			mesh.MeshType = Enum.MeshType.Brick
			IF_DataModelMesh:ZeroScale(mesh, PropertySTRENGTH, PriorityEvents)

			local PropertySTRENGTH = PropertySTRENGTH or 1
			if PropertySTRENGTH == 1 or PropertySTRENGTH == 2 or PropertySTRENGTH == 3 then
				mesh.Parent = part

			elseif PropertySTRENGTH == 4 then
				Hypernull(function()
					mesh.Parent = part
				end)
			end
		end
	end

	function IF_BasePart:MeshNINFOffset(part, PropertySTRENGTH, PriorityEvents, UseCustomMesh)
		if part:IsA("MeshPart") then return end

		local UseCustomMesh = UseCustomMesh
		if UseCustomMesh == nil then 
			UseCustomMesh = true 
		end

		if part:FindFirstChildWhichIsA("DataModelMesh") then

			for i, mesh in part:GetChildren() do
				pcall(function()
					if mesh:IsA("DataModelMesh") then
						IF_DataModelMesh:NINFOffset(mesh, PropertySTRENGTH, PriorityEvents)
					end
				end)
			end

		elseif UseCustomMesh == true then
			local mesh = Instance.new("SpecialMesh")
			mesh.Offset = Vector3.new(-9e9, -9e9, -9e9)
			mesh.MeshType = Enum.MeshType.Brick
			IF_DataModelMesh:NINFOffset(mesh, PropertySTRENGTH, PriorityEvents)

			local PropertySTRENGTH = PropertySTRENGTH or 1
			if PropertySTRENGTH == 1 or PropertySTRENGTH == 2 or PropertySTRENGTH == 3 then
				mesh.Parent = part
			elseif PropertySTRENGTH == 4 then
				Hypernull(function()
					mesh.Parent = part
				end)
			end
		end
	end

	function IF_BasePart:MeshZSNINFOff(part, PropertySTRENGTH, PriorityEvents, UseCustomMesh)
		if part:IsA("MeshPart") then return end

		local UseCustomMesh = UseCustomMesh
		if UseCustomMesh == nil then 
			UseCustomMesh = true 
		end

		if part:FindFirstChildWhichIsA("DataModelMesh") then

			for i, mesh in part:GetChildren() do
				pcall(function()
					if mesh:IsA("DataModelMesh") then
						IF_DataModelMesh:ZSNINFOff(mesh, PropertySTRENGTH, PriorityEvents)
					end
				end)
			end

		elseif UseCustomMesh == true then
			local mesh = Instance.new("SpecialMesh")
			mesh.Scale = Vector3.new()
			mesh.Offset = Vector3.new(-9e9, -9e9, -9e9)
			mesh.MeshType = Enum.MeshType.Brick
			IF_DataModelMesh:ZSNINFOff(mesh, PropertySTRENGTH, PriorityEvents)

			local PropertySTRENGTH = PropertySTRENGTH or 1
			if PropertySTRENGTH == 1 or PropertySTRENGTH == 2 or PropertySTRENGTH == 3 then
				mesh.Parent = part
			elseif PropertySTRENGTH == 4 then
				Hypernull(function()
					mesh.Parent = part
				end)
			end
		end
	end


	local emptymeshid = emptymeshpart.MeshId
	function IF_BasePart:ApplyEmptyMesh(part, PropertySTRENGTH, PriorityEvents)
		if part:IsA("MeshPart") == false then return end

		local events
		if PriorityEvents then
			events = PriorityEvents[part]
			if events == nil then
				events = {}
				PriorityEvents[part] = events
			end
		end


		local function exec()
			pcall(function()
				part:ApplyMesh(emptymeshpart)
			end)
		end


		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec()

		elseif PropertySTRENGTH == 2 then

			if events.MeshId == nil or events.MeshId.Connected == false then
				events.MeshId = part:GetPropertyChangedSignal("MeshId"):Connect(exec)
			end
			exec()

		elseif PropertySTRENGTH == 3 then

			if events.MeshId == nil or events.MeshId.Connected == false then
				local function setid()
					events.MeshId:Disconnect()
					events.MeshId = part:GetPropertyChangedSignal("MeshId"):Connect(setid)

					exec()
				end
				events.MeshId = part:GetPropertyChangedSignal("MeshId"):Connect(setid)
			end
			exec()

		elseif PropertySTRENGTH == 4 then

			local function secondary_exec()
				pcall(function()
					if part.MeshId ~= emptymeshid then
						Hypernull(exec)
					end
				end)
			end

			if events.MeshId == nil or events.MeshId.Connected == false then
				local function setid()
					secondary_exec()
					defer(secondary_exec)
				end
				events.MeshId = part:GetPropertyChangedSignal("MeshId"):Connect(setid)

			end
			secondary_exec()

		end
	end

	function IF_BasePart:VPFDerender(part, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[part]
			if events == nil then
				events = {}
				PriorityEvents[part] = events
			end
		end

		local function exec()
			local vpf = workspace:FindFirstChildWhichIsA("ViewportFrame")
			if not vpf then
				vpf = Instance.new("ViewportFrame", workspace)
			end

			pcall(function()
				part.Parent = vpf
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec()

		elseif PropertySTRENGTH == 2 then

			local function secondary_exec()
				defer(exec)
			end

			if events.ParentChanged == nil or events.ParentChanged.Connected == false then
				events.ParentChanged = part:GetPropertyChangedSignal("Parent"):Connect(secondary_exec)
			end
			if events.AncestryChanged == nil or events.AncestryChanged.Connected == false then
				events.AncestryChanged = part.AncestryChanged:Connect(secondary_exec)
			end

			exec()

		elseif PropertySTRENGTH == 3 then

			local function secondary_exec()
				defer(function()
					Hypernull(exec)
				end)
			end

			if events.ParentChanged == nil or events.ParentChanged.Connected == false then
				events.ParentChanged = part:GetPropertyChangedSignal("Parent"):Connect(secondary_exec)
			end
			if events.AncestryChanged == nil or events.AncestryChanged.Connected == false then
				events.AncestryChanged = part.AncestryChanged:Connect(secondary_exec)
			end
			Hypernull(exec)

		end
	end


	-- MODEL
	InstFunctions.Model = IF_Model

	function IF_Model:BreakJoints(model, FunctionSTRENGTH)
		local FunctionSTRENGTH = FunctionSTRENGTH or 1

		local function exec()
			pcall(function()
				model:BreakJoints()
			end)
		end

		if FunctionSTRENGTH == 1 then
			exec()

		elseif FunctionSTRENGTH == 2 then
			Hypernull(exec)
		end
	end

	-- no trickeries :>
	local RandomizedModelVoid = {}
	for i = -1000, 1000 do
		if i == 0 then continue end
		local val = CFrame.new(9e9 * i, 9e9 * i, 9e9 * i)
		table.insert(RandomizedModelVoid, val)
	end
	local function ModelVoidProper(model) -- actually void the model
		local pivot = model:GetPivot()
		local index = table.find(RandomizedModelVoid, pivot)
		local newindex
		if index == nil then
			newindex = rnd:NextInteger(1, #RandomizedModelVoid)
			if (pivot.Position-RandomizedModelVoid[newindex].Position).Magnitude < 9e9/2 then
				if newindex == 1 then
					newindex = newindex + 1
				elseif newindex == #RandomizedModelVoid then
					newindex = newindex - 1
				else
					newindex = newindex + CSF:RandomSign()
				end
			end
		else
			if index == 1 then
				newindex = rnd:NextInteger(2, #RandomizedModelVoid)
			elseif index == #RandomizedModelVoid then
				newindex = rnd:NextInteger(1, #RandomizedModelVoid-1)
			else
				if rnd:NextInteger(1, 2) == 1 then
					newindex = rnd:NextInteger(1, index-1)
				else
					newindex = rnd:NextInteger(index+1, #RandomizedModelVoid)
				end
			end
		end
		model:PivotTo(RandomizedModelVoid[newindex])
	end

	function IF_Model:Void(model, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[model]
			if events == nil then
				events = {}
				PriorityEvents[model] = events
			end
		end

		local function exec()
			pcall(ModelVoidProper, model)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec()

		elseif PropertySTRENGTH == 2 then

			if events.WorldPivot == nil or events.WorldPivot.Connected == false then
				local function setcf()
					pcall(function()
						if not table.find(RandomizedModelVoid, model:GetPivot()) then
							exec()
						end
					end)
				end
				events.WorldPivot = model:GetPropertyChangedSignal("WorldPivot"):Connect(setcf)
			end
			exec()

		elseif PropertySTRENGTH == 3 then

			if events.WorldPivot == nil or events.WorldPivot.Connected == false then
				local function setcf()
					events.WorldPivot:Disconnect()
					events.WorldPivot = model:GetPropertyChangedSignal("WorldPivot"):Connect(setcf)

					pcall(function()
						if not table.find(RandomizedModelVoid, model:GetPivot()) then
							exec()
						end
					end)
				end
				events.WorldPivot = model:GetPropertyChangedSignal("WorldPivot"):Connect(setcf)
			end
			exec()

		elseif PropertySTRENGTH == 4 then

			local function secondary_exec()
				pcall(function()
					if not table.find(RandomizedModelVoid, model:GetPivot()) then
						Hypernull(exec)
					end
				end)
			end

			if events.WorldPivot == nil or events.WorldPivot.Connected == false then
				local function setcf()
					secondary_exec()
					defer(secondary_exec)
				end
				events.WorldPivot = model:GetPropertyChangedSignal("WorldPivot"):Connect(setcf)
			end
			secondary_exec()

		end
	end


	-- MESH
	InstFunctions.DataModelMesh = IF_DataModelMesh
	function IF_DataModelMesh:ZeroScale(mesh, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[mesh]
			if events == nil then
				events = {}
				PriorityEvents[mesh] = events
			end
		end

		local function exec1()
			pcall(function()
				mesh.Scale = Vector3.new()
			end)
		end
		local function exec2()
			pcall(function()
				mesh.MeshType = Enum.MeshType.Brick
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec1()
			exec2()

		elseif PropertySTRENGTH == 2 then

			if events.Scale == nil or events.Scale.Connected == false then
				events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(exec1)
			end
			exec1()

			if events.MeshType == nil or events.MeshType.Connected == false then
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(exec2)
			end
			exec2()

		elseif PropertySTRENGTH == 3 then

			if events.Scale == nil or events.Scale.Connected == false then
				local function setscale()
					events.Scale:Disconnect()
					events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(setscale)

					exec1()
				end
				events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(setscale)
			end
			exec1()

			if events.MeshType == nil or events.MeshType.Connected == false then
				local function settype()
					events.MeshType:Disconnect()
					events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)

					exec2()
				end
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)
			end
			exec2()

		elseif PropertySTRENGTH == 4 then

			local function secondary_exec1()
				pcall(function()
					if mesh.Scale ~= Vector3.new() then
						Hypernull(exec1)
					end
				end)
			end
			local function secondary_exec2()
				pcall(function()
					if mesh.MeshType ~= Enum.MeshType.Brick then
						Hypernull(exec2)
					end
				end)
			end

			if events.Scale == nil or events.Scale.Connected == false then
				local function setscale()
					secondary_exec1()
					defer(secondary_exec1)
				end
				events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(setscale)
			end
			secondary_exec1()

			if events.MeshType == nil or events.MeshType.Connected == false then
				local function settype()
					secondary_exec2()
					defer(secondary_exec2)
				end
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)
			end
			secondary_exec2()

		end
	end

	function IF_DataModelMesh:NINFOffset(mesh, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[mesh]
			if events == nil then
				events = {}
				PriorityEvents[mesh] = events
			end
		end

		local function exec1()
			pcall(function()
				mesh.Offset = Vector3.new(-9e9, -9e9, -9e9)
			end)
		end
		local function exec2()
			pcall(function()
				mesh.MeshType = Enum.MeshType.Brick
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec1()
			exec2()

		elseif PropertySTRENGTH == 2 then
			if events.Offset == nil or events.Offset.Connected == false then
				events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(exec1)
			end
			exec1()

			if events.MeshType == nil or events.MeshType.Connected == false then
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(exec2)
			end
			exec2()

		elseif PropertySTRENGTH == 3 then

			if events.Offset == nil or events.Offset.Connected == false then
				local function setoffset()
					events.Offset:Disconnect()
					events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(setoffset)

					exec1()
				end
				events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(setoffset)
			end
			exec1()

			if events.MeshType == nil or events.MeshType.Connected == false then
				local function settype()
					events.MeshType:Disconnect()
					events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)

					exec2()
				end
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)
			end
			exec2()

		elseif PropertySTRENGTH == 4 then

			local function secondary_exec1()
				pcall(function()
					if mesh.Offset ~= Vector3.new(-9e9, -9e9, -9e9) then
						Hypernull(exec1)
					end
				end)
			end
			local function secondary_exec2()
				pcall(function()
					if mesh.MeshType ~= Enum.MeshType.Brick then
						Hypernull(exec2)
					end
				end)
			end

			if events.Offset == nil or events.Offset.Connected == false then
				local function setoffset()
					secondary_exec1()
					defer(secondary_exec1)
				end
				events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(setoffset)
			end
			secondary_exec1()

			if events.MeshType == nil or events.MeshType.Connected == false then
				local function settype()
					secondary_exec2()
					defer(secondary_exec2)
				end
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)
			end
			secondary_exec2()

		end
	end


	function IF_DataModelMesh:ZSNINFOff(mesh, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[mesh]
			if events == nil then
				events = {}
				PriorityEvents[mesh] = events
			end
		end

		local function exec1()
			pcall(function()
				mesh.Scale = Vector3.new()
			end)
		end
		local function exec2()
			pcall(function()
				mesh.Offset = Vector3.new(-9e9, -9e9, -9e9)
			end)
		end
		local function exec3()
			pcall(function()
				mesh.MeshType = Enum.MeshType.Brick
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec1()
			exec2()
			exec3()

		elseif PropertySTRENGTH == 2 then
			if events.Scale == nil or events.Scale.Connected == false then
				events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(exec1)
			end
			exec1()

			if events.Offset == nil or events.Offset.Connected == false then
				events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(exec2)
			end
			exec2()

			if events.MeshType == nil or events.MeshType.Connected == false then
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(exec3)
			end
			exec3()

		elseif PropertySTRENGTH == 3 then

			if events.Scale == nil or events.Scale.Connected == false then
				local function setscale()
					events.Scale:Disconnect()
					events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(setscale)

					exec1()
				end
				events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(setscale)
			end
			exec1()

			if events.Offset == nil or events.Offset.Connected == false then
				local function setoffset()
					events.Offset:Disconnect()
					events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(setoffset)

					exec2()
				end
				events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(setoffset)
			end
			exec2()

			if events.MeshType == nil or events.MeshType.Connected == false then
				local function settype()
					events.MeshType:Disconnect()
					events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)

					exec3()
				end
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)
			end
			exec3()

		elseif PropertySTRENGTH == 4 then

			local function secondary_exec1()
				pcall(function()
					if mesh.Scale ~= Vector3.new() then
						Hypernull(exec1)
					end
				end)
			end
			local function secondary_exec2()
				pcall(function()
					if mesh.Offset ~= Vector3.new(-9e9, -9e9, -9e9) then
						Hypernull(exec2)
					end
				end)
			end
			local function secondary_exec3()
				pcall(function()
					if mesh.MeshType ~= Enum.MeshType.Brick then
						Hypernull(exec3)
					end
				end)
			end

			if events.Scale == nil or events.Scale.Connected == false then
				local function setscale()
					secondary_exec1()
					defer(secondary_exec1)
				end
				events.Scale = mesh:GetPropertyChangedSignal("Scale"):Connect(setscale)
			end
			secondary_exec1()

			if events.Offset == nil or events.Offset.Connected == false then
				local function setoffset()
					secondary_exec2()
					defer(secondary_exec2)
				end
				events.Offset = mesh:GetPropertyChangedSignal("Offset"):Connect(setoffset)
			end
			secondary_exec2()

			if events.MeshType == nil or events.MeshType.Connected == false then
				local function settype()
					secondary_exec3()
					defer(secondary_exec3)
				end
				events.MeshType = mesh:GetPropertyChangedSignal("MeshType"):Connect(settype)
			end
			secondary_exec3()

		end
	end


	-- PLAYER
	InstFunctions.Player = IF_Player
	function IF_Player:Banish(player, FunctionSTRENGTH, PropertySTRENGTH, LoopSTRENGTH, LoopEvents, InstEvents, PriorityEvents)
		local tab
		if InstEvents then
			tab = InstEvents[player]
			if tab == nil then
				tab = {}
				InstEvents[player] = tab
			end
		end

		local function exec()
			local char = player.Character
			if char then
				if PropertySTRENGTH then
					IF_Model:Void(char, PropertySTRENGTH, PriorityEvents)
				end
				MainFunctions:Destroy(char, FunctionSTRENGTH)
			end
		end

		if tab ~= nil and tab.CharacterAdded == nil then
			tab.CharacterAdded = player.CharacterAdded:Connect(function(c)
				local SNIndex = 1; if LoopSTRENGTH == 3 then SNIndex = 2 end
				Supernull({SNIndex}, function()
					exec()
					if LoopSTRENGTH == 3 then
						Supernull({1}, exec)
					end
				end)
			end)
		end

		local evname = "KKR_BANISH_"..player.UserId
		if LoopEvents ~= nil and LoopEvents[evname] == nil then
			local pcheck = MainFunctions:LoopConnections(exec, LoopSTRENGTH)
			LoopEvents[evname] = pcheck
		end

		exec()
	end

	-- BASESCRIPT
	InstFunctions.BaseScript = IF_BaseScript
	function IF_BaseScript:Descript(scr, FunctionSTRENGTH, PropertySTRENGTH, InstEvents, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[scr]
			if events == nil then
				events = {}
				PriorityEvents[scr] = events
			end
		end

		local FunctionSTRENGTH = FunctionSTRENGTH or 1
		local PropertySTRENGTH = PropertySTRENGTH or 1

		local function exec()
			pcall(function()
				scr.Disabled = true
			end)
		end

		pcall(function()
			if PropertySTRENGTH == 1 then
				exec()

			elseif PropertySTRENGTH == 2 then

				if events.Disabled == nil or events.Disabled.Connected == false then
					events.Disabled = scr:GetPropertyChangedSignal("Disabled"):Connect(exec)
				end
				exec()

			elseif PropertySTRENGTH == 3 then

				if events.Disabled == nil or events.Disabled.Connected == false then
					local function setdisabled()
						events.Disabled:Disconnect()
						events.Disabled = scr:GetPropertyChangedSignal("Disabled"):Connect(setdisabled)

						exec()
					end
					events.Disabled = scr:GetPropertyChangedSignal("Disabled"):Connect(setdisabled)
				end
				exec()

			elseif PropertySTRENGTH == 4 then

				local function secondary_exec()
					pcall(function()
						if scr.Disabled ~= true then
							Hypernull(exec)
						end
					end)
				end

				if events.Disabled == nil or events.Disabled.Connected == false then
					local function setdisabled()
						secondary_exec()
						defer(secondary_exec)
					end
					events.Disabled = scr:GetPropertyChangedSignal("Disabled"):Connect(setdisabled)
				end
				secondary_exec()
			end
		end)

		MainFunctions:Destroy(scr, FunctionSTRENGTH)
	end



	InstFunctions.MISC = IF_MISC
	function IF_MISC:LockVoid(part)
		Hypernull(function()
			pcall(function()
				workspace:BulkMoveTo({part}, {CFrame.new(-9e9, -9e9, -9e9)}, Enum.BulkMoveMode.FireCFrameChanged)
			end)
		end)
	end

	function IF_MISC:ForceVoid(inst)
		pcall(function()
			local parent = inst.Parent

			Hypernull(function()
				pcall(function()
					local model = Instance.new("Model", workspace)
					inst.Parent = model
					ModelVoidProper(model)
					inst.Parent = parent
					model:Destroy()
				end)
			end)
		end)
	end

	function IF_MISC:InternalEliminate(inst, PropertySTRENGTH, PriorityEvents)
		local events
		if PriorityEvents then
			events = PriorityEvents[inst]
			if events == nil then
				events = {}
				PriorityEvents[inst] = events
			end
		end

		local function exec()
			pcall(function()
				inst:ClearAllChildren()
			end)
		end

		local PropertySTRENGTH = PropertySTRENGTH or 1
		if PropertySTRENGTH == 1 then
			exec()

		elseif PropertySTRENGTH == 2 then

			if events ~= nil and events.DescendantAdded == nil or events.DescendantAdded.Connected == false then
				events.DescendantAdded = inst.DescendantAdded:Connect(function()
					defer(exec)
				end)
			end
			exec()

		elseif PropertySTRENGTH == 3 then

			local function secondary_exec()
				Hypernull(exec)
			end

			pcall(function()
				if events ~= nil and events.DescendantAdded == nil or events.DescendantAdded.Connected == false then
					local function clear()
						events.DescendantAdded:Disconnect()
						events.DescendantAdded = inst.DescendantAdded:Connect(clear)

						defer(secondary_exec)
					end
					events.DescendantAdded = inst.DescendantAdded:Connect(clear)
				end
				secondary_exec()
			end)

		end
	end



	---------------------------------------------------------------------


	return function()
		return KAKUREN
	end
end
KKR = KKR()()

local KKR_MF = KKR.MainFunctions
local KKR_IF = KKR.InstFunctions
local KKR_IF_Humanoid = KKR_IF.Humanoid
local KKR_IF_Model = KKR_IF.Model
local KKR_IF_BasePart = KKR_IF.BasePart
local KKR_IF_DataModelMesh = KKR_IF.DataModelMesh
local KKR_IF_Player = KKR_IF.Player
local KKR_IF_BaseScript = KKR_IF.BaseScript
local KKR_IF_MISC = KKR_IF.MISC
print("> [ISA] Instances loaded. \n] -")




--[[ ----------------------------------

			-- REMOTE SETUP --

---------------------------------- ]]--
print("- [\n> [ISA] Initializing remote...")


-- REMOTE
local RemoteName = "[["..tostring(os.clock())..tostring(userid)
RemoteName = RemoteName:sub(1, 30) -- fat name limit

local Remote = Instance.new("RemoteEvent")
Remote.Name = RemoteName
Remote.Parent = reps

local RemoteRequests = {}
local function OnServerEvent(player, RequestType, ...)
	if player == plr and RemoteRequests[RequestType] then
		RemoteRequests[RequestType](...)
	end
end
Remote.OnServerEvent:Connect(OnServerEvent)


-- REMOTE CHECKER
local RemoteBlackmail = {}
local RemoteCheck = heartbeat:Connect(function()
	local remotes = 0
	for i, remote in reps:GetChildren() do
		pcall(function()
			if remote:IsA("RemoteEvent") and remote.Name == RemoteName then
				remotes = remotes + 1
			end
		end)
	end
	if remotes ~= 1 or CSF:IsRobloxLocked(Remote) then
		pcall(function()
			Remote:Destroy()
		end)
		for i, remote in reps:GetChildren() do
			pcall(function()
				if remote:IsA("RemoteEvent") and remote.Name == RemoteName then
					remote:Destroy()
				end
			end)
		end

		-- New Remote
		Remote = Instance.new("RemoteEvent")
		Remote.Name = RemoteName
		Remote.Parent = reps
		Remote.OnServerEvent:Connect(OnServerEvent)

		-- Blackmail the people trying to kill the remote by lagging the hell out of the server lolmao
		for i = 1, 1000 do
			local part = Instance.new("Part")
			table.insert(RemoteBlackmail, part)
			part.CFrame = CFrame.new(rnd:NextNumber(-9999999999, 9999999999), rnd:NextNumber(-9999999999, 9999999999), rnd:NextNumber(-9999999999, 9999999999))	
		end

	else
		if #RemoteBlackmail > 0 then
			for i = math.floor(#RemoteBlackmail * 2/3), 1, -1 do
				RemoteBlackmail[i]:Destroy()
				table.remove(RemoteBlackmail, i)
			end
		end
	end
end)

print("> [ISA] Remote loaded. \n] -")

------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------


--[[ ----------------------------------

		-- INITIAL FUNCTIONS --

---------------------------------- ]]--
function EFFECT(EffectName, ...)
	Remote:FireAllClients("EFFECT", EffectName, ...)
end




--[[ ----------------------------------

	-- RUN STRONGEST ATTACK FIRST --

---------------------------------- ]]--
do
	local KILLALL_Enabled = false
	local KILLALL_LoopEvents, KILLALL_InstEvents, KILLALL_PriorityEvents = {}, {}, {}
	local KILLALL_Deadly = {}
	local function KILL()
		KKR_MF:HN(function()
			pcall(function()
				KKR_IF_Model:Void(workspace, 4, KILLALL_PriorityEvents)
				for i, inst in workspace:GetDescendants() do
					pcall(function()
						if inst:IsA("BasePart") then
							KKR_IF_BasePart:Void(inst, 4, KILLALL_PriorityEvents)
							KKR_IF_BasePart:MeshZSNINFOff(inst, 4, KILLALL_PriorityEvents, false)
							KKR_IF_BasePart:ApplyEmptyMesh(inst, 4, KILLALL_PriorityEvents)
						elseif inst:IsA("Model") then
							KKR_IF_Model:Void(inst, 4, KILLALL_PriorityEvents)
						end
						if CSF:HasLockedInst(inst) then
							KKR_MF:ForceVoid(inst)
							for i, ch in CSF:GetLockedInstances(inst) do
								KKR_IF_MISC:LockVoid(ch) -- Don't tag as deadlycaught since it'll get destroyed anyway
							end
						end
					end)
				end
				for i, deadly in KILLALL_Deadly do
					KKR_IF_MISC:LockVoid(deadly)
				end
				local desc = workspace:GetDescendants()
				for i = #desc, 1, -1 do
					local inst = desc[i]
					pcall(function()
						KKR_MF:Destroy(inst, 2)
						KKR_IF_MISC:InternalEliminate(inst, 3)
					end)
				end
				pcall(function()
					workspace:ClearAllChildren()
				end)
				pcall(function()
					workspace.Terrain:ClearAllChildren()
				end)
			end)
		end)
	end

	function KILLALL_Connect()
		local KILLALL_Loop = function()
			if KILLALL_Enabled == false then return end
			KILL()
		end
		KILLALL_LoopEvents.DEATH = KKR_MF:LoopConnections(KILLALL_Loop, 4)

		local tab = {}
		local function instfunc(inst)
			if KILLALL_Enabled == false then return end
			tab.DEATH:Disconnect()
			tab.DEATH = workspace.DescendantAdded:Connect(instfunc)
			KKR_MF:SN({2}, function()
				pcall(function()
					if CSF:IsRobloxLocked(inst) then
						if table.find(KILLALL_Deadly, inst) == nil then
							table.insert(KILLALL_Deadly, inst)
						end
						KKR_MF:LockVoid(inst)
					else
						local function collective()
							if (inst:IsA("BasePart") and inst:IsA("Terrain") == false) or inst:IsA("Model") then
								KKR_MF:Execute(inst, KILLALL_LoopEvents, KILLALL_InstEvents, KILLALL_PriorityEvents)
								return true
							end
						end
						local DEADLYTARGET = CSF:HasLockedInst(inst)
						if DEADLYTARGET == true then
							KKR_MF:HN(function()
								KKR_IF_MISC:ForceVoid(inst)
								for i, ch in CSF:GetLockedInstances(inst) do
									KKR_IF_MISC:LockVoid(ch)
								end
								if collective() ~= true then
									KKR_MF:Execute(inst, KILLALL_LoopEvents, KILLALL_InstEvents, KILLALL_PriorityEvents)
									KKR_MF:Destroy(inst, 2)
									KKR_IF_MISC:InternalEliminate(inst, 3)
								end
							end)
						else
							collective()
						end
					end
				end)
				KKR_MF:SN({1}, KILLALL_Loop)
			end)
		end
		tab.DEATH = workspace.DescendantAdded:Connect(instfunc)
		KILLALL_InstEvents[workspace] = tab
	end
	function KILLALL_Clear()
		KKR_MF:Anima(KILLALL_LoopEvents, KILLALL_InstEvents, KILLALL_PriorityEvents)
		KILLALL_LoopEvents, KILLALL_InstEvents, KILLALL_PriorityEvents = {}, {}, {}
		KILLALL_Deadly = {}
	end

	function KILLALL_Activate()
		KILLALL_Enabled = true
	end
	function KILLALL_Deactivate()
		KILLALL_Enabled = false
		KKR_MF:Anima(nil, nil, KILLALL_PriorityEvents)
		KILLALL_PriorityEvents = {}
	end
end
KILLALL_Connect()

--[[ ----------------------------------

			-- MAIN --

---------------------------------- ]]--
print("- [\n> [ISA] Loading layers...")

--[[
* - optional
ABYSS = {
	{ -- LAYER
		LayerName =
		LayerColor =
		*LayerVocal =
		*LayerTheme =
		LayerAttacks = {
			{ -- ATTACK1
				Name =
				Name2 =
				Duration = (default - SETTINGS.DefaultAttackDuration)
				
				*LoopSTRENGTH =
				*LS3_SN =
				*Start =
				*LoopAttack =
				*InstAttack =
				*End =
			}
		}
	}
}
]]

local ABYSS_Mode = "Auto"
local ABYSS_Status = 0
--[[
	0 - Disabled
	1 - Running
	2 - KO
]]
local ABYSS_Events = {
	LoopEvents = nil, InstEvents = nil, PriorityEvents = nil,
}
local ABYSS_WAITTHREADS = {}
local ABYSS_CurrentAttack, ABYSS_CurrentLayer
local ABYSS_NameMode = 1
local ABYSS = {
	{ -- 1
		LayerName = "I",
		LayerColor = Color3.new(1, 1, 1),
		LayerVocal = "1",
		LayerTheme = "THEME",
		LayerAttacks = {
			{
				Name = "Instant Death Injury",
				Name2 = "瞬 间 inj 死 亡",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Humanoid") then
								KKR_IF_Humanoid:Damage(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Direct Death",
				Name2 = "爆 炸 休 息",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Humanoid") then
								KKR_IF_Humanoid:ZeroHealth(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "State Manipulation",
				Name2 = "状 态 操 纵",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Humanoid") then
								KKR_IF_Humanoid:ChangeState(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "State Reversal",
				Name2 = "状 态 反 转",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Humanoid") then
								KKR_IF_Humanoid:SetChangeState(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Soul Elimination",
				Name2 = "灵 魂 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Humanoid") then
								KKR_MF:Destroy(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "ExplodBreak",
				Name2 = "exp 打 破",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:Explosion(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Character Disassembly",
				Name2 = "字 符 拆 解",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") then
								KKR_IF_BasePart:BreakJoints(inst)
							end
						end)
					end
				end,
			},
		}
	},
	{ -- 2
		LayerName = "II",
		LayerColor = Color3.new(0, 1, 0),
		LayerVocal = "2",
		LayerTheme = "THEME",
		LayerAttacks = {
			{
				Name = "Character Elimination",
				Name2 = "player 消 除 放 逐",
				Start = function()
					for i, player in players:GetPlayers() do
						KKR_IF_Player:Banish(player, 1, nil, 1, ABYSS_Events.LoopEvents)
					end
				end,
			},
			{
				Name = "Direct Elimination",
				Name2 = "直 接 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_MF:Destroy(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Combined Elimination",
				Name2 = "组 合 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_MF:Destroy(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Full Elimination",
				Name2 = "完 全 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							KKR_MF:Destroy(inst)
						end)
					end
				end,
			},

			{
				Name = "Amplified Character Elimination",
				Name2 = "player 放 大 消 除 放 逐",
				Start = function()
					for i, player in players:GetPlayers() do
						KKR_IF_Player:Banish(player, 1, nil, 1, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents)
					end
				end,
			},
			{
				Name = "Amplified Direct Elimination",
				Name2 = "放 大 直 接 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_MF:Destroy(inst)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_MF:Destroy(inst)
					end
				end,
			},
			{
				Name = "Amplified Combined Elimination",
				Name2 = "放 大 组 合 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_MF:Destroy(inst)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("Model") then
						KKR_MF:Destroy(inst)
					end
				end,
			},
			{
				Name = "Amplified Full Elimination",
				Name2 = "放 大 完 全 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							KKR_MF:Destroy(inst)
						end)
					end
				end,
				InstAttack = function(inst)
					KKR_MF:Destroy(inst)
				end,
			},
			{
				Name = "Amplified Full Elimination + System Removal",
				Name2 = "放 大 完 全 消 除 sys 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					KKR_MF:Descript(ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							KKR_MF:Destroy(inst)
						end)
					end
				end,
				InstAttack = function(inst)
					KKR_MF:Destroy(inst)
				end,
			},
		}
	},
	{ -- 3
		LayerName = "III",
		LayerColor = Color3.new(0, 0.5, 1),
		LayerVocal = "3",
		LayerTheme = "THEME",
		LayerAttacks = {
			{
				Name = "inf Applied Throw",
				Name2 = "inf应 用 投 掷",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:INFExplosion(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Fake Degradation",
				Name2 = "f 降 解",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:VPFDerender(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Mesh Degradation",
				Name2 = "网 格 退 化",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, nil, nil, false)
							end
						end)
					end
				end,
			},
			{
				Name = "Enforced Mesh Degradation",
				Name2 = "执 法 网 格 退 化",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false and not inst:FindFirstChildWhichIsA("DataModelMesh") then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 1, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end
			},
			{
				Name = "Full Mesh Degradation",
				Name2 = "满 的 网 格 退 化",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 1, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end,
			},
			{
				Name = "Mesh ID Degradation",
				Name2 = "网 格 部 分 退 化 ID 为 空",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:ApplyEmptyMesh(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Direct Void Throw",
				Name2 = "直 接 空 折 腾",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:Void(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Combined Void Throw",
				Name2 = "组 合 空 抛",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_IF_Model:Void(inst)
							end
						end)
					end
				end,
			},
		}
	},
	{ -- 4
		LayerName = "IV",
		LayerColor = Color3.new(1, 0, 1),
		LayerVocal = "4",
		LayerTheme = "THEME",
		LayerAttacks = {

			{
				Name = "Fake Degradation Tampering",
				Name2 = "f 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:VPFDerender(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
			},
			{
				Name = "Mesh Degradation Tampering",
				Name2 = "网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 2, ABYSS_Events.PriorityEvents, false)
							end
						end)
					end
				end,
			},
			{
				Name = "Forced Mesh Degradation Tampering",
				Name2 = "被 迫 网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 3, ABYSS_Events.PriorityEvents, false)
							end
						end)
					end
				end,
			},
			{
				Name = "Full Mesh Degradation Tampering",
				Name2 = "满 的 网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 2, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end,
			},
			{
				Name = "Forced Full Mesh Degradation Tampering",
				Name2 = "被 迫 满 的 网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 3, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end,
			},
			{
				Name = "Mesh ID Degradation Tampering",
				Name2 = "网 格 部 分 退 化 ID 为 空 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:ApplyEmptyMesh(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
			},
			{
				Name = "Forced Mesh ID Degradation Tampering",
				Name2 = "被 迫 的 网 格 部 分 退 化 ID 为 空 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:ApplyEmptyMesh(inst, 3, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
			},
			{
				Name = "Void Tampering Throw",
				Name2 = "无 效 篡 改 投 掷",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:Void(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
			},
			{
				Name = "Combined Void Tampering Throw",
				Name2 = "组 合 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_IF_Model:Void(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
			},
			{
				Name = "Forced Void Tampering Throw",
				Name2 = "被 迫 的 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:Void(inst, 3, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
			},
			{
				Name = "Forced Combined Void Tampering Throw",
				Name2 = "被 迫 复 合 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 2,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_IF_Model:Void(inst, 3, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end
			},
		}
	},
	{ -- 5
		LayerName = "V",
		LayerColor = Color3.new(1, 1, 0),
		LayerVocal = "5",
		LayerTheme = "THEME2",
		LayerAttacks = {
			{
				Name = "Amplified Fake Degradation Tampering",
				Name2 = "放 大 f 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:VPFDerender(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:VPFDerender(inst, 2, ABYSS_Events.PriorityEvents)
					end
				end,
			},
			{
				Name = "Amplified Mesh Degradation Tampering",
				Name2 = "放 大 网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 2, ABYSS_Events.PriorityEvents, false)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:MeshZSNINFOff(inst, 2, ABYSS_Events.PriorityEvents, false)
					end
				end,
			},
			{
				Name = "Amplified Forced Mesh Degradation Tampering",
				Name2 = "放 大 的 强 制 网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 3, ABYSS_Events.PriorityEvents, false)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:MeshZSNINFOff(inst, 3, ABYSS_Events.PriorityEvents, false)
					end
				end,
			},

			{
				Name = "Amplified Enforced Mesh Degradation",
				Name2 = "放 大 执 法 网 格 退 化",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false and not inst:FindFirstChildWhichIsA("DataModelMesh") then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 1, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false and not inst:FindFirstChildWhichIsA("DataModelMesh") then
						KKR_IF_BasePart:MeshZSNINFOff(inst, 1, ABYSS_Events.PriorityEvents, true)
					end
				end,
			},
			{
				Name = "Amplified Full Mesh Degradation Tampering",
				Name2 = "放 大 满 的 网 格 退 化 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 2, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:MeshZSNINFOff(inst, 2, ABYSS_Events.PriorityEvents, true)
					end
				end,
			},
			{
				Name = "Amplified Forced Full Mesh Degradation Tampering",
				Name2 = "放 大 被 迫 满 的 网 格 退 化 篡 改",
				LoopSTRENGTH = 2,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:MeshZSNINFOff(inst, 3, ABYSS_Events.PriorityEvents, true)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:MeshZSNINFOff(inst, 3, ABYSS_Events.PriorityEvents, true)
					end
				end,
			},
			{
				Name = "Amplified Mesh ID Degradation Tampering",
				Name2 = "放 大 的 网 格 部 分 退 化 ID 为 空 篡 改",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:ApplyEmptyMesh(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:ApplyEmptyMesh(inst, 2, ABYSS_Events.PriorityEvents)
					end
				end,
			},
			{
				Name = "Amplified Forced Mesh ID Degradation Tampering",
				Name2 = "放 大 被 迫 的 网 格 部 分 退 化 ID 为 空 篡 改",
				LoopSTRENGTH = 2,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:ApplyEmptyMesh(inst, 3, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:ApplyEmptyMesh(inst, 3, ABYSS_Events.PriorityEvents)
					end
				end,
			},
			{
				Name = "Amplified Void Tampering Throw",
				Name2 = "放 大 的 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:Void(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:Void(inst, 2, ABYSS_Events.PriorityEvents)
					end
				end,
			},
			{
				Name = "Amplified Combined Void Tampering Throw",
				Name2 = "强 化 组 合 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_IF_Model:Void(inst, 2, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("Model") then
						KKR_IF_Model:Void(inst, 2, ABYSS_Events.PriorityEvents)
					end
				end,
			},
			{
				Name = "Amplified Forced Void Tampering Throw",
				Name2 = "放 大 被 迫 的 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 2,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_IF_BasePart:Void(inst, 3, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
						KKR_IF_BasePart:Void(inst, 3, ABYSS_Events.PriorityEvents)
					end
				end,
			},
			{
				Name = "Amplified Forced Combined Void Tampering Throw",
				Name2 = "放 大 强 制 组 合 虚 空 篡 改 投 掷",
				LoopSTRENGTH = 2,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if inst:IsA("Model") then
								KKR_IF_Model:Void(inst, 3, ABYSS_Events.PriorityEvents)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if inst:IsA("Model") then
						KKR_IF_Model:Void(inst, 3, ABYSS_Events.PriorityEvents)
					end
				end,
			},
		}
	},
	{ -- 6
		LayerName = "VI",
		LayerColor = Color3.new(1, 0, 0),
		LayerVocal = "6",
		LayerTheme = "THEME2",
		LayerAttacks = {
			{
				Name = "HYPERDeath",
				Name2 = "宇 宙 死 亡",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								KKR_MF:Destroy(inst, 2)
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						KKR_MF:Destroy(inst, 2)
					end)
				end,
			},
			{
				Name = "HYPER F-Degradation",
				Name2 = "宇 宙 f 退 化",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
									KKR_IF_BasePart:VPFDerender(inst, 3, ABYSS_Events.PriorityEvents)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
							KKR_IF_BasePart:VPFDerender(inst, 3, ABYSS_Events.PriorityEvents)
						end
					end)
				end,
			},
			{
				Name = "HYPERDegradation",
				Name2 = "宇 宙 降 解",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("BasePart") and not inst:IsA("Terrain") then
									KKR_IF_BasePart:MeshZSNINFOff(inst, 4, ABYSS_Events.PriorityEvents, false)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("BasePart") and not inst:IsA("Terrain") then
							KKR_IF_BasePart:MeshZSNINFOff(inst, 4, ABYSS_Events.PriorityEvents, false)
						end
					end)
				end,
			},
			{
				Name = "HYPER E-Degradation",
				Name2 = "宇 宙 E 退 化",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("BasePart") and not inst:IsA("Terrain") and not inst:FindFirstChildWhichIsA("DataModelMesh") then
									KKR_IF_BasePart:MeshZSNINFOff(inst, 4, ABYSS_Events.PriorityEvents, true)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("BasePart") and not inst:IsA("Terrain") and not inst:FindFirstChildWhichIsA("DataModelMesh") then
							KKR_IF_BasePart:MeshZSNINFOff(inst, 4, ABYSS_Events.PriorityEvents, true)
						end
					end)
				end,
			},
			{
				Name = "Full HYPERDegradation",
				Name2 = "满 的 宇 宙 降 解",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("BasePart") and not inst:IsA("Terrain") then
									KKR_IF_BasePart:MeshZSNINFOff(inst, 4, ABYSS_Events.PriorityEvents, true)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("BasePart") and not inst:IsA("Terrain") then
							KKR_IF_BasePart:MeshZSNINFOff(inst, 4, ABYSS_Events.PriorityEvents, true)
						end
					end)
				end,
			},
			{
				Name = "ID HYPERDegradation",
				Name2 = "宇 宙 的 ID 降 解",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("MeshPart") then
									KKR_IF_BasePart:ApplyEmptyMesh(inst, 4, ABYSS_Events.PriorityEvents)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("MeshPart") then
							KKR_IF_BasePart:ApplyEmptyMesh(inst, 4, ABYSS_Events.PriorityEvents)
						end
					end)
				end,
			},
			{
				Name = "HYPERVoid",
				Name2 = "宇 宙 深 渊",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
									KKR_IF_BasePart:Void(inst, 4, ABYSS_Events.PriorityEvents)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
							KKR_IF_BasePart:Void(inst, 4, ABYSS_Events.PriorityEvents)
						end
					end)
				end,
			},
			{
				Name = "Combined HYPERVoid",
				Name2 = "结 合 宇 宙 深 渊",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()

					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if inst:IsA("Model") then
									KKR_IF_Model:Void(inst, 4, ABYSS_Events.PriorityEvents)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if inst:IsA("Model") then
							KKR_IF_Model:Void(inst, 4, ABYSS_Events.PriorityEvents)
						end
					end)
				end,
			},
			{
				Name = "Esoteric Elimination",
				Name2 = "深 奥 的 perm 消 除",
				LoopSTRENGTH = 1,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if CSF:HasLockedInst(inst) then
								KKR_IF_MISC:InternalEliminate(inst)
							end
						end)
					end
				end,
			},
			{
				Name = "Amplified Esoteric Elimination",
				Name2 = "放 大 深 奥 的 perm 消 除",
				LoopSTRENGTH = 2,
				LoopAttack = function()
					for i, inst in workspace:GetDescendants() do
						pcall(function()
							if CSF:HasLockedInst(inst) then
								KKR_IF_MISC:InternalEliminate(inst)
							end
						end)
					end
				end,
				InstAttack = function(inst)
					if CSF:HasLockedInst(inst) then
						KKR_IF_MISC:InternalEliminate(inst)
					end
				end,
			},
			{
				Name = "PPE Obliteration",
				Name2 = "个 人 防 护 用 品 消 除",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()
					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if CSF:HasLockedInst(inst) then
									KKR_IF_MISC:InternalEliminate(inst, 3)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					if CSF:HasLockedInst(inst) then
						KKR_IF_MISC:InternalEliminate(inst, 3)
					end
				end,
			},
			{
				Name = "PERM Erasure",
				Name2 = "perm 删 除",
				LoopSTRENGTH = 3,
				LS3_SN = {1, 2},
				LoopAttack = function()
					local function f()
						for i, inst in workspace:GetDescendants() do
							pcall(function()
								if CSF:HasLockedInst(inst) then
									KKR_IF_MISC:ForceVoid(inst)
								end
							end)
						end
					end

					KKR_MF:HN(f)
				end,
				InstAttack = function(inst)
					KKR_MF:HN(function()
						if CSF:HasLockedInst(inst) then
							KKR_IF_MISC:ForceVoid(inst)
						end
					end)
				end,
			},
		}
	},
	{ -- 7
		LayerName = "VII",
		LayerColor = "RAINBOW",
		LayerVocal = "7",
		LayerTheme = "THEME2",
		LayerAttacks = {
			{
				Name = "摧 け る",
				Name2 = "摧 け る",
				Duration = 10,
				LoopSTRENGTH = 3,
				LoopAttack = function()
					KKR_MF:HN(function()
						KKR_MF:Descript()
						local desc = workspace:GetDescendants()
						for i = #desc, 1, -1 do
							pcall(function()
								local inst = desc[i]
								local DEADLYTARGET = CSF:HasLockedInst(inst)
								if DEADLYTARGET == true then
									KKR_IF_MISC:ForceVoid(inst)
									for i, ch in CSF:GetLockedInstances(inst) do
										KKR_IF_MISC:LockVoid(ch)
									end
								end
								if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
									KKR_MF:Execute(inst, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
								elseif DEADLYTARGET == true then
									KKR_MF:Execute(inst, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
									KKR_MF:Destroy(inst, 2)
									KKR_IF_MISC:InternalEliminate(inst, 3)
								end
							end)
						end
					end)
				end,
				InstAttack = function(inst)
					--KKR_MF:SN({1}, function()
					pcall(function()
						local function collective()
							if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
								KKR_MF:Execute(inst, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
								return true
							end
						end
						local DEADLYTARGET = CSF:HasLockedInst(inst)
						if DEADLYTARGET == true then
							KKR_MF:HN(function()
								KKR_IF_MISC:ForceVoid(inst)
								for i, ch in CSF:GetLockedInstances(inst) do
									KKR_IF_MISC:LockVoid(ch)
								end
								if collective() ~= true then
									KKR_MF:Execute(inst, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
									KKR_MF:Destroy(inst, 2)
									KKR_IF_MISC:InternalEliminate(inst, 3)
								end
							end)
						else
							collective()
						end
					end)
						--[[KKR_MF:SN({1}, function()
							KKR_MF:HN(function()
								local desc = workspace:GetDescendants()
								for i = #desc, 1, -1 do
									pcall(function()
										local inst = desc[i]
										local DEADLYTARGET = CSF:HasLockedInst(inst)
										if DEADLYTARGET == true then
											KKR_IF_MISC:ForceVoid(inst)
											for i, ch in CSF:GetLockedInstances(inst) do
												KKR_IF_MISC:LockVoid(ch)
											end
										end
										if inst:IsA("BasePart") and inst:IsA("Terrain") == false then
											KKR_MF:Execute(inst, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
										elseif DEADLYTARGET == true then
											KKR_MF:Execute(inst, ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
											KKR_MF:Destroy(inst, 2)
											KKR_IF_MISC:InternalEliminate(inst, 3)
										end
									end)
								end
							end)
						end)]]
					--end)
				end,
			},
		}
	},
	{ -- 8
		LayerName = "VIII",
		LayerColor = "RAINBOW",
		LayerVocal = "8",
		LayerTheme = "THEME3",
		LayerAttacks = {
			{
				Name = "Infinite Soulabyss",
				Name2 = "主 程 序 强 制 解 体",
				Duration = 9e9,
				Start = KILLALL_Activate,
				LoopSTRENGTH = 1,
				LoopAttack = function()
					KKR_MF:Descript(ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
				end,
				End = KILLALL_Deactivate
			},
		}
	},
}

local SE_Enabled = false
local SE_Resetter = heartbeat:Connect(function()
	if SE_Enabled == false then return end
	EFFECT("ATTACK_SEReset")
end)

function RESETEVENTS()
	KKR_MF:Anima(ABYSS_Events.LoopEvents, ABYSS_Events.InstEvents, ABYSS_Events.PriorityEvents)
	ABYSS_Events = {
		LoopEvents = {},
		InstEvents = {},
		PriorityEvents = {}
	}
end

for LayerNum, LAYER in ABYSS do
	for AttackNum, ATTACK in LAYER.LayerAttacks do
		ATTACK.AttackNum = AttackNum
		ATTACK.LayerName = LAYER.LayerName
		ATTACK.Layer = LAYER
	end
end

local TOGGLE_Debounce = false
function COMMENCE_ATTACK(layerNum, attackNum, disableLayerName, disableVocal)
	local LAYER = ABYSS[layerNum]
	local ATTACK = LAYER.LayerAttacks[attackNum]

	ABYSS_CurrentLayer = LAYER
	ABYSS_CurrentAttack = ATTACK

	---
	local LayerName do
		if not disableLayerName then
			LayerName = ABYSS[layerNum].LayerName
		end
	end
	local LayerVocal do
		if not disableVocal then
			LayerVocal = attackNum == 1 and LAYER.LayerVocal or nil
		end
	end
	---

	EFFECT("DESCENSION_Release", LayerName, LayerVocal, LAYER.LayerTheme)
	EFFECT("ATTACK", (ABYSS_NameMode == 1 and ATTACK.Name) or ATTACK.Name2, LAYER.LayerColor)

	------------------------------------------------------------------------------------------------------------------------------------------
	if ATTACK.Start then
		ATTACK.Start()
	end

	if ATTACK.LoopAttack then
		ABYSS_Events.LoopEvents.LoopAttack = KKR_MF:LoopConnections(ATTACK.LoopAttack, ATTACK.LoopSTRENGTH, ATTACK.LS3_SN)
	end

	if ATTACK.InstAttack then
		local tab = {}

		local function func(inst)
			tab.InstAttack:Disconnect()
			tab.InstAttack = workspace.DescendantAdded:Connect(func)

			defer(function()
				pcall(ATTACK.InstAttack, inst)
			end)
		end

		tab.InstAttack = workspace.DescendantAdded:Connect(func)
		ABYSS_Events.InstEvents[workspace] = tab
	end
end

function DO_INTRO()
	if TOGGLE_Debounce == true then return end
	if ABYSS_Status ~= 0 then return end

	ABYSS_Status = 1
	RESETEVENTS()
	EFFECT("INTRO")

	task.spawn(error, "その 等 し お前 に させん.")
	task.wait(3)

	if ABYSS_Status == 0 then return end
	SE_Enabled = true

	-- anti-crash on player respawn
	for i, inst in workspace:GetDescendants() do
		pcall(function()
			if inst:IsA("SpawnLocation") then
				inst:Destroy()
			end
		end)
	end

	return true
end

function DESCEND(START)
	if not DO_INTRO() then return end

	for LayerNum = START or 1, #ABYSS do
		local LAYER = ABYSS[LayerNum]

		if ABYSS_Status == 0 then break end

		for AttackNum = 1, #LAYER.LayerAttacks do
			if ABYSS_Status == 0 then break end

			RESETEVENTS()
			local ATTACK = LAYER.LayerAttacks[AttackNum]

			if LayerNum ~= START or AttackNum ~= 1 then
				EFFECT("DESCENSION_Start", SETTINGS.DescendDuration)
			end
			local disableVanity = AttackNum ~= 1

			task.wait(SETTINGS.DescendDuration)
			task.spawn(COMMENCE_ATTACK, LayerNum, AttackNum, disableVanity, disableVanity)

			-- Attack duration waiting
			local t = os.clock()
			local pushback = 0 -- account for lag
			repeat
				local delta = heartbeat:Wait()
				if delta > pushback then pushback = delta end
			until os.clock() - t >= (ATTACK.Duration or SETTINGS.DefaultAttackDuration) or ABYSS_Status ~= 1

			-- Pushback waiting
			if ABYSS_Status == 1 then
				pushback = pushback * 2
				EFFECT("ATTACK", ABYSS_NameMode == 1 and ATTACK.Name or ATTACK.Name2, Color3.fromRGB(120, 120, 120))

				local t = os.clock()
				repeat heartbeat:Wait() until os.clock() - t >= pushback or ABYSS_Status ~= 1
			end

			-- bitch
			if ABYSS_Status == 0 then

				SE_Enabled = false
				if ATTACK.End then
					ATTACK.End()
				end
				ASCEND(); return

			elseif ABYSS_Status == 2 then
				EFFECT("KO", LAYER.LayerName)
				task.spawn(error, "The New Soul")

				local t = os.clock()
				repeat heartbeat:Wait() until os.clock() - t >= 15 or ABYSS_Status ~= 2
				SE_Enabled = false

				if ABYSS_Status ~= 2 then
					if ATTACK.End then
						ATTACK.End()
					end
					ASCEND(); return
				else
					EFFECT("KO_Update")
					repeat heartbeat:Wait() until ABYSS_Status ~= 2

					if ATTACK.End then
						ATTACK.End()
					end
					ASCEND(); return
				end
			end
		end
	end
	ASCEND()
end

function DESCEND_MANUAL(StartLayer)
	if not DO_INTRO() then return end

	local layerNum = StartLayer or 1
	local attackNum = 1
	local hasChangedLayer = true

	local LAYER = ABYSS[layerNum]
	local ATTACK = LAYER.LayerAttacks[attackNum]

	local function attack()
		ABYSS_CurrentLayer = ABYSS[layerNum]
		ABYSS_CurrentAttack = ABYSS_CurrentLayer.LayerAttacks[attackNum]

		LAYER = ABYSS_CurrentLayer
		ATTACK = ABYSS_CurrentAttack

		RESETEVENTS()
		KILLALL_Deactivate()
		RESETEVENTS()
		COMMENCE_ATTACK(layerNum, attackNum, not hasChangedLayer, not hasChangedLayer)
	end
	task.wait(SETTINGS.DescendDuration)
	task.spawn(attack)


	RemoteRequests.Forward = function()
		local shouldAttack = false
		local lastLayer = ABYSS[#ABYSS]

		if layerNum < #ABYSS then
			-- if not on last layer feel free to increment
			shouldAttack = true
			hasChangedLayer = false
			attackNum += 1
		else
			-- when on last layer, check attackNum
			-- to make sure it's not the last attack
			if attackNum < #lastLayer.LayerAttacks then
				shouldAttack = true
				hasChangedLayer = false
				attackNum += 1
			end
		end

		if attackNum > #ABYSS[layerNum].LayerAttacks then
			-- advanced into the next layer
			hasChangedLayer = true
			layerNum = math.clamp(layerNum + 1, 1, #ABYSS)
			attackNum = 1
		end

		if shouldAttack then task.spawn(attack) end
	end

	RemoteRequests.Backward = function()
		local shouldAttack = false

		if (attackNum + layerNum > 2) then
			-- only decrement when not on the very first attack
			hasChangedLayer = false
			shouldAttack = true
			attackNum -= 1
		end
		if attackNum == 0 then
			-- advanced into the previous layer
			hasChangedLayer = true
			layerNum = math.clamp(layerNum - 1, 1, #ABYSS)
			attackNum = #ABYSS[layerNum].LayerAttacks
		end

		if shouldAttack then task.spawn(attack) end
	end

	local function StopManualControl()
		RemoteRequests.Forward = nil
		RemoteRequests.Backward = nil
	end

	local conn; conn = heartbeat:Connect(function()

		if ABYSS_Status ~= 1 then
			conn:Disconnect()
			StopManualControl()
		end

		-- bitch
		if ABYSS_Status == 0 then
			SE_Enabled = false
			if ATTACK.End then
				ATTACK.End()
			end
			ASCEND(); return

		elseif ABYSS_Status == 2 then
			EFFECT("KO", LAYER.LayerName)
			task.spawn(error, "The New Soul")

			local t = os.clock()
			repeat heartbeat:Wait() until os.clock() - t >= 15 or ABYSS_Status ~= 2
			SE_Enabled = false

			if ABYSS_Status ~= 2 then
				if ATTACK.End then
					ATTACK.End()
				end
				ASCEND(); return
			else
				EFFECT("KO_Update")
				repeat heartbeat:Wait() until ABYSS_Status ~= 2

				if ATTACK.End then
					ATTACK.End()
				end
				ASCEND(); return
			end
		end

	end)
end

function KO()
	ABYSS_Status = 2
end

function ASCEND()
	if TOGGLE_Debounce == true then return end
	TOGGLE_Debounce = true

	RESETEVENTS()
	ABYSS_Status = 0
	ABYSS_CurrentAttack = nil
	ABYSS_CurrentLayer = nil

	KILLALL_Deactivate()
	EFFECT("ASCENSION")

	task.spawn(error, "くだらん。")
	task.wait(1.5)

	TOGGLE_Debounce = false
end
function NAMESWITCH()
	if ABYSS_Status == 0 or ABYSS_CurrentAttack == nil then return end
	if ABYSS_NameMode == 1 then ABYSS_NameMode = 2 else ABYSS_NameMode = 1 end

	local Name; 
	if ABYSS_NameMode == 1 then 
		Name = ABYSS_CurrentAttack["Name"] 
	else 
		Name = ABYSS_CurrentAttack["Name2"] 
	end

	EFFECT("ATTACK", Name, ABYSS_CurrentLayer.LayerColor)
end
RemoteRequests.KO = KO
RemoteRequests.ASCENSION = ASCEND
RemoteRequests.NAMESWITCH = NAMESWITCH
RemoteRequests.DESCEND = function(mode, layer)
	if mode == "AUTO" then
		DESCEND(layer)
	elseif mode == "MANUAL" then
		DESCEND_MANUAL(layer)
	end
end

print("> [ISA] Layers loaded. \n] -")



--[[ ----------------------------------

	-- EOTW SPECIAL INTERACTION --

---------------------------------- ]]--
print("- [\n> [ISA] Loading interactions...")

-- ah yes ""interaction""
local EOTWDetector
EOTWDetector = heartbeat:Connect(function()
	if ABYSS_Status == 0 or _G.EOTW ~= true then return end
	EOTWDetector:Disconnect()
	SE_Enabled = false

	task.spawn(error, "oh shit")

	local FILTERED_ABYSS = {}
	for _, layer in ABYSS do
		local t = {
			LayerName = layer.LayerName,
			LayerColor = layer.LayerColor,
			LayerAttacks = {}
		}

		for _, attack in layer.LayerAttacks do
			table.insert(t.LayerAttacks, {
				Name = attack.Name,
				Name2 = attack.Name2
			})
		end

		table.insert(FILTERED_ABYSS, t)
	end

	EFFECT("huh", FILTERED_ABYSS)

	DIE.Parent = reps
	task.delay(2, function()
		DIE:ClearAllChildren()
	end)
end)

print("> [ISA] interactions loaded. \n] -")




------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------



--[[ ----------------------------------

			-- COMMANDS --

---------------------------------- ]]--
print("- [\n> [ISA] Loading commands...")


local CommandPrefix = "`yomi`"
local CommandSep = "`"
local Commands = {}
local function CommandFunc(msg)
	if msg:sub(1, 3) == "/e " then
		msg = msg:sub(4)
	end

	if msg:sub(1, #CommandPrefix) == CommandPrefix then
		local args = msg:sub(#CommandPrefix + 1, #msg):split(CommandSep)
		local CommandType = table.remove(args, 1)
		if Commands[CommandType] then
			Commands[CommandType](unpack(args))
		end
	end
end
local Chatted_COMMAND = plr.Chatted:Connect(CommandFunc)



---------------- COMMANDS ----------------
Commands.Descend = function(num)
	local num = tonumber(num)
	if num == nil or num < 1 or num > #ABYSS then num = 1 end
	DESCEND(num)
end
Commands.Ascend = ASCEND
Commands.ko = KO
Commands.P2 = function()
	KILLALL_Clear()
	KILLALL_Connect()
end
Commands.setting = function(settingName, value)
	local realValue = tonumber(value)

	if SETTINGS[settingName] and typeof(realValue) == "number" and realValue >= 0.05 then
		SETTINGS[settingName] = realValue
	end
end
Commands.clear = function()
	if ABYSS_Status == 0 then return end

	for _, v in workspace:GetChildren() do
		pcall(function()
			pcall(game.Destroy, v) -- hyper pcall protection!!
		end)
	end

	for _, v in workspace.Terrain:GetChildren() do
		pcall(function()
			pcall(game.Destroy, v)
		end)
	end

	KKR_MF:HN(function()
		pcall(function()
			workspace:ClearAllChildren()
		end)
		pcall(function()
			workspace.Terrain:ClearAllChildren()
		end)
	end)
end

print("> [ISA] Commands loaded. \n] -")



--[[ ----------------------------------

		-- LOCALSCRIPTS --

---------------------------------- ]]--
print("- [\n> [ISA] Initializing localscripts...")


OwnerLSValues.RemoteName.Value = RemoteName
RepLSValues.RemoteName.Value = RemoteName

-- LOCALSCRIPT SETUP
local SE_Toggled = true

local Runner = LOCALSCRIPTS.Runner

local function LocalScriptSetup(localscript, playergui)
	local newmodule = localscript:Clone()
	local newrunner = Runner:Clone()

	newmodule.Parent = newrunner
	newrunner.Name = CSF:RandomString()
	newrunner.Parent = playergui


	newrunner:Destroy()
	Remote:FireClient(playergui.Parent, "TOGGLE_SYSTEM_ERROR", SE_Toggled)
end

RemoteRequests.TOGGLE_SYSTEM_ERROR = function()
	SE_Toggled = not SE_Toggled
	Remote:FireAllClients("TOGGLE_SYSTEM_ERROR", SE_Toggled)
end


-- LocalScript Insertion
pcall(LocalScriptSetup, OwnerLS, plr:WaitForChild("PlayerGui"))
for i, player in players:GetPlayers() do
	pcall(LocalScriptSetup, RepLS, player:WaitForChild("PlayerGui"))
end

print("> [ISA] Localscripts loaded. \n] -")


--[[ ----------------------------------

			-- FINAL --

---------------------------------- ]]--
print("- [\n> [ISA] Final Script Setup...")


-- PlayerAdded Detection
local PlayerAdded = players.PlayerAdded:Connect(function(player)
	local playergui = player:WaitForChild("PlayerGui")

	task.wait(3)
	pcall(LocalScriptSetup, RepLS, playergui)

	if ABYSS_Status ~= 0 then
		Remote:FireClient(player, "EFFECT", "INFINITE_SOULABYSS")
	end

	if player.UserId == userid then
		plr = player

		Chatted_COMMAND = plr.Chatted:Connect(CommandFunc)
		pcall(LocalScriptSetup, OwnerLS, playergui)
	end
end)

local function StopScript()
	Remote:FireAllClients("STOPSCRIPT")
	RemoteCheck:Disconnect()

	for i, part in RemoteBlackmail do
		pcall(function()
			part:Destroy()
		end)
	end
	pcall(function()
		deb:AddItem(Remote, 30)
	end)

	Chatted_COMMAND:Disconnect()
	PlayerAdded:Disconnect()

	ASCEND()
	KKR_MF:StopAll()
	KILLALL_Clear()
	SE_Resetter:Disconnect()
	EOTWDetector:Disconnect()

	task.wait(1)
	plr:LoadCharacter()
	script:Destroy()
end
Commands.stopscript = StopScript
RemoteRequests.STOPSCRIPT = StopScript



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

task.delay(0.75, function()
	task.spawn(error, "The prison of all souls.")
end)

print("> [ISA] Infinite Soulabyss is ready. \n]")
print("\n\n\n\n[[ Abode of the Shadow Fiend Nevermore. ]]")
print("> [ISA] <<ACCESS GRANTED>> <"..plr.Name..">")
print("-------------------------------------------------------------------- ]]--")
