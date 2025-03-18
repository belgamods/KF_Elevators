Config = {}

-------------------------------------------------------------------
-- FRAMEWORK SETTINGS
-------------------------------------------------------------------
Config.FrameWork = "esx" -- Options: "esx", "qbcore"

-------------------------------------------------------------------
-- UI SETTINGS
-------------------------------------------------------------------
Config.Colors = {
    primary   = "#00F8B8",  -- used for texts, borders, etc.
    background = "#1E7F7E",  -- used for container backgrounds and gradients
}
-------------------------------------------------------------------
-- MARKER SETTINGS
-------------------------------------------------------------------
Config.Marker = {
    DrawDistance = 12.0,       -- Maximum distance (in units) the marker is drawn
    InteractDistance = 2.0,      -- Distance required to interact with the elevator
    Type = 2,                  -- Marker type (2 is a common type, adjust as needed)
    Scale = vector3(0.3, 0.3, 0.2), -- Marker scale dimensions
    Color = { r = 255, g = 255, b = 255, a = 200 }  -- RGBA color of the marker
}

-------------------------------------------------------------------
-- ELEVATOR DATA CONFIGURATION
-------------------------------------------------------------------
Config.Elevators = {
    ['fbi'] = {
        {
            coords = vector3(114.83, -742.10, 257.15),
            heading = 341.01,
            label = "Roof"
        },
        {
            coords = vector3(136.14, -761.66, 241.15),
            heading = 159.56,
            label = "Offices"
        },
        {
            coords = vector3(136.24, -761.75, 44.75),
            heading = 154.56,
            label = "Ground Floor"
        }
    },
    ['solomon_office'] = {
        {
            coords = vector3(-1011.05, -479.65, 38.97),
            heading = 117.05,
            label = "Entrance"
        },
        {
            coords = vector3(-1002.75, -477.70, 49.03),
            heading = 112.72,
            label = "Office"
        }
    }
}