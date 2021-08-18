_G.Loader = true
if _G.Loader == true then
    local vars = {}
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    --------------func and toggles------------
    local name = game.Players.LocalPlayer.Name
    vars.plr = game.Players[name]
    local LPlayerIID
    for i, v in pairs(game:GetService("Workspace").Islands:GetChildren()) do
        if v:IsA("Model") then
            for a, b in pairs(v:GetChildren()) do
                if b.Name == "IslandId" and b.Parent:FindFirstChild("Owners") then
                    if b.Parent["Owners"]:FindFirstChild(vars.plr.UserId) then
                        LPlayerIID = b.Value
                        wait()
                    end
                end
            end
        end
    end
    local MPlayerIID
    for i, v in pairs(game:GetService("Workspace").Islands:GetChildren()) do
        if v:IsA("Model") then
            for a, b in pairs(v:GetChildren()) do
                if b.Name == "IslandId" and b.Parent:FindFirstChild("Owners") then
                    if b.Parent["Owners"]:FindFirstChild(game.Players.LocalPlayer.UserId) then
                        MPlayerIID = b.Value
                        wait()
                    end
                end
            end
        end
    end
    local Harvest = game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST
    pcall(function()
    local Blocks = workspace.Islands[(LPlayerIID) .. "-island"].Blocks
    end)
    local PlaceBlock = game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    local trip = {};
    local croptable = {};
    local berryTable = {};
    local berrytrip = {};
    local normTable = {};
    _G.carrSickle = false;
    _G.WheatSickle = false;
    _G.skorpFarm = false;
    _G.slime = false;
    _G.coldrop = false;
    _G.fly = false;
    _G.pirFish = false;
    _G.wildcrop = false;
    _G.filter = false;
    _G.Nearkiwi = false;
    _G.Ora = false;
    _G.crab = false;
    _G.bandit = false;
    _G.Wiz = false;
    _G.tpOrbs = false;
    _G.hideOrbs = false;
    _G.spir = false;
    _G.spirquest = false;
    _G.desquest = false;
    _G.pifiquest = false;
    _G.minerquest = false;
    _G.slayquest =false;
    _G.botquest = false;
    _G.craftcrate = false;
    _G.drawitem = false;
    _G.itemadd = false;
    _G.addmoney = false;
    _G.dropit = false;
    _G.draw = false;
    _G.refill = false;
    _G.Buff = false;
    _G.Junf = false;
    _G.Or = false;
    _G.Auto = false;
    _G.Replace = false;
    _G.water = false;
    _G.Nearcoco = false;
    _G.Nearislkiwi = false;
    _G.Fish = false;
    _G.desFish = false;
    _G.spirFish = false;
    _G.RemoveOrbs = false;
    _G.Auttot = false;
    _G.AutOretot = false;
    _G.Junk = false;
    _G.Flower = false;
    _G.NonFlower = false;
    _G.selFlower = false;
    _G.selcolFlower = false;
    _G.NormFarm = false;
    _G.WaterSoil = false;
    _G.NearFlower = false;
    _G.collector = false;
    _G.melon = false;
    _G.radish = false;
    _G.pumpkin = false;
    local normcrp;
    local Players = game:GetService("Players");
    local LocalPlayer = Players.LocalPlayer;
    local runservice = game:GetService("RunService");
    local noclip = false;
    local function Message(text, color)
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = text,
                Color = color,
            })
    end
    
    if game.CoreGui:FindFirstChild("FluxLib") then
        game.CoreGui.FluxLib:Destroy()
    end
    local Library = loadstring(game:HttpGet"https://raw.githubusercontent.com/WereWolf61/WereWolf61/main/scripts/ui.lua")()
    
    local currCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(66.7772903, 44.7380981, -630.603699, -0.246099457, 1.52061972e-08, -0.969244599, -4.56556499e-08, 1, 2.72810681e-08, 0.969244599, 5.09653475e-08, -0.246099457)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(696.500122, 194.185486, -217.163757, -0.592438221, 0, 0.805615902, 0, 1, 0, -0.805615902, 0, -0.592438221)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1185.95081, 377.161377, 105.369232, 0.959500372, -0, -0.281707346, 0, 1, -0, 0.281707346, 0, 0.959500372)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1494.62354, 334.550079, -698.885864, 0.599808455, -0, -0.800143659, 0, 1, -0, 0.800143659, 0, 0.599808455)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1023.22955, 291.582489, -1741.5542, 0.72341758, 0, 0.690410733, 0, 1, 0, -0.690410733, 0, 0.72341758)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2466.10913, 241.678543, 881.17688, 0.94174993, 9.36039584e-08, 0.336313933, -1.20949451e-07, 1, 6.03608186e-08, -0.336313933, -9.75217844e-08, 0.94174993)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.328289, 289.020081, 857.579468, -2.69412994e-05, -0.0232832469, 0.999728978, 0.101991445, 0.994515538, 0.0231645703, -0.994785368, 0.101964414, 0.00234794617)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currCframe
    wait()
    --///inventory\\\--
--> Swords <--
local swords = {
    "rageblade",
    "captainsRapier",
    "obsidianGreatsword",
    "cutlass",
    "diamondSword2",
    "diamondHammer",
    "spikeCactus",
    "gildedSteelHammer",
    "swordPrismarine",
    "axeKong",
    "ironWarAxe",
    "swordWood"
};

--> Pickaxes <--
local Pickaxes = {
    "diamondPickaxe",
    "gildedSteelPickaxe",
    "ironPickaxe",
    "stonePickaxe",
    "woodPickaxe"
};

--> Axes <--
local Axes = {
    "diamondAxe",
    "gildedSteelAxe",
    "ironAxe",
    "stoneAxe",
    "woodAxe"
};
---------
---> Equip Best Item Function <---
local Player = game.Players.LocalPlayer
function bestEquip(typ)
    if typ == "Sword" then
        for ind, v in pairs(swords) do
            if Player.Character:FindFirstChildOfClass("Tool") then
                if Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("sword") or Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("rageblade") then
                    break
                end
            end
            if Player.Backpack:FindFirstChild(v) then
                if Player.Backpack[v]:FindFirstChild("sword") then
                    Player.Character.Humanoid:EquipTool(Player.Backpack[v])
                    break
                elseif Player.Backpack[v]:FindFirstChild("rageblade") then
                    if Player.Character:FindFirstChildOfClass("Tool") then
                        if Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("rageblade") then
                            return
                        end
                    end
                    Player.Character.Humanoid:EquipTool(Player.Backpack[v])
                    break
                end
            end
        end
    elseif typ == "Axe" then
        for ind, v in pairs(Axes) do
            if Player.Character:FindFirstChildOfClass("Tool") then
                if Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("axe") then
                    return
                end
            end
            if Player.Backpack:FindFirstChild(v) then
                if Player.Backpack[v]:FindFirstChild("axe") then
                    if Player.Character:FindFirstChildOfClass("Tool") then
                        if Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("axe") then
                            return
                        end
                    end
                    Player.Character.Humanoid:EquipTool(Player.Backpack[v])
                    break
                end
            end
        end
    elseif typ == "Pick" then
        for ind, v in pairs(Pickaxes) do
            if Player.Character:FindFirstChildOfClass("Tool") then
                if Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("axe") then
                    return
                end
            end
            if Player.Backpack:FindFirstChild(v) then
                if Player.Backpack[v]:FindFirstChild("axe") then
                    if Player.Character:FindFirstChildOfClass("Tool") then
                        if Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("axe") then
                            return
                        end
                    end
                    Player.Character.Humanoid:EquipTool(Player.Backpack[v])
                    break
                end
            end
        end
    end
end
---------------
    --#craft crate--
    local function crate()
        if _G.craftcrate  == true then
            _G.grr = game.RunService.Stepped:Connect(function()
            local vars = {}
            vars.plr = game.Players.LocalPlayer
            for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name == "cratePackerIndustrial" then
            for _,r in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if r.Name == "chestMediumIndustrial" and (r.Position - v.Position).magnitude <= 15 then
                    if r.Direction.Value == 0 and #r.Contents:GetChildren() == 12 then
            local args = {
                [1] = {
                    ["chest"] = r,
                    ["direction"] = 1
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_SET_DIRECTION:InvokeServer(unpack(args))
            end
            if  #v.Contents:GetChildren() ~= 12 then
            local args = {
                [1] = {
                    ["chest"] = r,
                    ["player_tracking_category"] = "join_from_web",
                    ["amount"] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Amount.Value,
                    ["tool"] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"),
                    ["action"] = "deposit"
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_TRANSACTION:InvokeServer(unpack(args))
            end
            end
            end
                    end
                end
            
            end)
            elseif _G.craftcrate == false then
                _G.grr:Disconnect()
            end
        end
    --#vending withdraw--
    function drawl()
    while game.RunService.Stepped:wait() and _G.draw do
            for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name == "vendingMachine" and v.CoinBalance.Value > 0 then
                    local args = {
                [1] = {
                    ["player_tracking_category"] = "join_from_web",
                    ["vendingMachine"] = v
                }
            }

            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_WITHDRAW_COINS:InvokeServer(unpack(args))
            end
            end
        end
    end
    --# island kiwi--
    function nerislkiwi()
        local function GetNearislkiwi()
            local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local plr = LocalPlayer
        
        
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end
        
            local TargetDistance = math.huge
            local Target
        local plr = game.Players.LocalPlayer
            for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID).."-island"].Blocks:GetDescendants()) do
                if v.Name == "kiwi" and v.Parent.Parent.Parent.Name == "treekiwi" then
                      local TargetHRP = v.Parent
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
        
            return Target
        end
        
        while _G.Nearislkiwi do
            wait()
            if GetNearislkiwi() ~= nil then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetNearislkiwi().Parent.Position).magnitude <= 30 then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer({["tool"] = GetNearislkiwi()})
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  GetNearislkiwi().Parent.CFrame+Vector3.new(0,-3,0)
        end
end
    end
end
    --#coconut tree--
    function nercoco()
        local function GetNearcoco()
            local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local plr = LocalPlayer
        
        
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end
        
            local TargetDistance = math.huge
            local Target
        local plr = game.Players.LocalPlayer
            for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID).."-island"].Blocks:GetDescendants()) do
                if v.Name == "coconut" and v.Parent.Parent.Parent.Name == "treeCoconut" then
                      local TargetHRP = v.Parent
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
        
            return Target
        end
        
        while _G.Nearcoco do
            wait(.5)
            if GetNearcoco() ~= nil then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetNearcoco().Parent.Position).magnitude <= 30 then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer({["tool"] = GetNearcoco()})
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  GetNearcoco().Parent.CFrame+Vector3.new(0,-3,0)
        end
