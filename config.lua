Zones = {
    -- Start safezones
    -- Central Garage using sphere system
    [1] = { --
        ['zone'] = {
            ['type'] = 'sphere', -- avaiable types: box, sphere, poly
            ['thickness'] = 2,
            ['debug'] = false,
            -- if a sphere zone
            ['radius'] = 70.0,
            -- if a box zone
            ['size'] = vec3(1, 1, 1),
            ['rotation'] = 45.0,
            ['coords'] = {
                vec3(-348.789551, -874.373169, 31.318018),
            },
            ['action'] = {
                onEnter = function(self)
                    -- You can add notifications, for example:
                    --exports['mythic_notify']:PersistentAlert('start', 'safezoneAlert', 'success', 'You are in a safezone.')
                end,
                onExit = function(self)
                    -- You can add notifications, for example:
                    --exports['mythic_notify']:PersistentAlert('end', 'safezoneAlert')
                    --exports['mythic_notify']:DoCustomHudText('error', 'You left safezone? wtf', 3500)
                    ExitSafezone(self)
                end,
                inside = function(self)
                    InsideSafeZone(self)
                end,
            },
        },
        ['blip'] = {
            ['blip_radius'] = {
                ['enabled'] = true,
                ['coords'] = {
                    ['X'] = -348.789551,
                    ['Y'] = -874.373169,
                    ['Z'] = 31.318018,
                },
                ['color'] = 80,
                ['radius'] = 70.0,
                ['alpha'] = 70,
            },
            ['blip_marker'] = {
                ['enabled'] = false,
                ['coords'] = {
                    ['X'] = 255.250198,
                    ['Y'] = 226.070358,
                    ['Z'] = 101.882225,
                },
                ['color'] = 0,
                ['scale'] = 1.0,
                ['display'] = 1,
                ['sprite'] = 108,
                ['text'] = 'Safezone',
            },
        },
    },
    -- Casino using Poly
    [2] = {
        ['zone'] = {
            ['type'] = 'poly', -- avaiable types: box, sphere, poly
            ['thickness'] = 64,
            ['debug'] = false,
            -- if a sphere zone
            ['radius'] = 60.0,
            -- if a box zone
            ['size'] = vec3(1, 1, 1),
            ['rotation'] = 45.0,
            ['coords'] = {
                vec3(926.0, 80.0, 79.0),
                vec3(949.34997558594, 108.65000152588, 79.0),
                vec3(1021.650024414, 63.0, 79.0),
                vec3(964.95001220704, -26.5, 79.0),
                vec3(968.65002441406, -28.75, 79.0),
                vec3(962.65002441406, -38.849998474122, 79.0),
                vec3(872.5, 17.85000038147, 79.0),
            },
            ['action'] = {
                onEnter = function(self)
                    print('[DEBUG] Entered casino.')
                    SwitchDimension(16000) -- Switch to custom dimension
                end,
                onExit = function(self)
                    print('[DEBUG]: Exiting casino')
                    SwitchDimension(1) -- Switch to default dimension
                end,
                inside = function(self)
                    InsideSafeZone(self)
                end,
            },
        },
        ['blip'] = {
            ['blip_radius'] = {
                ['enabled'] = false,
                ['coords'] = {
                    ['X'] = 961.608521,
                    ['Y'] = 47.366985,
                    ['Z'] = 95.833252,
                },
                ['color'] = 80,
                ['radius'] = 60.0,
                ['alpha'] = 70,
            },
            ['blip_marker'] = {
                ['enabled'] = true,
                ['coords'] = {
                    ['X'] = 961.608521,
                    ['Y'] = 47.366985,
                    ['Z'] = 95.833252,
                },
                ['color'] = 0,
                ['scale'] = 0.8,
                ['display'] = 4,
                ['sprite'] = 680,
                ['text'] = 'Casino',
            },
        },
    },
}