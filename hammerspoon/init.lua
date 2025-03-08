-- Function to switch input source
function switchInputSource(source)
    -- Get current input source ID and switch it
    hs.keycodes.currentSourceID(source)
    hs.alert.show("Switched to " .. source)
    
    -- Log the current input source
    local currentSourceName = hs.keycodes.currentSourceID()
    print("Current Input Source ID: " .. currentSourceName)
end

-- Hotkey for switching to English
hs.hotkey.bind({"ctrl", "cmd"}, "E", function()
    switchInputSource("com.apple.keylayout.US")  -- English input source
end)

-- Hotkey for switching to Chinese
hs.hotkey.bind({"ctrl", "cmd"}, "C", function()
    switchInputSource("com.apple.inputmethod.SCIM.ITABC")  -- Corrected Chinese input source ID
end)

-- Hotkey for switching to Japanese
hs.hotkey.bind({"ctrl", "cmd"}, "J", function()
    switchInputSource("com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese")  -- Corrected Japanese input source ID
end)

-- Hotkey for switching to Korean
hs.hotkey.bind({"ctrl", "cmd"}, "K", function()
    switchInputSource("com.apple.inputmethod.Korean.2SetKorean")  -- Corrected Korean input source ID
end)

-- Hotkey for opening Kitty terminal
hs.hotkey.bind({"ctrl", "cmd"}, "T", function()
    hs.application.launchOrFocus("kitty")
end)

-- Hotkey for opening LibreWolf
hs.hotkey.bind({"ctrl", "cmd"}, "L", function()
    hs.application.launchOrFocus("LibreWolf")
end)



-- Optional: Print current input source for debugging
hs.hotkey.bind({"ctrl", "cmd"}, "I", function()
    local currentSource = hs.keycodes.currentSourceID()
    print("Current Input Source ID: " .. currentSource)
end)

