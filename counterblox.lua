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
    Callback = function(Selected)
        pcall(function()
            getgenv().JiroTheme = Selected

            Rayfield:Notify({
                Title = "Theme Changed",
                Content = "Reloading UI with " .. Selected,
                Duration = 4,
                Image = "bell"
            })

            task.delay(1.5, function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/captaingorex/cb/refs/heads/main/counterblox.lua"))()
            end)
        end)
    end
})
