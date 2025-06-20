# Safari Last Tab Switcher

A simple Hammerspoon script that lets you quickly toggle between the last two active Safari tabs using a keyboard shortcut.  

If you often switch back and forth between two tabs while browsing, this script saves you time and clicks by instantly jumping to your previous tab — no need to manually search or click tabs.

---

## 🚀 Installation

### 1. Install Hammerspoon

Hammerspoon is a free macOS automation tool. Here's how to install it:

1. Download the latest Hammerspoon `.zip` file from the official release page:  
   👉 [Hammerspoon 1.0.0](https://github.com/Hammerspoon/hammerspoon/releases/tag/1.0.0)

2. Open the downloaded `.zip` file — it will extract a file called `Hammerspoon.app`

3. Move `Hammerspoon.app` into your **Applications** folder

4. Double-click `Hammerspoon.app` to launch it

5. When prompted, **grant accessibility permissions**:
   - Go to **System Settings > Privacy & Security > Accessibility**
   - Click the `+` button if needed and add **Hammerspoon**
   - Make sure the checkbox is **enabled**

---

### 2. Add the Script

1. Download or copy this repository

2. Open the Hammerspoon config folder:

   - Click the 🔨 **Hammerspoon menu bar icon** (top-right of your screen)
   - Select **"Open Config"** — this opens a folder called `~/.hammerspoon`

3. Copy the file `init.lua` from this repository into that folder, replacing any existing one.

4. Back in the menu, click **“Reload Config”**

---

### 3. Use It!

1. Open Safari
2. Switch to any two tabs
3. Press `Ctrl + \`  
   🔁 It will jump back and forth between the two last used tabs!

---

### 🛠 Troubleshooting

- **No Hammerspoon icon?** Reopen the app from `/Applications` and make sure it has permissions.
- **Shortcut not working?** Make sure Safari is the active app and you've pressed `Ctrl + \` (backslash).
- Still stuck? Open Hammerspoon → Click **Console** to check for errors.

---

## Customization

Change the shortcut by editing the `hs.hotkey.bind` line in `init.lua`.

---

## License

MIT License
