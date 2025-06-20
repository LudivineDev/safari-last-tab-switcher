local safari = hs.application.get("Safari")
local previousTabIndex = nil
local currentTabIndex = nil

function switchToLastSafariTab()
    local safari = hs.appfinder.appFromName("Safari")
    if not safari then return end

    local script = [[
        tell application "Safari"
            set currentTab to current tab of front window
            set currentIndex to (index of currentTab)
        end tell
        return currentIndex
    ]]

    local success, result = hs.osascript.applescript(script)
    if success then
        previousTabIndex, currentTabIndex = currentTabIndex, tonumber(result)

        if previousTabIndex and previousTabIndex ~= currentTabIndex then
            local switchScript = string.format([[
                tell application "Safari"
                    set current tab of front window to tab %d of front window
                end tell
            ]], previousTabIndex)
            hs.osascript.applescript(switchScript)
        end
    end
end

-- Set your hotkey: Ctrl + \
hs.hotkey.bind({"ctrl"}, "\\", function()
    switchToLastSafariTab()
end)