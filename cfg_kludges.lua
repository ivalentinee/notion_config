--
-- Options to get some programs work more nicely (or at all)
--

-- Stalonetray
defwinprop {
   class = "stalonetray",
   statusbar = "systray",
}

-- xxkb
defwinprop {
   class = "XXkb",
   statusbar = "systray_xxkb",
}

-- Chromium
defwinprop {
   class = "Chromium",
   role = "browser",
   target = "browser",
}

defwinprop {
   class = "Chromium",
   float = true,
}

-- Opera
defwinprop {
   class = "Opera",
   role = "browser",
   target = "browser",
}

defwinprop {
   class = "Opera",
   float = true,
}

-- Emacs
defwinprop {
   class = "Emacs",
   instance = "emacs",
   target = "dev",
}

-- MPD
defwinprop {
   role = "mpd",
   target = "music",
}

-- Transmission
defwinprop {
   class = "Transmission-gtk",
   instance = "transmission-gtk",
   target = "other",
}

-- Pidgin
defwinprop {
   class = "Pidgin",
   role = "conversation",
   target = "Notion WFrame<1>",
}

defwinprop {
   class = "Pidgin",
   role = "buddy_list",
   target = "Notion WFrame<5>",
}

-- Skype
defwinprop {
   class = "Skype",
   role = "ConversationsWindow",
   target = "Notion WFrame<1>",
}

defwinprop {
   class = "Skype",
   role = "CallWindow",
   target = "Notion WFrame<1>",
}

defwinprop {
   class = "Skype",
   target = "Notion WFrame<8>",
}


-- Default settings below
defwinprop{ 
   class = "Gimp",
   acrobatic = true,
}

defwinprop{
    class = "AcroRead",
    instance = "documentShell",
    acrobatic = true
}


defwinprop{
    class = "Xpdf",
    instance = "openDialog_popup",
    ignore_cfgrq = true,
}


-- Put all dockapps in the statusbar's systray, also adding the missing
-- size hints necessary for this to work.
defwinprop{
    is_dockapp = true,
    statusbar = "systray",
    max_size = { w = 64, h = 64},
    min_size = { w = 64, h = 64},
}

-- Make an exception for Docker, which sets correct size hints.
defwinprop{
    is_dockapp = true,
    class = "Docker",
    statusbar = "systray",
}


-- You might want to enable these if you really must use XMMS. 
--[[
defwinprop{
    class = "xmms",
    instance = "XMMS_Playlist",
    transient_mode = "off"
}

defwinprop{
    class = "xmms",
    instance = "XMMS_Player",
    transient_mode = "off"
}
--]]



-- Define some additional title shortening rules to use when the full
-- title doesn't fit in the available space. The first-defined matching 
-- rule that succeeds in making the title short enough is used.
ioncore.defshortening("(.*) - Mozilla(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*) - Mozilla", "$1$|$1$<...")
ioncore.defshortening("XMMS - (.*)", "$1$|...$>$1")
ioncore.defshortening("[^:]+: (.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("[^:]+: (.*)", "$1$|$1$<...")
ioncore.defshortening("(.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*)", "$1$|$1$<...")
