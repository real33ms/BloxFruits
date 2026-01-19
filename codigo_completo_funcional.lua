--[[
    ═══════════════════════════════════════════════════════════
    ✅ CÓDIGO COMPLETO E FUNCIONAL
    ═══════════════════════════════════════════════════════════
]]

-- ========================================
-- 1. CARREGAR BIBLIOTECA
-- ========================================
local I = loadstring(game:HttpGet("https://pastefy.app/qPpRPiFi/raw"))()

-- ========================================
-- 2. SISTEMA DE SAVE (OBRIGATÓRIO!)
-- ========================================
local HttpService = game:GetService("HttpService")
local FolderName = "Abacaxi Hub"
local FileName = "Settings.json"
local FullPath = FolderName .. "/" .. FileName

-- Criar pasta se não existir
if makefolder and not isfolder(FolderName) then 
    makefolder(FolderName) 
end

-- Inicializar SaveData
_G.SaveData = _G.SaveData or {}

-- Função para salvar
function SaveSettings()
    if not writefile then return false end
    local success = pcall(function()
        local json = HttpService:JSONEncode(_G.SaveData)
        writefile(FullPath, json)
    end)
    return success
end

-- Função para carregar
function LoadSettings()
    if not (isfile and isfile(FullPath)) then return false end
    local success, result = pcall(function()
        local content = readfile(FullPath)
        return HttpService:JSONDecode(content)
    end)
    if success and result then 
        _G.SaveData = result
        return true
    end
    return false
end

-- Função GetSetting
function GetSetting(name, default)
    return _G.SaveData[name] ~= nil and _G.SaveData[name] or default
end

-- Carregar settings salvos
LoadSettings()

-- ========================================
-- 3. INICIALIZAR TABELAS (MUITO IMPORTANTE!)
-- ========================================
_G.SelectedSkills = _G.SelectedSkills or {
    ["Melee"] = {},
    ["Sword"] = {},
    ["Gun"] = {},
    ["Blox Fruit"] = {}
}

-- ========================================
-- 4. CRIAR UI
-- ========================================
local V = I:NewWindow()

-- Criar Tab
local t = V:T("Tab Sea Events", "rbxassetid://10709783577")

-- Criar Section
local o = t:AddSection("Configure skills for Sea events")

-- ========================================
-- 5. ADICIONAR ELEMENTOS (AGORA VAI FUNCIONAR!)
-- ========================================

-- Separador Melee
o:AddSeperator("Melee Skills")

o:AddToggle({
    Title = "Skill Z",
    Default = GetSetting("Skill_Melee_Z", true), 
    Callback = function(Value)
        _G.SelectedSkills["Melee"]["Z"] = Value
        _G.SaveData["Skill_Melee_Z"] = Value
        SaveSettings()
        print("Melee Z:", Value)
    end
})

o:AddToggle({
    Title = "Skill X",
    Default = GetSetting("Skill_Melee_X", true), 
    Callback = function(Value)
        _G.SelectedSkills["Melee"]["X"] = Value
        _G.SaveData["Skill_Melee_X"] = Value
        SaveSettings()
        print("Melee X:", Value)
    end
})

o:AddToggle({
    Title = "Skill C",
    Default = GetSetting("Skill_Melee_C", true), 
    Callback = function(Value)
        _G.SelectedSkills["Melee"]["C"] = Value
        _G.SaveData["Skill_Melee_C"] = Value
        SaveSettings()
        print("Melee C:", Value)
    end
})

-- Separador Sword
o:AddSeperator("Sword Skills")

o:AddToggle({
    Title = "Skill Z",
    Default = GetSetting("Skill_Sword_Z", true), 
    Callback = function(Value)
        _G.SelectedSkills["Sword"]["Z"] = Value
        _G.SaveData["Skill_Sword_Z"] = Value
        SaveSettings()
        print("Sword Z:", Value)
    end
})

o:AddToggle({
    Title = "Skill X",
    Default = GetSetting("Skill_Sword_X", true), 
    Callback = function(Value)
        _G.SelectedSkills["Sword"]["X"] = Value
        _G.SaveData["Skill_Sword_X"] = Value
        SaveSettings()
        print("Sword X:", Value)
    end
})

o:AddToggle({
    Title = "Skill C",
    Default = GetSetting("Skill_Sword_C", true), 
    Callback = function(Value)
        _G.SelectedSkills["Sword"]["C"] = Value
        _G.SaveData["Skill_Sword_C"] = Value
        SaveSettings()
        print("Sword C:", Value)
    end
})

