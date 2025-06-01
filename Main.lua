local Swining = false
local Selling = false
local egging = false
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🐱‍👤 Saber Simulator Script ⚔",
   Icon = 0,
   LoadingTitle = "Best Saber Simulator Script",
   LoadingSubtitle = "by ZoNiX_Dev",
   Theme = "Green",

   ToggleUIKeybind = "U", 

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, 
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true, 
   KeySettings = {
      Title = "Key...",
      Subtitle = "Enter Key",
      Note = "Key In My Discord Server",
      FileName = "SaberSimKeyScr", 
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"ZoNiX_DevISTHEBEST"} 
   }
})

local MainTab = Window:CreateTab("Main", 4483362458)

local Section = MainTab:CreateSection("🏡 Home")

local AutoClickBTN = MainTab:CreateButton({
   Name = "👆 Auto Clicker 👆",
   Callback = function()
Swining = not Swining
local Swing = game.ReplicatedStorage.Events.SwingSaber
while task.wait() do
if Swining == true then
	    Swing:FireServer()
wait(0.001)
else
	break
end
end
   end,
})

local CollectAllCrowns = MainTab:CreateButton({
   Name = "👑 Collect All Crowns 👑",
   Callback = function()
   local CurrencyPickupFolder = workspace.Gameplay.CurrencyPickup.CurrencyHolder:GetChildren()
   local Collected = 0
   	   local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
		  HumanoidRootPart.Anchored = false
   for i, v in pairs(CurrencyPickupFolder) do
		HumanoidRootPart.CFrame = v.CFrame
	   Collected = i
	   wait(0.1)
   end
   print(Collected)
   end,
})

local AutoKing = MainTab:CreateButton({
   Name = "💎 Auto King 💎",
   Callback = function()
	   local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
	   HumanoidRootPart.Anchored = true
		HumanoidRootPart.CFrame = CFrame.new(737,246,51,1,3,0,-5,1,-6,0,7,0)
   end,
})

local AutoSell = MainTab:CreateButton({
   Name = "💰 Auto Sell 💰",
   Callback = function()
   Selling = not Selling
	   local SellEvent = game.ReplicatedStorage.Events.SellStrength
	   while task.wait(1) do
		  if Selling == true then
		  	   SellEvent:FireServer()
			end 
	   end
   end,
})


--[[local AutoBuyEgg = MainTab:CreateButton({
   Name = "🥚 Auto Open Egg 🥚",
   Callback = function()
   egging = not egging
   while task.wait() do
   if egging == true then
	  game.ReplicatedStorage.Events.UIAction:FireServer("BuyEgg", "EF Egg")
	  print("Egg Opened!")
	  wait(5)
	  else
		  break 
   end
   end
   end,
})]]
