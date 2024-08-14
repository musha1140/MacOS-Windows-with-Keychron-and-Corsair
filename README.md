' # Keychron-Corsair-Dual-Compatibility

**How to pair BOTH keyboard and mouse to seamlessly use your Mac and Windows within a touch of a switch**

<div align="center">
    <img src="images/corsair.png" alt="SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse" width="300" height="300">
    <p><a href="https://www.corsair.com/us/en/p/gaming-mouse/ch-9304211-na/scimitar-rgb-elite-optical-moba-mmo-gaming-mouse-ch-9304211-na">SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse</a></p>
</div>

' ~~~
<div align="center">
    <img src="images/keychron.png" alt="Keychron Q1 Pro" width="600" height="300">
    <p><a href="https://www.keychron.com/products/keychron-q1">Keychron Q1 Pro</a></p>
</div>
' ~~~

**Update:** The Keychron Q1 Pro has been returned. I'm now using a Corsair replacement keyboard, which integrates more seamlessly with my existing Corsair mouse setup.

<div align="center">
    <img src="images/dell.png" alt="Dell Performance Dock WD19DCS" width="500" height="300">
    <p><a href="https://www.dell.com/en-us/shop/dell-performance-dock-wd19dcs/apd/210-azbn/docks">Dell Performance Dock WD19DCS</a></p>
</div>

<div align="center">
    <img src="images/usbctohdmi.png" alt="C2G 6ft USB-C to HDMI Adapter Cable" width="300" height="300">
    <p><a href="https://www.dell.com/en-us/shop/c2g-6ft-usb-c-to-hdmi-adapter-cable-4k-60hz/apd/aa243620/pc-accessories">C2G 6ft USB-C to HDMI Adapter Cable</a></p>
</div>

<div align="center">
    <img src="images/displayport.png" alt="DisplayPort to DisplayPort Cable" width="300" height="300">
    <p><a href="https://www.amazon.com/Cable-Matters-DisplayPort-DisplayPort-6-Feet/dp/B005H3Q59U/">DisplayPort to DisplayPort Cable</a></p>
</div>

**Device Configuration Setup for macOS and Windows**

' ~This guide provides a step-by-step approach to setting up your Keychron Q1 Pro wireless keyboard (running QMKVIA) and SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse through a Dell USB Dock on both macOS and Windows.~

**Update:** Now focusing on setting up a seamless workflow for the **Corsair replacement keyboard** and SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse on both macOS and Windows.

If you prefer to skip the detailed steps and just run scripts to automate the setup, use the following scripts:

