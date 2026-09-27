# 🚀 Kaitradz's CachyOS + Hyprland Dotfiles

A fully automated, production-ready Hyprland desktop environment configured with **Lua**, **Caelestia Shell**, and custom aesthetics.

---

## 💻 System Specs & Environment

* **OS:** CachyOS (Arch-based)
* **Window Manager:** Hyprland (Lua Configuration)
* **Shell & Bar:** Caelestia Shell (`quickshell -c caelestia`)
* **Terminal:** Kitty
* **File Manager:** Dolphin
* **Browser:** Brave
* **Aesthetics:** Custom Gaps, Rounding (8px), Blur Effects, and CRT Screen Shader

---

## 📥 Quick Installation

To replicate this exact setup on your system, open your terminal and run:

```bash
git clone [https://github.com/Kaitradz/dotfiles.git](https://github.com/Kaitradz/dotfiles.git) ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh

```

> **Note:** The installer automatically creates a timestamped backup of your existing `~/.config` folder in `~/.config-backups/` before applying these dotfiles.

---

## ⌨️ Keybindings & Controls

### 🚀 Applications & Launchers

| Shortcut | Action |
| --- | --- |
| `SUPER` + `T` | Open Kitty Terminal |
| `SUPER` + `D` | Open Rofi Application Launcher |
| `SUPER` + `E` | Open Dolphin File Manager |
| `SUPER` + `B` | Open Brave Web Browser |
| `SUPER` + `C` | Open GNOME Calculator |
| `SUPER` + `Return` | Open GNOME Text Editor |

---

### 🪟 Window Management

| Shortcut | Action |
| --- | --- |
| `SUPER` + `Q` | Close Active Window |
| `SUPER` + `F` | Toggle Fullscreen |
| `SUPER` + `Space` | Toggle Floating Mode (Auto-Centered & Resized) |
| `SUPER` + `H` / `J` / `K` / `L` | Focus Window (Left / Down / Up / Right) |
| `SUPER` + `SHIFT` + `H` / `J` / `K` / `L` | Move Active Window Position |
| `SUPER` + `CTRL` + `H` / `J` / `K` / `L` | Resize Active Window |
| `SUPER` + `1` – `0` | Switch Workspace 1–10 |
| `SUPER` + `SHIFT` + `1` – `0` | Move Window to Workspace 1–10 |

---

### 🛠 System, Shell & Utilities

| Shortcut | Action |
| --- | --- |
| `Delete` | Region Screenshot to Clipboard (`hyprshot`) |
| `SUPER` + `SHIFT` + `S` | Toggle CRT Screen Shader (`crt.glsl`) |
| `SUPER` + `O` | Run Opacity Script |
| `SUPER` + `GRAVE` (`~`) | Toggle Caelestia Session Drawer |
| `SUPER` + `SHIFT` + `W` | Toggle Caelestia Shell Bar |
| `SUPER` + `V` | Open Clipboard History (Rofi + Cliphist) |
| `SUPER` + `W` | Open Waypaper (Wallpaper Manager) |
| `SUPER` + `R` | Toggle GPU Screen Recorder |
| `SUPER` + `X` | Switch Keyboard Layout (`us` / `latam`) |
| `SUPER` + `TAB` | Lock Session |
| `SUPER` + `SHIFT` + `E` | Exit Hyprland |

---

## 🔧 Features & System Tweaks

* **Lua Config Architecture:** Modular configuration split into `monitors.lua`, `keybinds.lua`, `rules.lua`, and `hyprland-gui.lua`.
* **Caelestia Shell Integration:** Replaces default Waybar setups to prevent top-bar overlapping issues.
* **Auto-Centered Floating Rules:** Pre-configured floating and sizing rules for `Pavucontrol`, `Waypaper`, `GNOME Calculator`, and file pickers.
* **Smart Audio & Media Handling:** Dedicated keys for PipeWire volume control (`wpctl`), brightness (`brightnessctl`), and media playback (`playerctl`).

```

```
