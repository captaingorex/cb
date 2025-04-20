local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Default theme or saved theme
local theme = getgenv().JiroTheme or "Default"

local Window = Rayfield:CreateWindow({
    Name = "Jiro Public",
    Icon = "cloud",
    LoadingTitle = "Loading...",
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

-- Tabs
local AimbotTab = Window:CreateTab("Combat", "swords")
local VisualsTab = Window:CreateTab("Visuals", "eye")
local PlayerTab = Window:CreateTab("Player", "user")
local MiscTab = Window:CreateTab("Misc", "sparkles")
local SettingsTab = Window:CreateTab("Settings", "settings")

-- Notification
Rayfield:Notify({
    Title = "Jiro Loaded",
    Content = "Current Theme: " .. theme,
    Duration = 5,
    Image = "bell"
})

-- Theme Picker
SettingsTab:CreateDropdown({
    Name = "Select Theme",
    Options = {
        "Default", "AmberGlow", "Amethyst", "Bloom",
        "DarkBlue", "Green", "Light", "Ocean", "Serenity"
    },
    CurrentOption = theme,
    Callback = function(selectedTheme)
        getgenv().JiroTheme = selectedTheme

        Rayfield:Notify({
            Title = "Theme Changed",
            Content = "Reloading with: " .. selectedTheme,
            Duration = 3,
            Image = "bell"
        })

        task.delay(1.5, function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/captaingorex/cb/refs/heads/main/counterblox.lua"))()
        end)
    end
})