end
    end
end
    --#KIWI--
    function nerkiwi()
        local function GetNearkiwi()
            local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local plr = LocalPlayer
        
        
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end
        
            local TargetDistance = math.huge
            local Target
        local plr = game.Players.LocalPlayer
            for i,v in ipairs(game:GetService("Workspace").WildernessBlocks:GetDescendants()) do
                if v.Name == "kiwi" and v.Parent.Parent.Parent.Name == "treeKiwi" then
                      local TargetHRP = v.Parent
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
        
            return Target
        end
        
        while _G.Nearkiwi do
            wait()
            if GetNearkiwi() ~= nil then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetNearkiwi().Parent.Position).magnitude <= 30 then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer({["tool"] = GetNearkiwi()})
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  GetNearkiwi().Parent.CFrame+Vector3.new(0,-3,0)
        end
end
    end
    end
    --#item withdraw---
function drawi()
    while game.RunService.Stepped:wait() and _G.drawitem do
    for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
        if v.Name == "vendingMachine" and v.SellingContents:FindFirstChildOfClass("Tool") then
            -- Script generated by SimpleSpy - credits to exx#9394
    
    local args = {
        [1] = {
            ["player_tracking_category"] = "join_from_web",
            ["amount"] = v.SellingContents:FindFirstChildOfClass("Tool").Amount.Value,
            ["vendingMachine"] = v,
            ["tool"] = v.SellingContents:FindFirstChildOfClass("Tool"),
            ["action"] = "withdraw"
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_EDIT_TRANSACTION:InvokeServer(unpack(args))
    
    end
    end
end
end
--#refill vending-----
function refillr()
while game.RunService.Stepped:wait() and _G.refill do
for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if v.Name == "vendingMachine" and v.SellingContents:FindFirstChildOfClass("Tool")  then
       if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.SellingContents:FindFirstChildOfClass("Tool").Name) then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.SellingContents:FindFirstChildOfClass("Tool").Name).Amount.Value > 300 then
            amt = 300 - v.SellingContents:FindFirstChildOfClass("Tool").Amount.value
        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.SellingContents:FindFirstChildOfClass("Tool").Name).Amount.Value <= 300 then
            amt = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.SellingContents:FindFirstChildOfClass("Tool").Name).Amount.Value
end
local args = {
            [1] = {
                ["player_tracking_category"] = "join_from_web",
                ["amount"] = amt,
                ["vendingMachine"] = v,
                ["tool"] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.SellingContents:FindFirstChildOfClass("Tool").Name),
                ["action"] = "deposit"
            }
        }

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_EDIT_TRANSACTION:InvokeServer(unpack(args))

end
end
end
end
end
--#auto fill--
local ven = ""
local sellprice = nil
local function fillven()
    while game.RunService.Stepped:wait() and _G.itemadd do
    for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
        if v.Name == "vendingMachine" and v.SellingContents:FindFirstChild(ven) and v.SellingContents:FindFirstChild(ven).Amount.Value ~= 300 and game.Players.LocalPlayer.Backpack:FindFirstChild(ven) or v.Name == "vendingMachine" and not v.SellingContents:FindFirstChild(ven) and game.Players.LocalPlayer.Backpack:FindFirstChild(ven) then
            if not v.SellingContents:FindFirstChild(ven) then
                local args = {
        [1] = {
            ["player_tracking_category"] = "join_from_web",
            ["amount"] = 1,
            ["vendingMachine"] = v,
            ["tool"] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ven),
            ["action"] = "deposit"
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_EDIT_TRANSACTION:InvokeServer(unpack(args))
    end
    if v.SellingContents:FindFirstChild(ven) then
    local amt = nil
           if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ven) then
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ven).Amount.Value > 300 then
                amt = 300 - v.SellingContents:FindFirstChildOfClass("Tool").Amount.value
            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ven).Amount.Value <= 300 then
                amt = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ven).Amount.Value
    end
    local args = {
                [1] = {
                    ["player_tracking_category"] = "join_from_web",
                    ["amount"] = amt,
                    ["vendingMachine"] = v,
                    ["tool"] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ven),
                    ["action"] = "deposit"
                }
            }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_EDIT_TRANSACTION:InvokeServer(unpack(args))
    wait()
    v.TransactionPrice.Value = sellprice
    end
    end
    end
    end
    end
    end
