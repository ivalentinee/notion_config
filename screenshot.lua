function screenshot_filename()
   local prefix = "screenshot"
   local datetime = os.date("%Y_%m_%d-%H_%M")
   local home_path = os.getenv("HOME")
   local screenshot_path = home_path .. "/screenshots"
   local extension = ".png"

   local filename = screenshot_path .. '/' .. prefix .. '-' .. datetime .. extension
   return filename
end

function make_screenshot()
   ioncore.exec('/usr/bin/import -window root ' .. screenshot_filename())
end

function make_current_window_screenshot()
   local windowname = WRegion.name(ioncore.current())
   ioncore.exec('/usr/bin/import -window "' .. windowname .. '" ' .. screenshot_filename())
end
