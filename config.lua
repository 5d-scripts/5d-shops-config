_CONFIG = 
{
    locale = "en", -- Remember to also change the UI to reflect your language of choice.
    Shops = 
    {
        {
            marker = 
            {
                enabled = true,
                scale = vector3(1.5, 1.5, 1.0),
                type = 1, -- https://docs.fivem.net/docs/game-references/markers/
                color = vector4(0,255,125,125),
                rotation = vector3(0, 0, 0),
                bobUpAndDown = false,
                faceCamera = false,
                rotate = false
            },
            ped = 
            {
                enabled = true,
                model = "s_m_y_dockwork_01", -- https://wiki.rage.mp/index.php?title=Peds
                scenario = "WORLD_HUMAN_CLIPBOARD", -- https://wiki.rage.mp/index.php?title=Scenarios
            },
            blip =
            {
                enabled = true,
                label = "Shop",
                sprite = 59, -- https://wiki.rage.mp/index.php?title=Blips
                color = 3, -- https://wiki.rage.mp/index.php?title=Blips
                asShortRange = true, -- true = only shows blip when player is close to it
                scale = 0.9
            },
            Categories = 
            {
                { name = "Tools", faIcon = "fa-screwdriver-wrench" }, -- Category Icons: https://fontawesome.com/search?o=r&m=free
                { name = "Foods", faIcon = "fa-burger" },
                { name = "Drinks", faIcon = "fa-bottle-water" },
                {name = "Weapons", faIcon = "fa-solid fa-gun"}
            },
            Items = 
            {
                -- Tools
                {label ="Medikit", name = "medikit", price = 30, category = "Tools"}, -- Recommended for item icons: https://www.flaticon.com/free-icons/ 
                {label ="Fixkit", name = "fixkit", price = 70, category = "Tools"},

                -- Foods
                {label ="Bread", name = "bread", price = 40, category = "Foods"},
                {label ="Banana", name = "banana", price = 40, category = "Foods"},
                {label ="Burger", name = "burger", price = 40, category = "Foods"},

                -- Drinks
                {label ="Water", name = "water", price = 10, category = "Drinks"},

                -- WEAPON
                {label ="Pistol", name = "WEAPON_PISTOL", price = 170, category = "Weapons", isWeapon = true},
            },
            locations = {vector4(-1073.0330, -273.1723, 36.6623, 212.5677)}
        }
    },
}

if (not IsDuplicityVersion()) then
    -- Notify event. Can be replaced.
    ---@param message string Message to be displayed for the notify.
    ---@param type string Notify type. Either success or errror.
    RegisterNetEvent("5d-shops:notify", function(message, type)
        ESX.ShowNotification(message)
    end)

    -- Help Notification. Can be repalced.
    ---@param message string Message to be displayed for the help notify. Is called every frame. Can be modified to be displayed only once (see comments).
    local isOpen = false
    RegisterNetEvent("5d-shops:helpNotify:show", function(message)
        ESX.ShowHelpNotification(message, true)

--[[         
        if(not isOpen) then
            isOpen = true
            -- Show UI
        end 
]]
    end)

    RegisterNetEvent("5d-shops:helpNotify:hide", function()
--[[         
        if(isOpen) then
            isOpen = false
            --Hide UI
        end 
]]
    end)
end

_LOCALE = {} -- dont touch