- [Script for macOS](https://github.com/musha1140/Keychron-Corsair-dual-Combability/blob/main/macos_configure.sh)
- [Script for Windows](https://github.com/musha1140/Keychron-Corsair-dual-Combability/blob/main/windows_setup.bat)

**Steps for macOS**

### Install Required Tools:

**Homebrew:**
~sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
~

**XQuartz:**
~sh
brew install --cask xquartz
~

**xinput:**
~sh
brew install xinput
~

**Connect Devices:**

- Connect the USB-C to HDMI adapter to the Dell Dock.
- Connect the DisplayPort to DisplayPort cable from the dock to your monitor.
- **Ensure the Corsair replacement keyboard is connected via Bluetooth or USB.**
- Connect the SCIMITAR RGB ELITE mouse to a USB port on the Dell Dock.

**Verify Device Connection:**

Use Terminal to list all connected input devices:
~sh
xinput list
~

**Create Configuration Script:**

Create and make the script executable:
~sh
nano configure_devices.sh
chmod +x configure_devices.sh
~

Add the following content to the script:
~sh
cat << 'EOF' > configure_devices.sh
#!/bin/bash

' Find the device IDs
CORSAIR_KEYBOARD_ID=$(xinput list | grep 'Corsair' | awk '{print $6}' | sed 's/id=//')
SCIMITAR_ID=$(xinput list | grep 'SCIMITAR RGB ELITE' | awk '{print $6}' | sed 's/id=//')

' Configure Corsair Keyboard
xinput set-prop $CORSAIR_KEYBOARD_ID "Device Accel Profile" 1

' Configure SCIMITAR RGB ELITE Mouse
xinput set-prop $SCIMITAR_ID "Device Accel Profile" -1

echo "Devices configured successfully."
EOF
~

**Automate Configuration on Startup:**

Add script execution to your shell profile:
~sh
nano ~/.zshrc
echo "~/path/to/configure_devices.sh" >> ~/.zshrc
source ~/.zshrc
~

**Verify Display Settings:**

Go to System Preferences > Displays and ensure your monitor is detected.

**Steps for Windows**

### Install Required Software:

- **Corsair iCUE**: Download and install from [Corsair iCUE](https://www.corsair.com/us/en/icue).
- ~QMK Toolbox: Download and install from [QMK Toolbox](https://qmk.fm/toolbox/).~ (No longer needed for Keychron)

### Connect Devices:

- Connect the USB-C to HDMI adapter to the Dell Dock.
- Connect the DisplayPort to DisplayPort cable from the dock to your monitor.
- **Ensure the Corsair replacement keyboard is connected via Bluetooth or USB.**
- Connect the SCIMITAR RGB ELITE mouse to a USB port on the Dell Dock.

### Install and Configure Drivers:

- **Corsair replacement keyboard**: Use Corsair iCUE to configure the keyboard if needed.
- SCIMITAR RGB ELITE Mouse: Use Corsair iCUE to configure the mouse settings (DPI, macros, RGB lighting).

**Verify Device Connection:**

Open Device Manager and ensure both devices are recognized.
If using Bluetooth, go to Settings > Devices > Bluetooth & other devices to ensure the Corsair keyboard is paired.

**Display Settings:**

Right-click on the desktop and select "Display settings".
Ensure your monitor is detected and adjust settings as needed.

**Unified Workflow for Both Operating Systems**

### Cross-Platform Software:

Corsair iCUE is available for both macOS and Windows. Use this tool to configure your devices consistently across both systems.

### Configuration Synchronization:

- **Corsair replacement keyboard**: Ensure the Corsair iCUE configuration is saved, which will work on both operating systems.
- SCIMITAR RGB ELITE Mouse: Save profiles in Corsair iCUE, which can be imported/exported between systems if needed.

### Physical Connections:

Ensure the Dell Dock is properly connected to your monitor via DisplayPort and the USB-C to HDMI adapter is correctly connected.
Check device connections each time you switch between macOS and Windows.

### Script Automation (macOS):

Automate device configuration with a script on macOS to ensure settings are applied each time you boot.

**Scripts**

- [Script for macOS](https://github.com/musha1140/Keychron-Corsair-dual-Combability/blob/main/macos_configure.sh)
- [Script for Windows](https://github.com/musha1140/Keychron-Corsair-dual-Combability/blob/main/windows_setup.bat)

**Explanation:**

**macOS Script:**

- The script installs necessary tools using Homebrew.
- It connects the devices and verifies their connection using `xinput list`.
- It creates and makes executable a configuration script (`configure_devices.sh`).
- It adds the configuration script to `.zshrc` for automatic execution on startup.
- It verifies the display settings.
- It runs the configuration script to validate the configuration.

**Windows Script:**

- The script installs necessary software (Corsair iCUE) using PowerShell.
- It connects the devices and verifies their connection using `Get-PnpDevice`.
- It includes placeholder comments for configuring devices and automating configuration on startup.
- It verifies the display settings.
- It includes a placeholder comment for validating the configuration.

**How to pair BOTH keyboard and mouse to seamlessly use your Mac and Windows within a touch of a switch**

![Workflow Diagram](https://github.com/musha1140/MacOS-Windows-with-Keychron-and-Corsair/blob/main/images/keysair.drawio.png)

By following these steps, you leverage the power of modern input device configuration tools, cross-platform firmware customization, and peripheral connectivity technologies. This ensures your **Corsair replacement keyboard** and SCIMITAR RGB ELITE mouse are correctly set up and configured for use on both macOS and Windows, providing a seamless and consistent experience when switching between operating systems.

**Hardware Used**

- [Corsair](https://www.corsair.com/) for the SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse.
- ~Keychron~ **Corsair** for the **replacement keyboard**.
- [Dell](https://www.dell.com/) for the Dell Performance Dock WD19DCS.
- [C2G](https://www.c2g.com/) for the USB-C to HDMI Adapter Cable.
