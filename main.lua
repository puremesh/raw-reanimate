--[[
Items Needed:
https://www.roblox.com/catalog/5063565603/Program-Head (40 Robux)
https://www.roblox.com/catalog/451220849/Lavender-Updo (Free)
https://www.roblox.com/catalog/48474313/Red-Roblox-Cap (Free)
https://www.roblox.com/catalog/62724852/Chestnut-Bun (Free)
https://www.roblox.com/catalog/29532720/Mizaru (50 Robux)

Total of: 90 Robux.

]]--


local Character = game.Players.LocalPlayer.Character
local uis = game:GetService("UserInputService")


if Character:FindFirstChild("Raw") then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Already Reanimated!",
        Text = "Reset to unreanimate.",
        Duration = 5
    })
else
    local thing = game:GetObjects("rbxassetid://5904819435")[1]
thing.Name = "Raw"
thing.Parent = Character
local animator = Instance.new("Animator", thing.Humanoid)
local folder = Instance.new("Folder", thing)
folder.Name = "Animate"
thing.Head.face:Destroy()
for i, v in pairs(Character.Animate:GetChildren()) do
    local new = v:Clone()
    new.Parent = folder
end

local function align(part0, part1)
    attachment = Instance.new("Attachment", part0)
    attachment.Name = "A1"
    attachment.Position = Vector3.new(0, 0, 0) -- positioning
    attachment.Orientation = Vector3.new(0, 0, 0) -- orienation/rotation
    
    attachment02 = Instance.new("Attachment", part1) -- arm or part
    
    lol = Instance.new("AlignPosition", part0)
    lol.Attachment0 = attachment
    lol.Attachment1 = attachment02
    lol.RigidityEnabled = true -- makes it not wobbly
    
    pog = Instance.new("AlignOrientation", part0)
    pog.Attachment0 = attachment
    pog.Attachment1 = attachment02
    pog.RigidityEnabled = true-- makes it not wobbly
        
end
    

thing:MoveTo(Character.HumanoidRootPart.Position)
thing.Humanoid:Move(game.Players.LocalPlayer.Character.Humanoid.MoveDirection, false)
thing.HumanoidRootPart.Anchored = false

local leftarm = Character.LavanderHair
leftarm.Handle.Mesh:Destroy()
leftarm.Handle.AccessoryWeld:Destroy()
local torso = Character.SeeMonkey
torso.Handle.Mesh:Destroy()
torso.Handle.AccessoryWeld:Destroy()
local rightarm = Character.Hat1
rightarm.Handle.Mesh:Destroy()
rightarm.Handle.AccessoryWeld:Destroy()
local leftleg = Character.Robloxclassicred
leftleg.Handle.Mesh:Destroy()
leftleg.Handle.AccessoryWeld:Destroy()
local rightleg = Character["Kate Hair"]
rightleg.Handle.Mesh:Destroy()
rightleg.Handle.AccessoryWeld:Destroy()
if Character["MeshPartAccessory"].Handle.SpecialMesh.MeshId ~= "rbxassetid://5063539188" then
    Character["MeshPartAccessory"].Name = "imsobad"
    local head = Character["MeshPartAccessory"]
    head.Handle.AccessoryWeld:Destroy()
    align(head.Handle, thing["Head"])
    head.Handle.A1.Position = Vector3.new(0, -0.4, 0)
else
    local head = Character["MeshPartAccessory"]
    head.Handle.AccessoryWeld:Destroy()
    align(head.Handle, thing["Head"])
    head.Handle.A1.Position = Vector3.new(0, -0.4, 0)
end
align(leftarm.Handle, thing["Left Arm"])
align(torso.Handle, thing["Torso"])
align(rightarm.Handle, thing["Right Arm"])
align(leftleg.Handle, thing["Left Leg"])
align(rightleg.Handle, thing["Right Leg"])
leftarm.Handle.A1.Orientation = Vector3.new(90, 0, 0)
torso.Handle.A1.Orientation = Vector3.new(90, 0, 0)
rightarm.Handle.A1.Orientation = Vector3.new(90, 0, 0)
leftleg.Handle.A1.Orientation = Vector3.new(90, 0, 0)
rightleg.Handle.A1.Orientation = Vector3.new(90, 0, 0)

Character["Right Arm"].Anchored = false
Character["Torso"].Anchored = false
Character["Left Arm"].Anchored = false
Character["Right Leg"].Anchored = false
Character["Left Leg"].Anchored = false

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
Humanoid = game.Players.LocalPlayer.Character.Humanoid
game.RunService.RenderStepped:Connect(function()

 thing.Humanoid:Move(game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MoveDirection, false)
 
local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
for _,v in pairs(ActiveTracks) do
v:Stop()
end
end)

uis.InputBegan:Connect(function(input, istyping)
    if input.KeyCode == Enum.KeyCode.Space then
        if istyping == false then

        thing.Humanoid.Jump = true

    end
    end
end)

game.Workspace.CurrentCamera.CameraSubject = thing.Humanoid
for i, v in pairs(thing:GetChildren()) do
    if v:IsA("Part") then
        if v.Name == "Head" then
            v.Transparency = 1
        else
            v.Transparency = 1
        end
    end
end
local noclip = true char = game.Players.LocalPlayer.Character["Raw"] while true do if noclip == true then for _,v in pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName == "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
end

wait(1.5)
