local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "Kenei UI",color = Color3.fromRGB(0,255,255)})

local Main_1_Page = window:page({name = "Main 1"})
local Main_2_Page = window:page({name = "Main 2"})

local Main_1_left = Main_1_Page:section({name = "General",side = "left",size = 1000})
local Main_1_right = Main_1_Page:section({name = "General",side = "right",size = 250})

local Main_2_left = Main_2_Page:section({name = "Main",side = "left",size = 250})
local Main_2_right = Main_2_Page:section({name = "Main",side = "left",size = 250})
Main_1_left:toggle({name = "Toggle",def = false,callback = function(vu)
    getgenv().Toggle = vu
end})

Main_1_left:button({name = "Button",callback = function()
   print('Button')
end})

local Default_Verse = 10
local Minimum_Verse = -10
local Maximum_Verse = 30
local Decimals_Verse = 10
Main_1_left:slider({name = "Slider", Default = 10, Minimum = -10, Maximum = 30, Decimals = 10, Suffix = "%", Callback = function(vu)
     getgenv().Slider = vu
end})
Main_1_left:toggle({name = "Toggle",def = false,callback = function(vu)
    getgenv().Toggle = vu
end})

Main_1_left:button({name = "Button",callback = function()
   print('Button')
end})

local Default_Verse = 10
local Minimum_Verse = -10
local Maximum_Verse = 30
local Decimals_Verse = 10
Main_1_left:slider({name = "Slider", Default = 10, Minimum = -10, Maximum = 30, Decimals = 10, Suffix = "%", Callback = function(vu)
     getgenv().Slider = vu
end})


local Mobile = nil or {}
local Mobile= {"1","2","3","4","5","6","7","8","9","10"}
Main_1_left:dropdown({name = "Dropdown",def = "",max = 10,options = Mobile,callback = function(vu)
   getgenv().dropdown = vu
end})

Main_1_left:buttonbox({name = "Buttonbox",def = "",max = 4, options = {"yoyoyo","yo2","yo3","yo4"},callback = function(value)

end})
Main_1_left:toggle({name = "Toggle",def = false,callback = function(vu)
    getgenv().Toggle = vu
end})

Main_1_left:button({name = "Button",callback = function()
   print('Button')
end})

local Default_Verse = 10
local Minimum_Verse = -10
local Maximum_Verse = 30
local Decimals_Verse = 10
Main_1_left:slider({name = "Slider", Default = 10, Minimum = -10, Maximum = 30, Decimals = 10, Suffix = "%", Callback = function(vu)
     getgenv().Slider = vu
end})
Main_1_left:multibox({name = "Multibox",def = {}, max = 4,options = {"1","2","3","4"},callback = function(value)

end})

Main_1_left:textbox({name = "Textbox",def = "default text",placeholder = "Enter WalkSpeed",callback = function(value)

end})

Main_1_left:keybind({name = "set ui keybind",def = nil,callback = function(key)
   window.key = key
end})

local picker = Main_1_left:colorpicker({name = "color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(value)
   color = value
end})
