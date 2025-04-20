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
