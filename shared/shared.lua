Shared.MaxFrequency = 500.00 -- Max Limit of Radio Channel

Shared.Jammer = {
    state = true, -- to use jammer system or not 
    model = 'm23_2_prop_m32_jammer_01a', -- prop to spawn for jammer
    permission = {"police"}, -- permission how can setup jammer (job/gang)
    default = {}, -- default jammer setup location 
    range = {
        min = 10.0,
        max = 100.0,
        step = 5.0,
        default = 30.0
    }
}

Shared.RadioItem = {
    'radio',
    'wrench'
}

Shared.Battery = {
    state = true, -- to use battery system or not
    consume = 1, -- battery consume rate
    depletionTime = 1, -- in minute, every 1 minute battery will decrease by consume value
}

Shared.RadioNames = {
    ["1"] = "MRPD CH#1", -- channel value 1
    ["1.%"] = "MRPD CH#1", -- channel value 1.%%%% string formatter
    ["2"] = "MRPD CH#2",
    ["2.%"] = "MRPD CH#2",
    ["3"] = "MRPD CH#3",
    ["3.%"] = "MRPD CH#3",
    ["4"] = "MRPD CH#4",
    ["4.%"] = "MRPD CH#4",
    ["5"] = "MRPD CH#5",
    ["5.%"] = "MRPD CH#5",
    ["6"] = "MRPD CH#6",
    ["6.%"] = "MRPD CH#6",
    ["7"] = "MRPD CH#7",
    ["7.%"] = "MRPD CH#7",
    ["8"] = "MRPD CH#8",
    ["8.%"] = "MRPD CH#8",
    ["9"] = "MRPD CH#9",
    ["9.%"] = "MRPD CH#9",
    ["10"] = "MRPD CH#10",
    ["10.%"] = "MRPD CH#10",
    ["420"] = "Ballas CH#1",
    ["420.%"] = "Ballas CH#1",
    ["421"] = "LostMC CH#1",
    ["421.%"] = "LostMC CH#1",
    ["422"] = "Vagos CH#1",
    ["422.%"] = "Vagos CH#1",
}

Shared.RestrictedChannels = {
    [1] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [2] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [3] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [4] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [5] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [6] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [7] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [8] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [9] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [10] = { -- channel id
        type = 'job', -- job/gang
        name = {"police", "ambulance", "sasp", "sapr", "bcso"}
    },
    [420] = { -- channel id
        type = 'gang', -- job/gang
        name = {"ballas"}
    },
    [421] = { -- channel id
        type = 'gang', -- job/gang
        name = {"lostmc"}
    },
    [422] = {
        type = 'gang', -- job/gang
        name = {"vagos"}
    },
}

lib.locale()
