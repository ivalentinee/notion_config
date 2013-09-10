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
   ioncore.exec('/usr/bin/gnome-terminal --role=mpd -e ncmpcpp')
end

function start_dropbox()
   ioncore.exec('/usr/bin/dropbox start')
end

function start_chromium()
   ioncore.exec('/usr/bin/chromium')
end

function start_emacs()
   ioncore.exec('/usr/bin/emacs')
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
end

-- Menuentries
defmenu("apps",{
   menuentry("MPD", "start_mpd()"),
   menuentry("Init", "app_init(1)"),
})