-- Separador Gun
o:AddSeperator("Gun Skills")

o:AddToggle({
    Title = "Skill Z",
    Default = GetSetting("Skill_Gun_Z", true), 
    Callback = function(Value)
        _G.SelectedSkills["Gun"]["Z"] = Value
        _G.SaveData["Skill_Gun_Z"] = Value
        SaveSettings()
        print("Gun Z:", Value)
    end
})

o:AddToggle({
    Title = "Skill X",
    Default = GetSetting("Skill_Gun_X", true), 
    Callback = function(Value)
        _G.SelectedSkills["Gun"]["X"] = Value
        _G.SaveData["Skill_Gun_X"] = Value
        SaveSettings()
        print("Gun X:", Value)
    end
})

-- Separador Blox Fruit
o:AddSeperator("Blox Fruit Skills")

o:AddToggle({
    Title = "Skill Z",
    Default = GetSetting("Skill_Fruit_Z", true), 
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"]["Z"] = Value
        _G.SaveData["Skill_Fruit_Z"] = Value
        SaveSettings()
        print("Fruit Z:", Value)
    end
})

o:AddToggle({
    Title = "Skill X",
    Default = GetSetting("Skill_Fruit_X", true), 
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"]["X"] = Value
        _G.SaveData["Skill_Fruit_X"] = Value
        SaveSettings()
        print("Fruit X:", Value)
    end
})

o:AddToggle({
    Title = "Skill C",
    Default = GetSetting("Skill_Fruit_C", true), 
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"]["C"] = Value
        _G.SaveData["Skill_Fruit_C"] = Value
        SaveSettings()
        print("Fruit C:", Value)
    end
})

o:AddToggle({
    Title = "Skill V",
    Default = GetSetting("Skill_Fruit_V", true), 
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"]["V"] = Value
        _G.SaveData["Skill_Fruit_V"] = Value
        SaveSettings()
        print("Fruit V:", Value)
    end
})

o:AddToggle({
    Title = "Skill F",
    Default = GetSetting("Skill_Fruit_F", true), 
    Callback = function(Value)
        _G.SelectedSkills["Blox Fruit"]["F"] = Value
        _G.SaveData["Skill_Fruit_F"] = Value
        SaveSettings()
        print("Fruit F:", Value)
    end
})

-- ========================================
-- ADICIONAR MAIS ELEMENTOS DE EXEMPLO
-- ========================================

o:AddSeperator("═══ Other Settings ═══")

o:AddToggle({
    Title = "Auto Observation Haki",
    Default = GetSetting("AutoKen", true),
    Callback = function(Value)
        _G.AutoKen = Value
        _G.SaveData["AutoKen"] = Value
        SaveSettings()
    end
})

o:AddToggle({
    Title = "Fast Attack",
    Default = GetSetting("FastAttack", true),
    Callback = function(Value)
        _G.FastAttack = Value
        _G.SaveData["FastAttack"] = Value
        SaveSettings()
    end
})

-- Dropdown
o:AddDropdown({
    Title = "Select Weapon Type",
    Description = "Choose your main weapon",
    Options = {"Melee", "Sword", "Gun", "Blox Fruit"},
    Default = GetSetting("WeaponType", "Melee"),
    Callback = function(Value)
        _G.WeaponType = Value
        _G.SaveData["WeaponType"] = Value
        SaveSettings()
        print("Weapon Type:", Value)
    end
})

-- Slider
o:AddSlider({
    Title = "Skill Delay",
    Description = "Delay between skills (seconds)",
    Min = 0,
    Max = 5,
    Default = GetSetting("SkillDelay", 0.5),
    Increment = 0.1,
    Callback = function(Value)
        _G.SkillDelay = Value
        _G.SaveData["SkillDelay"] = Value
        SaveSettings()
        print("Skill Delay:", Value)
    end
})

-- Button
o:AddButton({
    Title = "Reset All Skills",
    Description = "Reset all skill toggles to default",
    Callback = function()
        print("Resetting all skills...")
        -- Reset todos os toggles
        for weapon, skills in pairs(_G.SelectedSkills) do
            for skill, _ in pairs(skills) do
                _G.SelectedSkills[weapon][skill] = true
            end
        end
        print("All skills reset to enabled!")
    end
})

-- Parágrafo informativo
o:AddParagraph({
    Title = "ℹ️ How Skills Work",
    Content = "Enable/disable skills to customize which abilities your character will use during combat. The script will only use enabled skills."
})

print("✅ UI carregada com sucesso!")
print("📊 Skills configurados:", _G.SelectedSkills)
