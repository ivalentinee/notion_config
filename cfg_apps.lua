
-- App functions
function start_tray()
   ioncore.exec('/usr/bin/stalonetray')
end

function start_xxkb()
   ioncore.exec('/usr/bin/xxkb')
end

function start_wicd()
   ioncore.exec('/usr/bin/wicd-gtk -t')
end

function start_nm()
   ioncore.exec('/usr/bin/nm-applet')
end

function start_mpd()
   ioncore.exec('/usr/bin/x-terminal-emulator --role=mpd -e ncmpcpp')
end

function start_emacs()
   ioncore.exec('/usr/local/bin/emacs')
end

function start_dropbox()
   ioncore.exec('/usr/bin/dropbox start')
end

function start_chromium()
   ioncore.exec('/usr/bin/chromium')
end

function start_skype()
   ioncore.exec('/usr/bin/skype')
end

function start_pidgin()
   ioncore.exec('/usr/bin/pidgin')
end

-- Init function
function app_init(mode)
   start_tray()
   start_xxkb()
   -- start_wicd()
   start_nm()
   start_mpd()
   start_emacs()
   if mode > 0 then
      start_dropbox()
      start_chromium()
   end
   if mode > 1 then
      start_skype()
      start_pidgin()
   end
end

-- Menuentries
defmenu("apps",{
   menuentry("MPD", "start_mpd()"),
   menuentry("Init_0", "app_init(0)"),
   menuentry("Init_1", "app_init(1)"),
   menuentry("Init_2", "app_init(2)"),
})
