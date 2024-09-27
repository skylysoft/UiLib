

GetSubPrefix=function(a)
	local a=tostring(a):gsub(" ","");
	local bX="";
	if#a==2 then 
		local Yp=string.sub(a,#a,#a+1);
		bX=Yp=="1"and"st"or Yp=="2"and"nd"or Yp=="3"and"rd"or"th";
	end;
	return bX;
end;


-- Example Ui Here


local repo = 'https://raw.githubusercontent.com/skylysoft/UiLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'LinoriaLib.lua'))()






local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()



local h="%A, %B";local t=os.date(" %d",os.time());
local l=", %Y.";
h=os.date(h,os.time())..t..GetSubPrefix(t)..os.date(l,os.time());

local Window = Library:CreateWindow({
    Title = 'Example Naja',
    Center = true,
    AutoShow = true,
    TabPadding = 8
})


local Tabs = {
    Page1 = Window:AddTab('Main'),
    Page2 = Window:AddTab('Item'),
    Page3 = Window:AddTab('Shop'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}


local LeftGroupBox = Tabs.Page1:AddLeftGroupbox('Groupbox')

local TabBox = Tabs.Page1:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab('Tab 1')
local Tab2 = TabBox:AddTab('Tab 2')


LeftGroupBox:AddToggle('MyToggle', {
    Text = 'This is a toggle',
    Default = true,
    Tooltip = 'This is a tooltip',

    Callback = function(v)
        print(v);
    end
})


LeftGroupBox:AddSlider('MySlider', {
    Text = 'Stuts Point',
    Default = 3,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = false,

    Callback = function(v)
        print(v);
    end
})

LeftGroupBox:AddDropdown('MyDropdown', {
    Values = {"A,B,C,D,E"},
    Default = 0,
    Multi = false,

    Text = 'Select Stuts',
    Tooltip = 'Select Stuts',

    Callback = function(v)
        print(v);
    end
})


LeftGroupBox:AddButton({
    Text = 'Refesh Weapon',
    Func = function()
        print("Eiei")
        end,
    DoubleClick = false,
    Tooltip = 'Refesh Weapon'
})

















Library:SetWatermarkVisibility(true)

Library:SetWatermark('Skyly Hub Premium Script | '..tostring(h));




local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'Delete', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

SaveManager:BuildConfigSection(Tabs['UI Settings'])

ThemeManager:ApplyToTab(Tabs['UI Settings'])

SaveManager:LoadAutoloadConfig()
