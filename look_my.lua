-- look_greyviolet.lua drawing engine configuration file for Notion.

if not gr.select_engine("de") then return end

de.reset()

de.defstyle("*", {
    shadow_colour = "#777777",
    highlight_colour = "#eeeeee",
    background_colour = "#aaaaaa",
    foreground_colour = "#000000",
    padding_pixels = 1,
    highlight_pixels = 1,
    shadow_pixels = 1,
    border_style = "elevated",
    -- transparent_background = true,
    font = "-*-terminus-medium-r-normal-*-17-*-*-*-*-*-*-*",
    text_align = "center",
})

de.defstyle("tab", {
    font = "-*-terminus-medium-r-normal-*-16-*-*-*-*-*-*-*",
    de.substyle("active-selected", {
        shadow_colour = "#333366",
        highlight_colour = "#aaaacc",
        background_colour = "#666699",
        foreground_colour = "#eeeeee",
    }),
    de.substyle("active-unselected", {
        shadow_colour = "#777777",
        highlight_colour = "#eeeeee",
        background_colour = "#aaaaaa",
        foreground_colour = "#000000",
    }),
    de.substyle("inactive-selected", {
        shadow_colour = "#777788",
        highlight_colour = "#eeeeff",
        background_colour = "#9999aa",
        foreground_colour = "#000000",
    }),
    de.substyle("inactive-unselected", {
        shadow_colour = "#777777",
        highlight_colour = "#eeeeee",
        background_colour = "#aaaaaa",
        foreground_colour = "#000000",
    }),
    text_align = "center",
})

de.defstyle("input", {
    de.substyle("*-cursor", {
        background_colour = "#000000",
        foreground_colour = "#aaaaaa",
    }),
    de.substyle("*-selection", {
        background_colour = "#666699",
        foreground_colour = "black",
    }),
})

-- Common settings for the "emboss" styles

de.defstyle("frame", {
    background_colour = "#000000",
    -- The special "inherit" value causes setting 'background_colour'
    -- above not to set padding_colour, but this colour being inherited.
    padding_colour = "inherit",
    de.substyle("quasiactive", {
        -- Something detached from the frame is active
        padding_colour = "#901010",
    }),
    de.substyle("userattr1", {
        -- For user scripts
        padding_colour = "#009010",
    }),
    border_style = "ridge",
    transparent_background = true,
    padding_pixels = 2,
    highlight_pixels = 1,
    shadow_pixels = 1,
    spacing = 1,
})

de.defstyle("frame-tiled", {
    border_style = "inlaid",
    transparent_background = true,
    padding_pixels = 1,
})

--de.defstyle("frame-tiled-alt", {
--    bar = "none",
--})

de.defstyle("frame-floating", {
    --bar = "shaped",
    spacing = 0,
})

de.defstyle("frame-transient", {
    --bar = "none",
    spacing = 0,
})

de.defstyle("actnotify", {
    shadow_colour = "#600808",
    highlight_colour = "#c04040",
    background_colour = "#b03030",
    foreground_colour = "#ffffff",
})

de.defstyle("tab", {
    de.substyle("*-*-*-unselected-activity", {
        shadow_colour = "#600808",
        highlight_colour = "#c04040",
        background_colour = "#901010",
        foreground_colour = "#eeeeee",
    }),
    
    de.substyle("*-*-*-selected-activity", {
        shadow_colour = "#600808",
        highlight_colour = "#c04040",
        background_colour = "#b03030",
        foreground_colour = "#ffffff",
    }),
    
    de.substyle("*-*-*-tabnumber", {
        background_colour = "black",
        foreground_colour = "green",
    }),
})


de.defstyle("tab-frame", {
    spacing = 1,
})

de.defstyle("tab-frame-floating", {
    spacing = 0,
})

de.defstyle("tab-frame-transient", {
    spacing = 0,
})

de.defstyle("tab-menuentry", {
    text_align = "left",
    highlight_pixels = 0,
    shadow_pixels = 0,
})

de.defstyle("tab-menuentry-big", {
    font = "-*-helvetica-medium-r-normal-*-17-*-*-*-*-*-*-*",
    padding_pixels = 7,
})


de.defstyle("stdisp", {
    shadow_pixels = 0,
    highlight_pixels = 0,
    text_align = "left",

    de.substyle("normal", {
        foreground_colour = "darkgreen"
    }),

    de.substyle("important", {
        foreground_colour = "darkblue",
    }),

    de.substyle("critical", {
        foreground_colour = "red",
    }),
})

gr.refresh()

