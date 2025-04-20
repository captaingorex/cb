local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local theme = getgenv().JiroTheme or "Default"

local Window = Rayfield:CreateWindow({
    Name = "Jiro Public",
    Icon = "cloud",
    LoadingTitle = "Loading..",
    LoadingSubtitle = "by socals",
    Theme = theme,
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Jiro Hub"
    }
})

local AimbotTab = Window:CreateTab("Combat", "swords")
local VisualsTab = Window:CreateTab("Visuals", "eye")
local PlayerTab = Window:CreateTab("Player", "user")
local MiscTab = Window:CreateTab("Misc", "sparkles")
local SettingsTab = Window:CreateTab("Settings", "settings")

Rayfield:Notify({
    Title = "Jiro Loaded",
    Content = "Theme: " .. theme,
    Duration = 5,
    Image = "bell"
})

-- Theme picker in Settings tab
SettingsTab:CreateDropdown({
    Name = "Select Theme",
    Options = {
        "Default", "AmberGlow", "Amethyst", "Bloom",
        "DarkBlue", "Green", "Light", "Ocean", "Serenity"
    },
    CurrentOption = theme,
    Callback = function(option)
        getgenv().JiroTheme = option
        Rayfield:Notify({
            Title = "Theme Changed",
            Content = "Reloading with: " .. option,
            Duration = 3,
            Image = "bell"
        })
        task.wait(1.5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/captaingorex/cb/refs/heads/main/counterblox.lua"))()
    end
})