--# Add money in vending--
balance = 0
function moneyadd()
    while game.RunService.Stepped:wait() and _G.addmoney do
    for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
        if v.Name == "vendingMachine" then
            if game.Players.LocalPlayer.leaderstats.Coins.Value >= balance then
           if v.CoinBalance.Value ~= balance then
            local args = {
        [1] = {
            ["player_tracking_category"] = "join_from_web",
            ["vendingMachine"] = v
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_WITHDRAW_COINS:InvokeServer(unpack(args))
    wait()
    local args = {
        [1] = {
            ["vendingMachine"] = v,
            ["player_tracking_category"] = "join_from_web",
            ["amount"] = balance
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_VENDING_MACHINE_DEPOSIT_COINS:InvokeServer(unpack(args))
    end
    end
    end
    end
    end
end
    --///Flowers\\\--
    --#Near FLower--
    function nerflow()
        local function GetNearFlower()
            local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local plr = vars.plr
        
        
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end
        
            local TargetDistance = math.huge
            local Target
        local plr = vars.plr
            for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name:match("flower") then
                      local TargetHRP = v
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
        
            return Target
        end
        
        while _G.NearFlower do
            wait()
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetNearFlower().Position).magnitude <= 15 then
    local args = {
        [1] = {
            ["flower"] = GetNearFlower()
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.client_request_1:InvokeServer(unpack(args))
    
    end
    end
    end
    ------------
    --#watering--
    function FertFlower()
        local function GetFlower()
            local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local plr = vars.plr
        
        
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end
        
            local TargetDistance = math.huge
            local Target
        local plr = vars.plr
            for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name:match("Fertile") and v.Watered.Value == false then
                      local TargetHRP = v
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
        
            return Target
        end
        while _G.Flower do
            wait()
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetFlower().Position).magnitude <= 10 then
           
        local args = {
            [1] = {
                ["block"] = GetFlower()
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_WATER_BLOCK:InvokeServer(unpack(args))
        
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetFlower().CFrame
            
        end
        
        end
       end
    --#Collect non fert--
    function nonfert()
        local function GetNonFlower()
                local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local plr = vars.plr
            
            
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                if not (Character or HumanoidRootPart) then return end
            
                local TargetDistance = math.huge
                local Target
            local plr = vars.plr
                for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                    if v.Name:match("flower") and not v.Name:match("Fertile") then
                          local TargetHRP = v
                        local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                        if mag < TargetDistance then
                            TargetDistance = mag
                            Target = v
                        end
                    end
                end
            
                return Target
            end
            while _G.NonFlower do
                wait()
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetNonFlower().Position).magnitude <= 10 then
        local args = {
            [1] = {
                ["flower"] = GetNonFlower()
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.client_request_1:InvokeServer(unpack(args))
        
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetNonFlower().CFrame
                
            end
            end
        end
        ---#Selected Flower Collect-----
        
    --///Misc\\\--
    --#collect dropped item--
    function collectdropped()
        while _G.coldrop do
            wait()
            for i,v in pairs(game:GetService("Workspace").Islands:GetDescendants()) do
                if v.ClassName == "Tool" and v.Parent.Name:match("Drops") then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HandleDisabled.Position).Magnitude <= 30 then
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer({["tool"] = v})
                    end
                end
            end
        end
        end
    --#drop items--
    local function dropequip()
        if _G.dropit == true then
        _G.dropitem = game.RunService.Stepped:Connect(function()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Tool" then
        local args = {
            [1] = {
                ["player_tracking_category"] = "join_from_web",
                ["tool"] = v,
                ["amount"] = 1
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_DROP_TOOL_REQUEST:InvokeServer(unpack(args))
        end
        end
        end)
        else
            _G.dropitem:Disconnect()
        end
        end
    --#fill chest--
    function bro()
        local function GetNearplacedchest()
                    local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer
                local plr = vars.plr
                
                
                    local Character = LocalPlayer.Character
                    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                    if not (Character or HumanoidRootPart) then return end
                
                    local TargetDistance = math.huge
                    local Target
                local plr = vars.plr
                    for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                        if v.Name == "chestMedium" and #v.Contents:GetChildren() ~= 12 then
                              local TargetHRP = v
                            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                            if mag < TargetDistance then
                                TargetDistance = mag
                                Target = v
                            end
                        end
                    end
                
                    return Target
                end
                if _G.filter == true then
                    _G.donald = game.RunService.Stepped:Connect(function()
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetNearplacedchest().Position).magnitude <= 10 then
        local args = {
            [1] = {
                ["chest"] = GetNearplacedchest(),
                ["player_tracking_category"] = "join_from_web",
                ["amount"] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Amount.Value,
                ["tool"] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"),
                ["action"] = "deposit"
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_TRANSACTION:InvokeServer(unpack(args))
        end
        end
        end)
        elseif _G.filter == false then
            _G.donald:Disconnect()
        end
        end
	--#Chesk Collect AUra---
function chestcollect()
if _G.collector == true then
    _G.feast = game.RunService.Stepped:Connect(function()
for i,v in pairs(game.workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if  v.Name == "chestMediumIndustrialIO" and v.Contents:FindFirstChildOfClass("Tool") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 50 then
local args = {
    [1] = {
        ["chest"] = v,
        ["player_tracking_category"] = "join_from_web",
        ["amount"] = v.Contents:FindFirstChildOfClass("Tool").Amount.Value,
        ["tool"] = v.Contents:FindFirstChildOfClass("Tool"),
        ["action"] = "withdraw"
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_TRANSACTION:InvokeServer(unpack(args))

    end
end
for i,v in pairs(game.workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if  v.Name == "chestMedium" and v.Contents:FindFirstChildOfClass("Tool") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 50 then
local args = {
    [1] = {
        ["chest"] = v,
        ["player_tracking_category"] = "join_from_web",
        ["amount"] = v.Contents:FindFirstChildOfClass("Tool").Amount.Value,
        ["tool"] = v.Contents:FindFirstChildOfClass("Tool"),
        ["action"] = "withdraw"
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_TRANSACTION:InvokeServer(unpack(args))

    end
end
for i,v in pairs(game.workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if  v.Name == "chestMediumIndustrial" and v.Contents:FindFirstChildOfClass("Tool") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 50 then
local args = {
    [1] = {
        ["chest"] = v,
        ["player_tracking_category"] = "join_from_web",
        ["amount"] = v.Contents:FindFirstChildOfClass("Tool").Amount.Value,
        ["tool"] = v.Contents:FindFirstChildOfClass("Tool"),
        ["action"] = "withdraw"
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_TRANSACTION:InvokeServer(unpack(args))

    end
end
for i,v in pairs(game.workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if  v.Name == "chest" and v.Contents:FindFirstChildOfClass("Tool") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 50 then
local args = {
    [1] = {
        ["chest"] = v,
        ["player_tracking_category"] = "join_from_web",
        ["amount"] = v.Contents:FindFirstChildOfClass("Tool").Amount.Value,
        ["tool"] = v.Contents:FindFirstChildOfClass("Tool"),
        ["action"] = "withdraw"
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CHEST_TRANSACTION:InvokeServer(unpack(args))

    end
end
end)
elseif _G.collector == false then
    _G.feast:Disconnect()
end
end
    ---#junk---
    function junk()
        local function GetJunk()
            local LocalPlayer = game.Players.LocalPlayer
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                if not (Character or HumanoidRootPart) then return end
            
                local TargetDistance = math.huge
                local Target
                local plr = vars.plr
                for i,v in ipairs(game.workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                    if v.Name:match("naturalRock1") or v.Name:match("tall") then
                        local TargetHRP = v
                        local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                        if mag < TargetDistance then
                            TargetDistance = mag
                            Target = v
                        end
                    end
                end
            
                return Target
        end
        while _G.Junk do
            wait()
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetJunk().Position).magnitude <= 10 then
            local player = game.Players.LocalPlayer
            if game.Players.LocalPlayer.Backpack:FindFirstChild("diamondPickaxe") then
                player.Character.Humanoid:EquipTool(player.Backpack.diamondPickaxe)
            elseif player.Backpack:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") then
                player.Character.Humanoid:EquipTool(player.Backpack.gildedSteelPickaxe)
            elseif player.Backpack:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") then
                player.Character.Humanoid:EquipTool(player.Backpack.ironPickaxe)
            elseif player.Backpack:FindFirstChild("stonePickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") then
                player.Character.Humanoid:EquipTool(player.Backpack.stonePickaxe)
                elseif player.Backpack:FindFirstChild("woodPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("stonePickaxe") then
                player.Character.Humanoid:EquipTool(player.Backpack.woodPickaxe)
                end
            local breakRem = game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"]["CLIENT_BLOCK_HIT_REQUEST"]plr = game.Players.LocalPlayer
            breakRem:InvokeServer({
                                                ["block"] = GetJunk()
                                            })
                                        else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetJunk().CFrame
                                end
        end
    end
-----#junk + flower-----
function junf()
    local function GetJunf()
        local LocalPlayer = game.Players.LocalPlayer
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
            if not (Character or HumanoidRootPart) then return end
        
            local TargetDistance = math.huge
            local Target
            local plr = vars.plr
            for i,v in ipairs(game.workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name:match("naturalRock1") or v.Name:match("tall") or v.Name:match("flower") then
                    local TargetHRP = v
                    local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                    if mag < TargetDistance then
                        TargetDistance = mag
                        Target = v
                    end
                end
            end
        
            return Target
    end
    while _G.Junf do
        wait()
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetJunf().Position).magnitude <= 10 then
        local player = game.Players.LocalPlayer
        if game.Players.LocalPlayer.Backpack:FindFirstChild("diamondPickaxe") then
        player.Character.Humanoid:EquipTool(player.Backpack.diamondPickaxe)
        elseif player.Backpack:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") then
        player.Character.Humanoid:EquipTool(player.Backpack.gildedSteelPickaxe)
        elseif player.Backpack:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") then
        player.Character.Humanoid:EquipTool(player.Backpack.ironPickaxe)
        elseif player.Backpack:FindFirstChild("stonePickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") then
        player.Character.Humanoid:EquipTool(player.Backpack.stonePickaxe)
        elseif player.Backpack:FindFirstChild("woodPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("stonePickaxe") then
        player.Character.Humanoid:EquipTool(player.Backpack.woodPickaxe)
        end
        local breakRem = game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"]["CLIENT_BLOCK_HIT_REQUEST"]plr = game.Players.LocalPlayer
        breakRem:InvokeServer({
                                            ["block"] = GetJunf()
                                        })
                                    else
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetJunf().CFrame
                            end
    end
end
    ---#Totem Upgrade---
    --#crop totem--
function uptot()
while _G.Auttot do
    wait()
for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if v.Name == croptot then
        local args = {
            [1] = v,
            [2] = "totem_crop",
            [3] = "utility"
        }

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
local args = {
    [1] = v,
    [2] = "totem_crop",
    [3] = "efficiency"
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))

local args = {
    [1] = v,
    [2] = "totem_crop",
    [3] = "quality"
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))

end
end
end
end
--#Ore Totem--
function upOretot()
    while _G.AutOretot do
        wait()
    for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
        if v.Name == Oretot then
            local args = {
                [1] = v,
                [2] = "totem_rock",
                [3] = "utility"
            }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
    local args = {
        [1] = v,
        [2] = "totem_rock",
        [3] = "efficiency"
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
    
    local args = {
        [1] = v,
        [2] = "totem_rock",
        [3] = "quality"
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
    
    end
    end
    end
    end
    --///CROP FARMS\\\--
    --#Watering#--
   function WaterSoil()
    while _G.WaterSoil and wait() do
    for _,v in pairs(workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
        if v.Name == "soil" and v.Watered.Value == false then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 10 then
local args = {
    [1] = {
        ["block"] = v
    }
}
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_WATER_BLOCK:InvokeServer(unpack(args))
        end
        end
    end
end
end
    --#Sickle#--
    local RunService = game:GetService("RunService")
    RunService.Stepped:Connect(function()
        if _G.Auto == true or _G.SickleBerry == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.Auto == true then
                if not _G.Auto then return end
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    if _G.Auto == false or _G.SickleBerry == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    end
    end)
    local plr = vars.plr
    local crp = ""
    local function rorbs()
    local RunService = game:GetService("RunService")
    if _G.RemoveOrbs == true  then
    _G.trop = RunService.Stepped:Connect(function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Part" and v:FindFirstChild("VectorForce") then
            v:Destroy()
        end
    end
    end)
    elseif _G.RemoveOrbs == false then
    _G.trop:Disconnect()
    end
    end
--- hide orb--
local function horbs()
    local RunService = game:GetService("RunService")
    if _G.hideOrbs == true  then
    _G.htrop = RunService.Stepped:Connect(function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Part" and v:FindFirstChild("VectorForce") and v:FindFirstChild("gui") then
            v.gui.image.ImageTransparency = 1
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
    end)
    elseif _G.hideOrbs == false then
    _G.htrop:Disconnect()
    end
end
------------
    local function tporbs()
        local RunService = game:GetService("RunService")
        if _G.tpOrbs == true  then
        _G.tprb = RunService.Stepped:Connect(function()
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "Part" and v:FindFirstChild("VectorForce") then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
        end)
        elseif _G.tpOrbs == false then
        _G.tprb:Disconnect()
        end
        end

    local function  carSickle()
        while game.RunService.Stepped:wait() and _G.Auto do
            hrp.Size = Vector3.new(20, 20, 20)
            hrp.CanCollide = false
            hrp.Anchored = false
            local RegionPart = hrp
            local pos1 = RegionPart.Position - (RegionPart.Size / 2)
            local pos2 = RegionPart.Position + (RegionPart.Size / 2)
            local Region = Region3.new(pos1, pos2)
            croptable = nil
            croptable = {}
            trip = nil
            trip = {}
            for _, crop in pairs(game.Workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do ----vars.plt causing problem
                if crop.Name ~= "chilliPepper" and crop.Name == crp and crop.stage.Value == 3 or crop.Name == "chilliPepper" and crop.stage.Value == 4 then
                   table.insert(croptable, crop);
                end
            end
            if croptable and #croptable > 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = croptable[1].CFrame;
            end
            local partsinregion = game.Workspace:FindPartsInRegion3(Region, nil, math.huge)
            for i,v in pairs(partsinregion) do
                if v.Name == crp then
                    table.insert(trip, v)
                end
            end
            local args = {
                        [1] = "sickleDiamond",
                        [2] = trip
                    }
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwingSickle:InvokeServer(unpack(args))
            if _G.Replace == false then
                local function crap()
                    for i,v in pairs(trip) do
                        if v.ClassName == "Part" and not v:IsDescendantOf(game.Workspace.Islands[(LPlayerIID) .. "-island"].Blocks) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position) then
                            PlaceBlock:InvokeServer({
                                ["blockType"] = crp,
                                ["cframe"] = trip[1].CFrame,
                                ["player_tracking_category"] = "join_from_web",
                                ["upperSlab"] = false
                            })      
                        end
                    end
                end
                repeat game.RunService.Stepped:wait()
                    local trap = coroutine.wrap(crap)
                    trap()
                    table.remove(trip, 1)
                until #trip < 1
                wait(.1)
            end
        end
        if _G.Auto == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(1.7000000476837, 1.7999999523163, 0.9200000166893)
        end
    end
    --#wild crop#--

local function Getwildcrop()
    local LocalPlayer = game.Players.LocalPlayer
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
            if v.Name == "starfruit" or v:FindFirstChild("stage-0") then
                local TargetHRP = v
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
end
function wildcrp()
while _G.wildcrop do
    wait()
    if Getwildcrop() ~= nil then
        print(Getwildcrop().Name)
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Getwildcrop().Position).magnitude <= 10 then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer({["model"] = Getwildcrop(), ["player"] = game:GetService("Players").LocalPlayer})
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.client_request_1:InvokeServer({["flower"] = Getwildcrop()})
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Getwildcrop().CFrame
        end
    end
end
end
 --#Sickle Berry--
 local function  berSickle()
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    while game.RunService.Stepped:wait() and _G.SickleBerry do
        hrp.Size = Vector3.new(20, 20, 20)
        hrp.CanCollide = false
        hrp.Anchored = false
        local RegionPart = hrp
        local pos1 = RegionPart.Position - (RegionPart.Size / 2)
        local pos2 = RegionPart.Position + (RegionPart.Size / 2)
        local Region = Region3.new(pos1, pos2)
        local berryTable = nil
        local berryTable = {}
        local berrytrip = nil
        local berrytrip = {}
        for _, crop in pairs(game.Workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do ----vars.plt causing problem
                if crop.Name == "berryBush" and crop:FindFirstChild("stage") and crop.stage.Value == 2 then
                        table.insert(berryTable,crop);
                end
            end
        if berryTable and #berryTable > 0 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = berryTable[1].CFrame;
        end
        local partsinregion = game.Workspace:FindPartsInRegion3(Region, nil, math.huge)
        for i,v in pairs(partsinregion) do
            if v.Name == "berryBush" and v:FindFirstChild("stage") and v.stage.Value == 2 then
                table.insert(berrytrip, v)
            end
        end
        local args = {
                    [1] = "sickleDiamond",
                    [2] = berrytrip
                }
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.SwingSickle:InvokeServer(unpack(args))
    end
    if _G.SickleBerry == false then
        game.Players.LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(1.7000000476837, 1.7999999523163, 0.9200000166893)
    end
end
 
    --#Normal#--
    local function Norm()
        while _G.NormFarm do
            wait()
        repeat wait()
        normTable = nil;
        normTable = {};
        for _, crop in pairs(game.Workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do ----vars.plt causing problem
            if crop.Name == normcrp and crop.stage.Value == 3 then
                    table.insert(normTable,crop);
            end
        end
        if normTable and #normTable > 0 then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = normTable[1].CFrame; -- teleport to first object in table
          wait()
        end
        for _, v in ipairs(normTable) do
           if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 10 then
    local args = {
    [1] = {
        ["player"] = game:GetService("Players").LocalPlayer,
        ["player_tracking_category"] = "join_from_web",
        ["model"] = v
    }
}
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(unpack(args))
local args = {
    [1] = {
        ["blockType"] = v.Name,
        ["cframe"] = v.CFrame,
        ["player_tracking_category"] = "join_from_web",
        ["upperSlab"] = false
    }
}
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(unpack(args))
          end
        end
        local args = {
    [1] = {
        ["block"] = v
    }
}
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_WATER_BLOCK:InvokeServer(unpack(args))
for _,v in pairs(workspace.Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
    if v.Name == "soil" and v.Watered.Value == false then
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude <= 10 then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("wateringCan") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.wateringCan)
            end
local args = {
[1] = {
    ["block"] = v
}
}
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_WATER_BLOCK:InvokeServer(unpack(args))
    end
    end
end
        until not normTable or #normTable < 1 or _G.NormFarm == false
    end
    end
    
    -----///MOB FARMS\\\-----
    local function Fishing()
    local function GetFish()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace"):GetChildren()) do
            if  v.Name == "Fish" and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    function GetBobber()
                for i, v in pairs(workspace:GetChildren()) do
                    if v.Name == "Bobber" and v:FindFirstChild("Player") and v.Player.Value == game:GetService("Players").LocalPlayer then
                        return v
                    end
                end
                return nil
    end
    while _G.Fish do
        wait()
        if  game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRodIron") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRodIron) 
        elseif game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRod") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRod)
            end
            
        if GetBobber() == nil then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetFish().HumanoidRootPart.CFrame +Vector3.new(0,-3,0)
    wait(.2)
    local args = {
        [1] = {
            ["playerLocation"] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
            ["direction"] = GetFish().HumanoidRootPart.CFrame,
            ["strength"] = 0
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CAST_FISHING_ROD:InvokeServer(unpack(args))
    
    end
    wait(.3)
    if  GetBobber() ~= nil and GetBobber():FindFirstChild("AttachedFish") then
    local args = {
        [1] = {
            ["catchAttempt"] = true
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
    end
    if GetBobber() ~= nil and (GetBobber().Position - GetFish().HumanoidRootPart.Position).magnitude >= 3 then
        
       local args = {
        [1] = {
            ["catchAttempt"] = true
        }
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
        end
        end
        end
        --------- spirit fishing ---------
        local function SpiritFishing()
            local function GetspirFish()
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                if not (Character or HumanoidRootPart) then return end
            
                local TargetDistance = math.huge
                local Target
            
                for i,v in ipairs(game:GetService("Workspace"):GetChildren()) do
                    if  v.Name == "Fish" and v:FindFirstChild("HumanoidRootPart") and v.Pond.Value == "spirit" then
                        local TargetHRP = v.HumanoidRootPart
                        local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                        if mag < TargetDistance then
                            TargetDistance = mag
                            Target = v
                        end
                    end
                end
            
                return Target
            end
            function GetBobber()
                        for i, v in pairs(workspace:GetChildren()) do
                            if v.Name == "Bobber" and v:FindFirstChild("Player") and v.Player.Value == game:GetService("Players").LocalPlayer then
                                return v
                            end
                        end
                        return nil
            end
            while _G.spirFish do
                wait()
                pcall (function()
                if  game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRodIron") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRodIron) 
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRod") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRod)
                    end
                    
                if GetBobber() == nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetspirFish().HumanoidRootPart.CFrame +Vector3.new(0,-3,0)
            wait(.2)
            local args = {
                [1] = {
                    ["playerLocation"] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                    ["direction"] = GetspirFish().HumanoidRootPart.CFrame,
                    ["strength"] = 0
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CAST_FISHING_ROD:InvokeServer(unpack(args))
            
            end
            wait(.3)
            if  GetBobber() ~= nil and GetBobber():FindFirstChild("AttachedFish") then
            local args = {
                [1] = {
                    ["catchAttempt"] = true
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
            end
            if GetBobber() ~= nil and (GetBobber().Position - GetspirFish().HumanoidRootPart.Position).magnitude >= 3 then
                
               local args = {
                [1] = {
                    ["catchAttempt"] = true
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
                end
                end)
                end
                end
        -----------Pirate Fishing---------
        local function PirateFishing()
            local function GetPirFish()
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                if not (Character or HumanoidRootPart) then return end
            
                local TargetDistance = math.huge
                local Target
            
                for i,v in ipairs(game:GetService("Workspace"):GetChildren()) do
                    if  v.Name == "Fish" and v:FindFirstChild("HumanoidRootPart") and v.Pond.Value == "pirate" then
                        local TargetHRP = v.HumanoidRootPart
                        local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                        if mag < TargetDistance then
                            TargetDistance = mag
                            Target = v
                        end
                    end
                end
            
                return Target
            end
            function GetBobber()
                        for i, v in pairs(workspace:GetChildren()) do
                            if v.Name == "Bobber" and v:FindFirstChild("Player") and v.Player.Value == game:GetService("Players").LocalPlayer then
                                return v
                            end
                        end
                        return nil
            end
            while _G.pirFish do
                wait()
                pcall (function()
                if  game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRodIron") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRodIron) 
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRod") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRod)
                    end
                    
                if GetBobber() == nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetPirFish().HumanoidRootPart.CFrame +Vector3.new(0,-3,0)
            wait(.2)
            local args = {
                [1] = {
                    ["playerLocation"] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                    ["direction"] = GetPirFish().HumanoidRootPart.CFrame,
                    ["strength"] = 0
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CAST_FISHING_ROD:InvokeServer(unpack(args))
            
            end
            wait(.3)
            if  GetBobber() ~= nil and GetBobber():FindFirstChild("AttachedFish") then
            local args = {
                [1] = {
                    ["catchAttempt"] = true
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
            end
            if GetBobber() ~= nil and (GetBobber().Position - GetPirFish().HumanoidRootPart.Position).magnitude >= 3 then
                
               local args = {
                [1] = {
                    ["catchAttempt"] = true
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
                end
                end)
                end
                end
        ----------Desert Fishing------------
        local function DesertFishing()
            local function GetdesFish()
                local Character = LocalPlayer.Character
                local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                if not (Character or HumanoidRootPart) then return end
            
                local TargetDistance = math.huge
                local Target
            
                for i,v in ipairs(game:GetService("Workspace"):GetChildren()) do
                    if  v.Name == "Fish" and v:FindFirstChild("HumanoidRootPart") and v.Pond.Value == "desertOasis" then
                        local TargetHRP = v.HumanoidRootPart
                        local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                        if mag < TargetDistance then
                            TargetDistance = mag
                            Target = v
                        end
                    end
                end
            
                return Target
            end
            function GetBobber()
                        for i, v in pairs(workspace:GetChildren()) do
                            if v.Name == "Bobber" and v:FindFirstChild("Player") and v.Player.Value == game:GetService("Players").LocalPlayer then
                                return v
                            end
                        end
                        return nil
            end
            while _G.desFish do
                wait()
                pcall (function()
                if  game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRodIron") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRodIron) 
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("fishingRod") and not game.Players.LocalPlayer.Character:FindFirstChild("fishingRodIron") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.fishingRod)
                    end
                    
                if GetBobber() == nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetdesFish().HumanoidRootPart.CFrame +Vector3.new(0,-3,0)
            wait(.2)
            local args = {
                [1] = {
                    ["playerLocation"] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
                    ["direction"] = GetdesFish().HumanoidRootPart.CFrame,
                    ["strength"] = 0
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CAST_FISHING_ROD:InvokeServer(unpack(args))
            
            end
            wait(.3)
            if  GetBobber() ~= nil and GetBobber():FindFirstChild("AttachedFish") then
            local args = {
                [1] = {
                    ["catchAttempt"] = true
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
            end
            if GetBobber() ~= nil and (GetBobber().Position - GetdesFish().HumanoidRootPart.Position).magnitude >= 3 then
                
               local args = {
                [1] = {
                    ["catchAttempt"] = true
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PULL_FISHING_ROD:InvokeServer(unpack(args))
                end
                end)
                end
                end
                ----------------------
                --#entity--
                local entity = ""
                function entityl()
                    if _G.fly == true then
                       _G.flylol =  game.RunService.Stepped:Connect(function()
                            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                        end)
                    elseif _G.fly == false then
                        _G.flylol:Disconnect()
                        end
                    local function Getentity()
                                    local Players = game:GetService("Players")
                                local LocalPlayer = Players.LocalPlayer
                                local plr = vars.plr
                                
                                
                                    local Character = LocalPlayer.Character
                                    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                                    if not (Character or HumanoidRootPart) then return end
                                
                                    local TargetDistance = math.huge
                                    local Target
                                local plr = vars.plr
                                    for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Entities:GetChildren()) do
                                        if v.Name:match(entity) and not v:FindFirstChild("MerchantId") and v:FindFirstChild("HumanoidRootPart") then
                                              local TargetHRP = v.HumanoidRootPart
                                            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                                            if mag < TargetDistance then
                                                TargetDistance = mag
                                                Target = v
                                            end
                                        end
                                    end
                                
                                    return Target
                    end
                    while _G.fly do
                        wait()
                        if Getentity() ~= nil then
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Getentity().HumanoidRootPart.Position).magnitude <= 10 then
                                local args = {
                        [1] = {
                            ["entity"] = Getentity()
                        }
                    }
                    
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_CATCH_INSECT:InvokeServer(unpack(args))
                                else
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Getentity().HumanoidRootPart.CFrame
                        end
                    end
                    end
                    end
                    ------spirit farm-----
                    function entityspirit()
                        if _G.spir == true then
                           _G.spirlol =  game.RunService.Stepped:Connect(function()
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                            end)
                        elseif _G.spir == false then
                            _G.spirlol:Disconnect()
                            end
                        local function Getspirit()
                                        local Players = game:GetService("Players")
                                    local LocalPlayer = Players.LocalPlayer
     
                                    
                                    
                                        local Character = LocalPlayer.Character
                                        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                                        if not (Character or HumanoidRootPart) then return end
                                    
                                        local TargetDistance = math.huge
                                        local Target
                                        for i,v in ipairs(game:GetService("Workspace").WildernessIsland.Entities:GetChildren()) do
                                            if v.Name:match("spirit") and v:FindFirstChild("HumanoidRootPart") then
                                                  local TargetHRP = v.HumanoidRootPart
                                                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                                                if mag < TargetDistance then
                                                    TargetDistance = mag
                                                    Target = v
                                                end
                                            end
                                        end
                                    
                                        return Target
                        end
                        while _G.spir do
                            wait()
                            if Getspirit() ~= nil then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Getspirit().HumanoidRootPart.Position).magnitude <= 10 then
                                   game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.CLIENT_CATCH_INSECT:InvokeServer({["entity"] = Getspirit()})
                                    else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Getspirit().HumanoidRootPart.CFrame
                            end
                        else
                            game.Player.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.328289, 289.020081, 857.579468, -2.69412994e-05, -0.0232832469, 0.999728978, 0.101991445, 0.994515538, 0.0231645703, -0.994785368, 0.101964414, 0.00234794617)
                        end
                        end
                        end
                ----------------------------
    local function GetClosest()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").Entities:GetChildren()) do
            if  v.Name:match("skorp") and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    local RunService = game:GetService("RunService")
    RunService.Stepped:Connect(function()
        if _G.skorpFarm == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.skorpFarm == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.skorpFarm == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
                    if game.Players.LocalPlayer.Character:FindFirstChild("MaxHealth") then
                game.Players.LocalPlayer.Character.MaxHealth:Remove()
                    end
                bestEquip("Sword")
                            if GetClosest() ~= nil then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetClosest().HumanoidRootPart.CFrame + Vector3.new(10,0,0)
                            local args = {
                                [1] = {
                                    ["crit"] = true,
                                    ["hitUnit"] =  GetClosest()
                                }
                            }
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                        end
                            if GetClosest() == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1023.22955, 291.582489, -1741.5542, 0.72341758, 0, 0.690410733, 0, 1, 0, -0.690410733, 0, 0.72341758)
                                end
                            
    end
    end)
    
    --#Wiz#--
    local function GetWiz()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").Entities:GetChildren()) do
            if  v.Name:match("wizard") and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    RunService.Stepped:Connect(function()
        if _G.Wiz == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.Wiz == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.Wiz == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
                    if game.Players.LocalPlayer.Character:FindFirstChild("MaxHealth") then
                game.Players.LocalPlayer.Character.MaxHealth:Remove()
                    end
                    bestEquip("Sword")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetWiz().HumanoidRootPart.CFrame + Vector3.new(10,0,0)
                            local args = {
                                [1] = {
                                    ["crit"] = false,
                                    ["hitUnit"] =  GetWiz()
                                }
                            }
                            
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                            if GetWiz() == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1185.95081, 377.161377, 105.369232, 0.959500372, -0, -0.281707346, 0, 1, -0, 0.281707346, 0, 0.959500372)
                                end
    end
    end)
    
    local function GetBuff()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").Entities:GetChildren()) do
            if  v.Name == "buffalkor" and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    RunService.Stepped:Connect(function()
        if _G.Buff == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.Buff == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.Buff == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
                    if game.Players.LocalPlayer.Character:FindFirstChild("MaxHealth") then
                game.Players.LocalPlayer.Character.MaxHealth:Remove()
                    end
                    bestEquip("Sword")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetBuff().HumanoidRootPart.CFrame + Vector3.new(10,0,0)
                            local args = {
                                [1] = {
                                    ["crit"] = false,
                                    ["hitUnit"] =  GetBuff()
                                }
                            }
                            
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                            if GetBuff() == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1185.95081, 377.161377, 105.369232, 0.959500372, -0, -0.281707346, 0, 1, -0, 0.281707346, 0, 0.959500372)
                                end
    end
    end)
    
    local function GetSlime()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").WildernessIsland.Entities:GetChildren()) do
            if  v.Name:match("slime") and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    RunService.Stepped:Connect(function()
        if _G.slime == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.slime == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.slime == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
        if _G.slime == true then
                    if game.Players.LocalPlayer.Character:FindFirstChild("MaxHealth") then
                game.Players.LocalPlayer.Character.MaxHealth:Remove()
                    end
                    bestEquip("Sword")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetSlime().HumanoidRootPart.CFrame + Vector3.new(10,0,0)
                            local args = {
                                [1] = {
                                    ["crit"] = false,
                                    ["hitUnit"] =  GetSlime()
                                }
                            }
                            
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                            if GetSlime() == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(696.500122, 194.185486, -217.163757, -0.592438221, 0, 0.805615902, 0, 1, 0, -0.805615902, 0, -0.592438221)
                            end
                            
    end
    if GetSlime() == nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(696.500122, 194.185486, -217.163757, -0.592438221, 0, 0.805615902, 0, 1, 0, -0.805615902, 0, -0.592438221)
        end
    end
    end)
    -----crab----
    local function Getcrab()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").WildernessIsland.Entities:GetChildren()) do
            if  v.Name:match("Crab") and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    RunService.Stepped:Connect(function()
        if _G.crab == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.crab == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.crab == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
        if _G.crab == true then
                    if game.Players.LocalPlayer.Character:FindFirstChild("MaxHealth") then
                game.Players.LocalPlayer.Character.MaxHealth:Remove()
                    end
                    bestEquip("Sword")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Getcrab().HumanoidRootPart.CFrame + Vector3.new(10,0,0)
                            local args = {
                                [1] = {
                                    ["crit"] = false,
                                    ["hitUnit"] =  Getcrab()
                                }
                            }
                            
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                            if Getcrab() == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            end
                            
    end
    if Getcrab() == nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    end
    end)
    ------bandits------
    local function Getbandits()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").WildernessIsland.Entities:GetChildren()) do
            if  v.Name:match("skeletonPirate") and v:FindFirstChild("HumanoidRootPart") then
                local TargetHRP = v.HumanoidRootPart
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    RunService.Stepped:Connect(function()
        if _G.bandit == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.bandit == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.bandit == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
        if _G.bandit == true then
                    if game.Players.LocalPlayer.Character:FindFirstChild("MaxHealth") then
                game.Players.LocalPlayer.Character.MaxHealth:Remove()
                    end
                    bestEquip("Sword")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Getbandits().HumanoidRootPart.CFrame + Vector3.new(10,0,0)
                            local args = {
                                [1] = {
                                    ["crit"] = false,
                                    ["hitUnit"] =  Getbandits()
                                }
                            }
                            
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_SWING_SWORD:InvokeServer(unpack(args))
                            if Getbandits() == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            end
                            
    end
    if Getbandits() == nil then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
    end
    end)
    
    ----///ORE FARM\\\----
    local orefr
    local Selected
    local function GetOre()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    if Selected then 
        for i,v in ipairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
            if v.Name == orefr then
                local TargetHRP = v
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    else
        for i,v in ipairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
            if v.Name:match("Diamond")  or v.Name:match("Gold") or v.Name:match("Prismarine") or v.Name:match("rock") then
                local TargetHRP = v
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    end
    
        return Target
    end ----------------------change this and execute this whole thing written here and make changes here not other places
    function oral()
    if _G.Or == true then
     _G.stepped = RunService.Stepped:Connect(function()
        if _G.Or == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.Or == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.Or == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    local player = game.Players.LocalPlayer
if game.Players.LocalPlayer.Backpack:FindFirstChild("diamondPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.diamondPickaxe)
elseif player.Backpack:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.gildedSteelPickaxe)
elseif player.Backpack:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.ironPickaxe)
elseif player.Backpack:FindFirstChild("stonePickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.stonePickaxe)
    elseif player.Backpack:FindFirstChild("woodPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("stonePickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.woodPickaxe)
    end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetOre().CFrame + Vector3.new(0,-10,0)
    game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"]["CLIENT_BLOCK_HIT_REQUEST"]:InvokeServer({
                                            ["block"] = GetOre()})                               
    end
    end)
    elseif _G.Or == false then
    _G.stepped:Disconnect()
    end
    end
    ---#hub ore--
    local oreminer
    local function GetOremine()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
        for i,v in ipairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
            if v:FindFirstChild("RegenBlockTable") and v.RegenBlockTable.Value:match(oreminer) then
                local TargetHRP = v
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
        return Target
    end

    function oramine()
    if _G.Ora == true then
     _G.steppedora = RunService.Stepped:Connect(function()
        if _G.Ora == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.Ora == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.Ora == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    local player = game.Players.LocalPlayer
if game.Players.LocalPlayer.Backpack:FindFirstChild("diamondPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.diamondPickaxe)
elseif player.Backpack:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.gildedSteelPickaxe)
elseif player.Backpack:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.ironPickaxe)
elseif player.Backpack:FindFirstChild("stonePickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.stonePickaxe)
    elseif player.Backpack:FindFirstChild("woodPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("stonePickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.woodPickaxe)
    end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetOremine().CFrame + Vector3.new(0,-10,0)
    game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"]["CLIENT_BLOCK_HIT_REQUEST"]:InvokeServer({
                                            ["block"] = GetOremine()})                               
    end
    end)
    elseif _G.Ora == false then
    _G.steppedora:Disconnect()
    end
    end
    ------------
    local function GetwaterOre()
        local Character = LocalPlayer.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        if not (Character or HumanoidRootPart) then return end
    
        local TargetDistance = math.huge
        local Target
    
        for i,v in ipairs(game:GetService("Workspace").WildernessBlocks:GetChildren()) do
            if v.Name:match("Prismarine") or v.Name:match("Clay") or v.Name:match("marine") then
                local player = game.Players.LocalPlayer
if game.Players.LocalPlayer.Backpack:FindFirstChild("diamondPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.diamondPickaxe)
elseif player.Backpack:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.gildedSteelPickaxe)
elseif player.Backpack:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.ironPickaxe)
elseif player.Backpack:FindFirstChild("stonePickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.stonePickaxe)
    elseif player.Backpack:FindFirstChild("woodPickaxe") and not player.Character:FindFirstChild("diamondPickaxe") and not player.Character:FindFirstChild("gildedSteelPickaxe") and not player.Character:FindFirstChild("ironPickaxe") and not player.Character:FindFirstChild("stonePickaxe") then
    player.Character.Humanoid:EquipTool(player.Backpack.woodPickaxe)
    end
                local TargetHRP = v
                local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                if mag < TargetDistance then
                    TargetDistance = mag
                    Target = v
                end
            end
        end
    
        return Target
    end
    function waterfarm()
    if _G.water == true then
    _G.woop = RunService.Stepped:Connect(function()
        if _G.water == true then
            if noclip then
            LocalPlayer.Character.Humanoid:ChangeState(11)
            end
            if _G.water == true then
    noclip = true
    LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
    if _G.water == false then
         noclip = false
         LocalPlayer.Character.Humanoid:ChangeState(11)
    end
    
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetwaterOre().CFrame + Vector3.new(0,-10,0)
    game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"].net.out["_NetManaged"]["CLIENT_BLOCK_HIT_REQUEST"]:InvokeServer({
                                            ["block"] = GetwaterOre()})
                                        
    end
    end)
    elseif _G.water == false then
        _G.woop:Disconnect()
        end
        end
    ------------------------
    local Frame = Library:Window("Islands", "TriStar", Color3.fromRGB(25, 219, 90), Enum.KeyCode.RightShift)
    -- local tab = win:Tab("Home", "http://www.roblox.com/asset/?id=6023426915")
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "TriStar";
        Text = "Thanks For Using A TriStar Script";
        Icon = "";
        Duration = 5;
    })
    if game.CoreGui:FindFirstChild("Sound") then
        game.CoreGui.Sound:Play()
    else
    local sound = Instance.new("Sound", game.CoreGui)
    sound.SoundId = "rbxassetid://3625290171"
    sound:Play()
    end
    
    Library:Notification("Hey, Thanks For Using Our Script", "Hey, Your Welcome")
    
    local Home = Frame:Tab("Home", "http://www.roblox.com/asset/?id=6023426915")
    local nrmlFarms = Frame:Tab("Farms", "http://www.roblox.com/asset/?id=6023426915")
    local MobFarms = Frame:Tab("Mobs", "http://www.roblox.com/asset/?id=6023426915")
    local Inventory = Frame:Tab("Inventory", "http://www.roblox.com/asset/?id=6023426915")
    local Flower = Frame:Tab("Flowers", "http://www.roblox.com/asset/?id=6023426915")
    local Teleports = Frame:Tab("Teleports", "http://www.roblox.com/asset/?id=6023426915")
	local Totems = Frame:Tab("Totems", "http://www.roblox.com/asset/?id=6023426915")
    local Misc = Frame:Tab("Misc", "http://www.roblox.com/asset/?id=6023426915")
    local Quest = Frame:Tab("Quest", "http://www.roblox.com/asset/?id=6023426915")
    -- local UIsett = Frame:Tab("UI Settngs", "http://www.roblox.com/asset/?id=6023426915")
    wait(1)
    
    Home:Label("Credits:")
    Home:Label("TheBoi#7169 - Scripting & Custom UI")
    Home:Label("WereWolf#0918 - Scripting")
    Home:Label("dawid#7205 - UI Lib")
    MobFarms:Label("Mob Farms")
    
    local mobselected
    local oreselected
    MobFarms:Dropdown("Mob", {"Slime", "Skorp", "Buffalkor", "Wizard","Crab","Bandits"}, function(v)
           mobselected = v
    end)
    
    MobFarms:Toggle("Mob Farm", "Trun On Mob Farm", false, function(v)
        if mobselected == "Slime" then
            _G.slime = v
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(696.500122, 194.185486, -217.163757, -0.592438221, 0, 0.805615902, 0, 1, 0, -0.805615902, 0, -0.592438221)
            _G.skorpFarm = false
            _G.Buff = false
            _G.Wiz = false
            _G.crab = false
            _G.bandit = false
        elseif mobselected == "Skorp" then
            _G.skorpFarm = v
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1023.22955, 291.582489, -1741.5542, 0.72341758, 0, 0.690410733, 0, 1, 0, -0.690410733, 0, 0.72341758)
            _G.slime = false
            _G.Buff = false
            _G.Wiz = false
            _G.crab = false
            _G.bandit = false
        elseif mobselected == "Buffalkor" then
            _G.Buff = v
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1185.95081, 377.161377, 105.369232, 0.959500372, -0, -0.281707346, 0, 1, -0, 0.281707346, 0, 0.959500372)
            _G.skorpFarm = false
            _G.slime = false
            _G.Wiz = false
            _G.crab = false
            _G.bandit = false
        elseif mobselected == "Wizard" then
         _G.Wiz = v
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1494.62354, 334.550079, -698.885864, 0.599808455, -0, -0.800143659, 0, 1, -0, 0.800143659, 0, 0.599808455)
            _G.crab = false
            _G.skorpFarm = false
            _G.slime = false
            _G.Buff = false
            _G.bandit = false
        elseif mobselected == "Crab" then
            _G.crab = v
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            _G.Wiz = false
            _G.skorpFarm = false
            _G.slime = false
            _G.Buff = false
            _G.bandit = false
        elseif mobselected == "Bandits" then
            _G.bandit = v
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            _G.Wiz = false
            _G.skorpFarm = false
            _G.slime = false
            _G.Buff = false
            _G.crab = false
     end
     end)
     MobFarms:Line()
     MobFarms:Dropdown("Select Island Mob", {"All","Bee", "FireFly", "Frog", "Rabbit"}, function(v)
        if v == "Bee" then
            entity = "bee"
        elseif v == "All" then
            entity = ""
        elseif v == "FireFly" then
            entity = "firefly"
        elseif v == "Frog" then
            entity = "frog"
        elseif v == "Rabbit" then
            entity = "rabbit"
        end
 end)
 MobFarms:Toggle("Island Mob Farm", "Trun On Island Mob Farm", false, function(v)
    _G.fly = v
    entityl()
 end)
 MobFarms:Toggle("Spirit Farm", "It Auto Farm spirits", false, function(v)
    _G.spir = v
    entityspirit()
 end)
 
     MobFarms:Line()
    
     MobFarms:Label("Fishing")
     MobFarms:Toggle("Fishing", "on / off Fishing farm", false, function(v)
         _G.Fish = v
         Fishing()
     end)
     MobFarms:Toggle("Desert Fishing", "on / off Desert Fishing farm", false, function(v)
         _G.desFish = v
         DesertFishing()
     end)
     MobFarms:Toggle("Spirit Fishing", "on / off Spirit Fishing farm", false, function(v)
        _G.spirFish = v
        SpiritFishing()
    end)
    MobFarms:Toggle("Pirate Fishing", "on / off Pirate Fishing farm", false, function(v)
        _G.pirFish = v
        PirateFishing()
    end)
        local plrsTable = {}
        for i,v in pairs(game.Players:GetPlayers()) do
        table.insert(plrsTable, v.Name)
        end
     local plrlist = nrmlFarms:Dropdown("Select Player Island",plrsTable, function(v)
        name = v
        vars.plr = game.Players[name]
        for i, v in pairs(game:GetService("Workspace").Islands:GetChildren()) do
            if v:IsA("Model") then
                for a, b in pairs(v:GetChildren()) do
                    if b.Name == "IslandId" and b.Parent:FindFirstChild("Owners") then
                        if b.Parent["Owners"]:FindFirstChild(vars.plr.UserId) then
                            LPlayerIID = b.Value
                            wait()
                        end
                    end
                end
            end
        end
        for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"]:GetChildren()) do
            if v.Name == "Owners" and v:FindFirstChild(game.Players.LocalPlayer.userId) then 
                vars.plr = game.Players[name]
            end
            if v.Name == "AccessBuild" and v:FindFirstChild(game.Players.LocalPlayer.userId) then 
                vars.plr = game.Players[name]
            elseif v.Name == "AccessBuild" and not v:FindFirstChild(game.Players.LocalPlayer.userId) and v.Parent.Name ~= (MPlayerIID) .. "-island" then
                vars.plr = game.Players.LocalPlayer
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Don't have Build";
                    Text = "Ask for Build";
                    Icon = "";
                    Duration = 5;
                })
            end
        end
    end)
    game.Players.PlayerAdded:Connect(function(player)
        local name = player.Name
        table.insert(plrsTable,name)
        plrlist:Refresh("Select Player Island",plrsTable)
    end)
    
    game.Players.PlayerRemoving:Connect(function(player)
        local name = player.Name
        for i,v in pairs(plrsTable)do
            if v == name then  
                table.remove(plrsTable,i)
                plrlist:Refresh("Select Player Island", plrsTable)
            end
        end
    end)    
    nrmlFarms:Label("Ore Farm")
    
    nrmlFarms:Dropdown("Ore", {"All","Obsidian", "Iron", "Coal", "Gold", "Diamond", "Clay", "Electrite", "Stone", "Slate", "Marble", "Red Sandstone"}, function(v)
        oreselected = v
    end)
    
    nrmlFarms:Toggle("Ore Farm", "Turn On Ore Farm", false, function(v)
        _G.Or = v
        if oreselected == "Iron" then
         orefr = "rockIron"
         Selected = true
         oral()
        elseif oreselected == "Coal" then
         orefr = "rockCoal"
         Selected = true
         oral()
        elseif oreselected == "Gold" then
         orefr = "rockGold"
         Selected = true
         oral()
        elseif oreselected == "Obsidian" then
            orefr = "rockObsidian"
            Selected = true
            oral()
        elseif oreselected == "Diamond" then
         orefr = "rockDiamond"
         Selected = true
         oral()
        elseif oreselected == "Clay" then
         orefr = "rockClay"
         Selected = true
         oral()
        elseif oreselected == "Electrite" then
         orefr = "rockElectrite"
         Selected = true
         oral()
        elseif oreselected == "Slate" then
         orefr = "rockSlate"
         Selected = true
         oral()
        elseif oreselected == "Marble" then
         orefr = "rackMarble"
         Selected = true
         oral()
        elseif oreselected == "Red Sandstone" then
         orefr = "rockSandstoneRed"
         Selected = true
         oral()
        elseif oreselected == "Stone" then
         orefr = "rockStone"
         Selected = true
         oral()
         elseif oreselected == "All" then
            Selected = false
            oral()
     end
     end)
     nrmlFarms:Dropdown("Select Mine", {"desert","buffalkorRocks","slateQuarry","diamondMineRocks","hubRocks"}, function(v)
        oreminer = v
    end)
    
    nrmlFarms:Toggle("Mine Ore Farm", "Turn On Ore Farm", false, function(v)
        _G.Ora = v
        oramine()
        if _G.Ora == false then
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,15,0)
        end
    end)
    nrmlFarms:Toggle("Kiwi Farm", "Turn On kiwi Farm", false, function(v)
        _G.Nearkiwi = v
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        nerkiwi()
    end)
    nrmlFarms:Toggle("Island Coconut Farm", "Turn On Coconut Farm", false, function(v)
        _G.Nearcoco = v
        nercoco()
    end)
    nrmlFarms:Toggle("Island Kiwi Farm", "Turn On Kiwi Farm", false, function(v)
        _G.Nearislkiwi = v
        nerislkiwi()
    end)
    nrmlFarms:Toggle("Wild crop Farm", "Turn On/ off Wild crop Farm", false, function(v)
        _G.wildcrop = v
        wildcrp()
    end)
    nrmlFarms:Label("Water Farm")
    nrmlFarms:Toggle("Water Farm", "Turn On Water Farm", false, function(v)
       _G.water = v
       waterfarm()
    end)
    nrmlFarms:Line()
    nrmlFarms:Label("Sickle Farm")
    nrmlFarms:Dropdown("Crops", {"carrot","wheat","spiritCrop","chilliPepper","radish","starfruit","cactus","spinach","onion","potato","pumpkin","tomato","melon","grapevine"}, function(v)
        crp = v
    end)
    
    nrmlFarms:Toggle("Sickle Farm", "on / off", false, function(v)
        _G.Auto = v
        carSickle()
    end)
    nrmlFarms:Toggle("Don't Replace Seeds", "on / off", false, function(v)
        _G.Replace = v
    end)
    nrmlFarms:Toggle("Berry Sickle Farm", "on / off", false, function(v)
        _G.SickleBerry = v
        berSickle()
    end)
    nrmlFarms:Line()
    nrmlFarms:Label("Normal Crop Farm")
    nrmlFarms:Dropdown("Crops", {"carrot","wheat","spiritCrop","chilliPepper","radish","starfruit","cactus","spinach","onion","potato","pumpkin","tomato","melon","grapevine"}, function(v)
        normcrp = v
    end)
    nrmlFarms:Toggle("Normal Farm", "on / off", false, function(v)
        _G.NormFarm = v
        Norm()
    end)
    nrmlFarms:Line()
    
    nrmlFarms:Toggle("Remove XP Orbs", "on / off", false, function(v)
        _G.RemoveOrbs = v
        rorbs()
    end)
    nrmlFarms:Toggle("Teleport XP Orbs", "on / off", false, function(v)
        _G.tpOrbs = v
        tporbs()
    end)
    nrmlFarms:Toggle("Hide XP Orbs", "on / off", false, function(v)
        _G.hideOrbs = v
        horbs()
    end)
    Flower:Label("Flower Farm")
    Flower:Toggle("Water Flowers", "Auto watering Flowers", false, function(v)
        _G.Flower = v
        FertFlower()
    end)
    Flower:Toggle("Flower Collect Aura", "Auto Collect Near Flowers", false, function(v)
        _G.NearFlower = v
        nerflow()
    end)
    Flower:Toggle("Collect Non-Fertile Flowers", "Auto Collect Non-Fertile Flowers", false, function(v)
        _G.NonFlower = v
        nonfert()
    end)
    ----flower list---
    local flowerTable = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Blocks:GetChildren()) do
    if v.Name:match("flower") and not v.Name:match("Pot")then
        table.insert(flowerTable,v.Name)
    end
end
    Flower:Dropdown("Select Flower Type",flowerTable, function(v)
      Flower = v
    end)
    Flower:Toggle("Collect Selected Flower", "Auto Collect Selected Flower", false, function(v)
        _G.selFlower = v
        --#selectedFlower----
        function selflower()
            local function GetSelectedFlower()
                    local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer
                local plr = vars.plr
                
                
                    local Character = LocalPlayer.Character
                    local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                    if not (Character or HumanoidRootPart) then return end
                
                    local TargetDistance = math.huge
                    local Target
                local plr = vars.plr
                    for i,v in ipairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                        if v.Name == Flower then
                              local TargetHRP = v
                            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                            if mag < TargetDistance then
                                TargetDistance = mag
                                Target = v
                            end
                        end
                    end
                
                    return Target
            end
                while _G.selFlower do
                    wait()
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GetSelectedFlower().Position).magnitude <= 10 then
            local args = {
                [1] = {
                    ["flower"] = GetSelectedFlower()
                }
            }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.client_request_1:InvokeServer(unpack(args))
            
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = GetSelectedFlower().CFrame
                    
                end
                end
            end
        selflower()
    end)
    --------
    -----------
Inventory:Toggle("Withdraw vending Money", "Auto Collect Vending Money", false, function(v)
    _G.draw = v
    drawl()
end)
Inventory:Toggle("Withdraw vending Item", "Auto Collect Vending Items", false, function(v)
    _G.drawitem = v
    drawi()
end)
Inventory:Toggle("Refill vending", "Auto Collect Refill Vending", false, function(v)
    _G.refill = v
    refillr()
end)
Inventory:Line()
Inventory:Textbox("Type Money amount", "Amount of money you want to add in vending", false, function(t)
    if tonumber(t) then
        balance = tonumber(t)
    end
end)
Inventory:Toggle("Auto Add Money", "It will Auto Add Money in all vendings", false, function(v)
    _G.addmoney = v
    moneyadd()
end)
Inventory:Line()
local invTable = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    table.insert(invTable, v.Name)
end
Inventory:Dropdown("Select Item",invTable, function(v)
    ven = v
  end)
Inventory:Textbox("Add Price", "Price off Item you want to Sell", false, function(t)
    if tonumber(t) then
        sellprice = tonumber(t)
    end
end)
Inventory:Toggle("Add item", "It will Auto Item in all vendings", false, function(v)
    _G.itemadd = v
    fillven()
end)
Inventory:Line()
Inventory:Toggle("Auto Fill Crate Packer near chest", "It will fill Equiped item in check so equip the crop you want to fill", false, function(v)
    _G.craftcrate = v
    crate()
end)
---------
    Teleports:Label("Teleports:")
    
    Teleports:Button("Hub", "Teleport To Hub", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(66.7772903, 44.7380981, -630.603699, -0.246099457, 1.52061972e-08, -0.969244599, -4.56556499e-08, 1, 2.72810681e-08, 0.969244599, 5.09653475e-08, -0.246099457)
    end)
    Teleports:Button("Pirate Island", "Teleport To Pirate Island", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.75, 364.837219, -2000.27893, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    Teleports:Button("Island", "Teleport To Your Island", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands[(MPlayerIID).."-island"]:FindFirstChild("SpawnLocation").CFrame
    end)
    Teleports:Button("Slime Island", "Teleport To Slime Island", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(696.500122, 194.185486, -217.163757, -0.592438221, 0, 0.805615902, 0, 1, 0, -0.805615902, 0, -0.592438221)
    end)
    Teleports:Button("Buffalkor Island", "Teleport To Buffalkor Island", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1185.95081, 377.161377, 105.369232, 0.959500372, -0, -0.281707346, 0, 1, -0, 0.281707346, 0, 0.959500372)
    end)
    Teleports:Button("Wizard Island", "Teleport To Wizard Island", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1494.62354, 334.550079, -698.885864, 0.599808455, -0, -0.800143659, 0, 1, -0, 0.800143659, 0, 0.599808455)
    end)
    Teleports:Button("Skorp Island", "Teleport To Skorp Island", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1023.22955, 291.582489, -1741.5542, 0.72341758, 0, 0.690410733, 0, 1, 0, -0.690410733, 0, 0.72341758)
    end)
    Teleports:Button("Diamond Mines", "Teleport To Diamond Mines", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2466.10913, 241.678543, 881.17688, 0.94174993, 9.36039584e-08, 0.336313933, -1.20949451e-07, 1, 6.03608186e-08, -0.336313933, -9.75217844e-08, 0.94174993)
    end)
    Teleports:Button("Spirit Island", "Teleport To Spirit Island", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.328289, 289.020081, 857.579468, -2.69412994e-05, -0.0232832469, 0.999728978, 0.101991445, 0.994515538, 0.0231645703, -0.994785368, 0.101964414, 0.00234794617)
    end)
    Teleports:Button("Kor Fight Area", "Teleport To Kor Fight Area", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2916.73242, 284.920319, 1168.16235, -0.157736942, -7.86827528e-08, 0.98747927, -1.20949451e-07, 1, 6.03608186e-08, -0.98747927, -1.09912875e-07, -0.157736942)
    end)

    Misc:Button("Display Block Count", "Displays Block Count In Chat", function()
        Message("Your Island Currently Has "..game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].BlockCount.Value.." Blocks", Color3.fromRGB(230,255,0))
        Library:Notification("Check Chat For Block Count", "OK!")
    end)
    Misc:Button("Lag Reducer", "Reduces lag", function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Part"
            or v.ClassName == "SpawnLocation"
            or v.ClassName == "WedgePart"
            or v.ClassName == "Terrain"
            or v.ClassName == "MeshPart" then
            v.Material = "Plastic"
            end
            end
            for _,v in pairs(workspace:GetDescendants()) do
            if v.ClassName == "Decal"
            or v.ClassName == "Texture" then
            v:Destroy()
            end
            end
    end)
    Misc:Toggle("Notification Hide/Show", "You can hide and visible notification", true, function(v)
        game:GetService("CoreGui").RobloxGui.NotificationFrame.Visible = v
    end)
    Misc:Button("Max Skill", "You can buy stuffs with it", function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Experience:GetChildren()) do
            v.Value = 9999999999999999
        end
        
    end)
    Misc:Toggle("Junk Remover", "You can remove usless spawns tallgrass/stones", false,function(v)
        _G.Junk = v
        junk()
    end)
    Misc:Toggle("Junk and flower Remover", "You can remove usless spawns like tall grass, rocks and flowers", false,function(v)
        _G.Junf = v
        junf()
    end)
    Misc:Toggle("Collect Near dropped item", "You can collect near dropped item", false,function(v)
        _G.coldrop = v 
        collectdropped()
    end)
    Misc:Toggle("Plow Aura", "Plow near by grass", false,function(v)
        plowe = v
        while plowe do
            wait()
            local plr = vars.plr
for i,v in pairs(game.Workspace.Islands[plr.UserId .. "-island"].Blocks:GetChildren()) do
    if v.Name == "grass" and not v:FindFirstChild("Planter") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 15 then
local args = {
    [1] = {
        ["block"] = v
    }
}

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PLOW_BLOCK_REQUEST:InvokeServer(unpack(args))
end
end
end
    end)
    Misc:Toggle("Un Plow Aura", "Un Plow near by grass", false,function(v)
            unplowe = v
            while unplowe do
                wait()
                local plr = vars.plr
    for i,v in pairs(game.Workspace.Islands[plr.UserId .. "-island"].Blocks:GetChildren()) do
        if v.Name == "soil" and not v:FindFirstChild("Planter") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 15 then
    local args = {
        [1] = {
            ["block"] = v
        }
    }

    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_PLOW_BLOCK_REQUEST:InvokeServer(unpack(args))
    end
    end
    end
    end)
    Totems:Dropdown("Crop Totem", {"totemPotato","totemCarrot","totemWheat","totemTomato","totemStarfruit","totemOnion"}, function(v)
        croptot = v
    end)
	Totems:Toggle("Crop Totem All Upgrade", "Auto Totem Upgrade", false, function(v)
        _G.Auttot = v
        uptot()
    end)
	Totems:Textbox("Upgrade Amount", "It will upgrade your totem according to how much upgrade you typed here",false, function(t)
        crpamt = t
        end)
		Totems:Button("Crop Totem Utility Upgrade", "Auto crop utility Upgrade", function()
        for i = 1 , crpamt do
            for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name == croptot then
                    local args = {
                        [1] = v,
                        [2] = "totem_crop",
                        [3] = "utility"
                    }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                end
            end
        end
        end)
		Totems:Button("Crop Totem efficiency Upgrade", "Auto crop efficincy upgrade Upgrade", function()
            for i = 1 , crpamt do
                for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                    if v.Name == croptot then
                        local args = {
                            [1] = v,
                            [2] = "totem_crop",
                            [3] = "efficiency"
                        }
                
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                    end
                end
            end
            end)
			Totems:Button("Crop Totem quality Upgrade", "Auto crop quality Upgrade", function()
                for i = 1 , crpamt do
                    for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                        if v.Name == croptot then
                            local args = {
                                [1] = v,
                                [2] = "totem_crop",
                                [3] = "quality"
                            }
                    
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                        end
                    end
                end
                end)
				Totems:Line()
				Totems:Dropdown("Ore Totems", {"totemCoal","totemClay","totemIron","totemStone"}, function(v)
        Oretot = v
    end)
	Totems:Toggle("Ore Totem All Upgrade", "Auto Totem Upgrade", false, function(v)
        _G.AutOretot = v
        upOretot()
    end)
	Totems:Textbox("Ore Totem Upgrade Amount", "This will upgrade your totem to number of amounts you put", false, function(t)
        amt = t
        end)
		Totems:Button("ore Totem Utility Upgrade", "Auto Utility Upgrade", function()
        for i = 1, amt do
            for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name == Oretot then
                    local args = {
                        [1] = v,
                        [2] = "totem_rock",
                        [3] = "utility"
                    }
            
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
                end
            end
            end
    end)
	Totems:Button("ore Totem efficiency Upgrade", "Auto efficiency Upgrade", function()
        while _G.Autoeff do
            wait()
            for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name == Oretot then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
    local args = {
        [1] = v,
        [2] = "totem_rock",
        [3] = "efficiency"
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
end
end
        end
    end)
	Totems:Button("ore Totem Quality Upgrade", "Auto Quality Upgrade", function()
        for i = 1, amt do
            for i,v in pairs(game:GetService("Workspace").Islands[(LPlayerIID) .. "-island"].Blocks:GetChildren()) do
                if v.Name == Oretot then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
    local args = {
        [1] = v,
        [2] = "totem_rock",
        [3] = "quality"
    }
    
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.UpgradeBlock:InvokeServer(unpack(args))
end
end
        end
    end)
    Misc:Toggle("Water Soil Aura", "On/Off", false, function(v)
        _G.WaterSoil = v
        WaterSoil()
    end)
    Misc:Toggle("Drop Item", "drop equipped item", false, function(v)
        _G.dropit = v
        dropequip()
    end)
    Misc:Toggle("Chest Collect Aura", "On/Off", false, function(v)
        _G.collector = v
    chestcollect()
    end)
    Misc:Toggle("Fill Near medium Chest with equipped item", "it will fill the chest near you", false, function(v)
        _G.filter = v
        bro()
    end)
    Misc:Line()
    Misc:Label("Sell Seasonal Crops:")
    Misc:Toggle("Sell Melons", "You can sell melon in any season", false, function(v)
        _G.melon = v
        while _G.melon do
        local melonold = game:GetService("Workspace").seeds.MindID.Value
        wait()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "melonHarvested" then
                game:GetService("Workspace").seeds.MindID.Value = "melon"
                wait()
                local args = {
                    [1] = {
                        ["merchant"] = "melon_shop",
                        ["offerId"] = 1,
                        ["amount"] = v.Amount.Value
                    }
                }
                
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(unpack(args))
                
            end
        end
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "melonHarvested" then
        game:GetService("Workspace").seeds.MindID.Value = "melon"
        wait()
        local args = {
            [1] = {
                ["merchant"] = "melon_shop",
                ["offerId"] = 1,
                ["amount"] = v.Amount.Value
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(unpack(args))
        
    end
end
wait()
game:GetService("Workspace").seeds.MindID.Value = melonold
end
    end)
    Misc:Toggle("Sell Radish", "You can sell radish in any season", false, function(v)
        _G.radish = v
        while _G.radish do
        local radold = game:GetService("Workspace").seeds.MindID.Value
        wait()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "radishHarvested" then
                game:GetService("Workspace").seeds.MindID.Value = "spring_mind"
                wait()
                local args = {
                    [1] = {
                        ["merchant"] = "spring_shop",
                        ["offerId"] = 1,
                        ["amount"] = v.Amount.Value
                    }
                }
                
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(unpack(args))
                
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "radishHarvested" then
        game:GetService("Workspace").seeds.MindID.Value = "spring_mind"
        wait()
        local args = {
            [1] = {
                ["merchant"] = "spring_shop",
                ["offerId"] = 1,
                ["amount"] = v.Amount.Value
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(unpack(args))
        
    end
end
wait()
game:GetService("Workspace").seeds.MindID.Value = radold
end
    end)
    Misc:Toggle("Sell Pumpkin", "You can sell pumpkin in any season", false, function(v)
        _G.pumpkin = v
        while _G.pumpkin do
        local pumold = game:GetService("Workspace").seeds.MindID.Value
        wait()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "pumpkinHarvested" then
                game:GetService("Workspace").seeds.MindID.Value = "autumn_mind"
                wait()
                local args = {
                    [1] = {
                        ["merchant"] = "autumn_shop",
                        ["offerId"] = 1,
                        ["amount"] = v.Amount.Value
                    }
                }
                
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(unpack(args))
                
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == "pumpkinHarvested" then
        game:GetService("Workspace").seeds.MindID.Value = "autumn_mind"
        wait()
        local args = {
            [1] = {
                ["merchant"] = "autumn_shop",
                ["offerId"] = 1,
                ["amount"] = v.Amount.Value
            }
        }
        
        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(unpack(args))
        
    end
end
wait(.5)
game:GetService("Workspace").seeds.MindID.Value = pumold
end
    end)
    Quest:Toggle("Claim Spirit Merchant Quest", "It Auto Claim spirit Merchant quest", false, function(v)
        _G.spirquest = v
        while wait(5) and _G.spirquest do
            for i = 0,4 do
                game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.client_request_10:InvokeServer({["slot"] = i, ["merchant"] = "spiritMerchant"})
            end
        end
     end)
    Quest:Toggle("Claim Desert Normad Quest", "It Auto Claim Desert Normad quest", false, function(v)
        _G.desquest = v
        while wait(5) and _G.desquest do
            for i = 0,4 do
                game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.client_request_10:InvokeServer({["slot"] = i, ["merchant"] = "desert_nomad"})
            end
        end
     end)
     Quest:Toggle("Claim Slayer Pirate Quest", "It Auto Claim Slayer Pirate quest", false, function(v)
        _G.slayquest = v
        while wait(5) and _G.slayquest do
            for i = 0,4 do
                game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.client_request_10:InvokeServer({["slot"] = i, ["merchant"] = "pirateSlayer"})
            end
        end
    end)
    Quest:Toggle("Claim Pirate Miner Quest", "It Auto Claim Pirate Miner quest", false, function(v)
        _G.minerquest = v
        while wait(5) and _G.minerquest do
            for i = 0,4 do
                game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.client_request_10:InvokeServer({["slot"] = i, ["merchant"] = "pirateMiner"})
            end
        end
     end)
    Quest:Toggle("Claim Pirate Fisher Man Quest", "It Auto Claim Pirate Fisher Man quest", false, function(v)
        _G.pifiquest = v
        while wait(5) and _G.pifiquest do
            for i = 0,4 do
                game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.client_request_10:InvokeServer({["slot"] = i, ["merchant"] = "pirateFisherman"})
            end
        end
     end)
     Quest:Toggle("Claim Pirate Botanist Quest", "It Auto Claim Pirate Botanist quest", false, function(v)
        _G.botquest = v
        while wait(5) and _G.botquest do
            for i = 0,4 do
                game.ReplicatedStorage.rbxts_include.node_modules.net.out._NetManaged.client_request_10:InvokeServer({["slot"] = i, ["merchant"] = "pirateBotanist"})
            end
        end
     end)
     end 
