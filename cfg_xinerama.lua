local screens = mod_xinerama.query_screens()

if (screens) then
    -- -- now you can edit the 'screens' table in lua,
    -- -- e.g.:
   -- local merged_screens = mod_xinerama.merge_contained_screens(screens)
   -- -- or (current behaviour):
   -- local merged_screens = mod_xinerama.merge_overlapping_screens(screens)
    -- -- and finally setup the screens:
   mod_xinerama.setup_screens(merged_screens)
end

-- function next_wrap()
--    scr = ioncore.goto_next_screen()
--    if obj_is(scr, "WRootWin") then
--       ioncore.goto_nth_screen(0)
--    end
-- end

-- function prev_wrap() 
--    scr = ioncore.goto_prev_screen()
--    if obj_is(scr, "WRootWin") then
--       ioncore.goto_nth_screen(-1)
--    end
-- end

-- defbindings("WScreen", {
--                bdoc("Go to next/previous screen on multihead setup."),
--                kpress(META.."Shift+comma", "prev_wrap()"),
--                kpress(META.."Shift+period", "next_wrap()"),
--             })