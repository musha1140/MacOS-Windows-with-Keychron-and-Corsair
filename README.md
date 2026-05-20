# Dell D3100 + Corsair Mac/Windows Setup

![DO NOT USE WITH TWO COMPUTERS](https://img.shields.io/badge/DO%20NOT%20USE%20WITH-TWO%20COMPUTERS-red?style=for-the-badge)
![PUBLIC NONSENSITIVE SETUP](https://img.shields.io/badge/PUBLIC%20REPO-NONSENSITIVE%20SETUP-blue?style=for-the-badge)

> [!CAUTION]
> **YOU CANNOT USE THE DELL D3100 DOCKING STATION WITH TWO SEPARATE COMPUTERS AT THE SAME TIME.**
>
> This repo is only for a public, non-sensitive setup guide.  
> It does not contain private tokens, cookies, API keys, credentials, or sensitive endpoint data.  
> The technology for controlling two computers from one keyboard/mouse setup exists elsewhere, usually through a software KVM, hardware KVM, or supported multi-device peripherals.
> These devices and accessores are known to overheat. Please check the cables frequently and disconnect if it is too hot.

## Purpose

This repository documents a clean setup for using a **Dell D3100 USB 3.0 DisplayLink Docking Station** with a **Corsair keyboard** and **Corsair SCIMITAR RGB ELITE mouse** across **macOS** and **Windows**.

This setup is meant for switching between machines, not running both machines through the dock at the same time.

## What This Setup Does

- Uses the **Dell D3100** as a USB 3.0 DisplayLink dock.
- Supports one active host computer at a time.
- Supports Windows with Dell/DisplayLink drivers.
- Supports macOS with DisplayLink Manager.
- Uses Corsair iCUE for supported Corsair keyboard and mouse configuration.
- Keeps the repo safe for public GitHub use by avoiding secrets and private API data.

## What This Setup Does Not Do

- It does not turn the Dell D3100 into a KVM switch.
- It does not allow two computers to use the Dell D3100 at the same time.
- It does not share one display connection across two active computers.
- It does not make Bluetooth-only Corsair devices fully configurable in iCUE.
- It does not guarantee every Corsair feature works identically on macOS and Windows.
- It does not store or expose private API keys, session cookies, tokens, or private endpoints.

## Hardware Used

| Device | Purpose |
|---|---|
| Dell D3100 USB 3.0 Docking Station | Dock for display, USB, Ethernet, and audio expansion |
| Corsair keyboard | Primary keyboard |
| Corsair SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse | Primary mouse |
| DisplayPort cable | Monitor connection from dock |
| HDMI cable or adapter | Optional monitor connection from dock |
| USB 3.0 upstream cable | Host connection between computer and D3100 |
| USB-A to USB-C adapter or cable | Needed if the Mac only has USB-C ports |

## Device Images

Update these image files so they match your actual hardware.

<div align="center">
    <img src="images/dell-d3100.png" alt="Dell D3100 USB 3.0 DisplayLink Docking Station" width="500">
    <p><strong>Dell D3100 USB 3.0 DisplayLink Docking Station</strong></p>
</div>

<div align="center">
    <img src="images/corsair-mouse.png" alt="Corsair SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse" width="300">
    <p><strong>Corsair SCIMITAR RGB ELITE Optical MOBA/MMO Gaming Mouse</strong></p>
</div>

<div align="center">
    <img src="images/corsair-keyboard.png" alt="Corsair keyboard" width="500">
    <p><strong>Corsair Keyboard</strong></p>
</div>

## Required Software

| Platform | Required Software | Purpose |
|---|---|---|
| Windows | Dell D3100 DisplayLink driver | Enables dock display, USB, Ethernet, and related dock features |
| Windows | Corsair iCUE | Configures Corsair keyboard/mouse profiles, DPI, lighting, and macros where supported |
| macOS | DisplayLink Manager | Enables DisplayLink display output from the D3100 |
| macOS | Corsair iCUE | Configures supported Corsair devices when connected by USB cable or supported receiver |

## Official Downloads

- Dell D3100 Drivers and Downloads: https://www.dell.com/support/product-details/en-us/product/dell-usb3-dock-3100/drivers
- Dell D3100 Manuals and Documents: https://www.dell.com/support/product-details/en-us/product/dell-usb3-dock-3100/resources/manuals
- DisplayLink macOS Downloads: https://www.synaptics.com/products/displaylink-graphics/downloads/macos
- Corsair iCUE Downloads: https://www.corsair.com/us/en/s/downloads
- Corsair SCIMITAR RGB ELITE Product Page: https://www.corsair.com/us/en/p/gaming-mouse/ch-9304211-na/scimitar-rgb-elite-optical-moba-mmo-gaming-mouse-ch-9304211-na

## Compatibility Notes

### Dell D3100

The Dell D3100 is a USB 3.0 DisplayLink dock. It uses a USB connection from the computer to drive dock-connected displays and peripherals.

Install the correct DisplayLink/Dell driver before expecting the display outputs to work.

### macOS

On macOS, DisplayLink Manager may require **Screen Recording** permission. This permission is used so DisplayLink can access the pixels needed to render an external display through USB.

Path:

```text
System Settings > Privacy & Security > Screen Recording > DisplayLink Manager
```

After enabling permission, quit and reopen DisplayLink Manager or restart the Mac.

### Corsair iCUE

Corsair iCUE can configure supported Corsair devices on both Windows and macOS.

For macOS, iCUE detection works best when the device is connected by USB cable or a supported wireless receiver. Bluetooth-only connection may allow basic typing or pointer movement, but it may not expose the device inside iCUE.

## macOS Setup

### 1. Install DisplayLink Manager

Download and install DisplayLink Manager for macOS:

```text
https://www.synaptics.com/products/displaylink-graphics/downloads/macos
```

Restart the Mac after installation.

### 2. Grant DisplayLink Permission

Open:

```text
System Settings > Privacy & Security > Screen Recording
```

Enable:

```text
DisplayLink Manager
```

Then quit and reopen DisplayLink Manager.

### 3. Install Corsair iCUE

Download and install Corsair iCUE:

```text
https://www.corsair.com/us/en/s/downloads
```

Connect the Corsair keyboard and mouse by USB cable or supported wireless receiver before configuring them.

### 4. Connect the Dock

Use this connection order:

1. Connect monitors to the Dell D3100 using DisplayPort and/or HDMI.
2. Connect keyboard and mouse to the D3100 USB ports.
3. Connect the D3100 power adapter.
4. Connect the D3100 USB 3.0 upstream cable to the Mac.
5. Use a USB-A to USB-C adapter or cable if the Mac does not have USB-A.

### 5. Verify macOS Display Output

Open:

```text
System Settings > Displays
```

Confirm the external monitor is detected.

### 6. Verify Corsair Devices

Open iCUE and confirm supported Corsair devices appear.

If a device does not appear:

- Connect it directly by USB cable.
- Avoid Bluetooth-only mode while configuring.
- Restart iCUE.
- Restart the Mac.
- Reconnect the D3100.

## Windows Setup

### 1. Install Dell D3100 Driver

Download and install the Dell D3100 driver:

```text
https://www.dell.com/support/product-details/en-us/product/dell-usb3-dock-3100/drivers
```

Restart Windows after installation.

### 2. Install Corsair iCUE

Download and install Corsair iCUE:

```text
https://www.corsair.com/us/en/s/downloads
```

Restart Windows if prompted.

### 3. Connect the Dock

Use this connection order:

1. Connect monitors to the Dell D3100 using DisplayPort and/or HDMI.
2. Connect keyboard and mouse to the D3100 USB ports.
3. Connect the D3100 power adapter.
4. Connect the D3100 USB 3.0 upstream cable to the Windows computer.

### 4. Verify Windows Detection

Open Device Manager and confirm the dock and peripherals are detected.

Useful check:

```powershell
Get-PnpDevice | Where-Object {
    $_.FriendlyName -match "DisplayLink|D3100|Corsair|SCIMITAR"
} | Select-Object Status, Class, FriendlyName
```

### 5. Configure Corsair Devices

Open iCUE and configure:

- Keyboard lighting
- Mouse DPI
- Mouse button assignments
- Onboard profiles where supported
- Macros where supported

## Switching Between macOS and Windows

This setup assumes one active machine at a time.

To switch computers:

1. Disconnect the Dell D3100 upstream USB cable from the current computer.
2. Connect the D3100 upstream USB cable to the other computer.
3. Wait for DisplayLink, USB, and input devices to initialize.
4. Confirm the display appears.
5. Confirm keyboard and mouse input works.
6. Open iCUE only if you need to change device profiles.

## Optional Software KVM Alternatives

Use these only if you want keyboard/mouse control across two active computers without physically moving the dock connection.

| Tool | macOS | Windows | Notes |
|---|---:|---:|---|
| Synergy | Yes | Yes | Paid software KVM |
| Input Leap | Yes | Yes | Open-source software KVM |
| Logitech Flow | Yes | Yes | Requires supported Logitech hardware |
| Mouse without Borders | No | Yes | Windows-only |

These tools share keyboard/mouse control over the network. They do not make the Dell D3100 itself a two-computer dock.

## Optional macOS Helper Script

This script checks for DisplayLink Manager and opens the correct macOS privacy settings page.

Save as:

```text
macos_check_displaylink.sh
```

```bash
#!/usr/bin/env bash
set -euo pipefail

APP_PATH="/Applications/DisplayLink Manager.app"

if [[ -d "$APP_PATH" ]]; then
    echo "DisplayLink Manager is installed."
else
    echo "DisplayLink Manager is not installed."
    echo "Download it from: https://www.synaptics.com/products/displaylink-graphics/downloads/macos"
    exit 1
fi

echo "Opening Screen Recording permissions."
open "x-apple.systempreferences:com.apple.preference.security?Privacy_ScreenCapture"

echo "Enable DisplayLink Manager, then quit and reopen DisplayLink Manager."
```

Run:

```bash
chmod +x macos_check_displaylink.sh
./macos_check_displaylink.sh
```

## Optional Windows Helper Script

This script checks for likely Dell D3100, DisplayLink, and Corsair devices.

Save as:

```text
windows_check_devices.ps1
```

```powershell
$ErrorActionPreference = "Stop"

Write-Host "Checking for DisplayLink, Dell D3100, Corsair, and SCIMITAR devices..."

$devices = Get-PnpDevice | Where-Object {
    $_.FriendlyName -match "DisplayLink|D3100|Dell USB|Corsair|SCIMITAR"
} | Select-Object Status, Class, FriendlyName

if (-not $devices) {
    Write-Host "No matching devices found. Check driver installation and USB connection."
    exit 1
}

$devices | Format-Table -AutoSize
```

Run PowerShell as normal user:

```powershell
powershell -ExecutionPolicy Bypass -File .\windows_check_devices.ps1
```

## Troubleshooting

### External Display Does Not Work on macOS

- Confirm DisplayLink Manager is installed.
- Confirm Screen Recording permission is enabled for DisplayLink Manager.
- Quit and reopen DisplayLink Manager.
- Restart the Mac.
- Reconnect the D3100.
- Try a different USB cable or USB-C adapter.

### External Display Does Not Work on Windows

- Install or reinstall the Dell D3100 driver.
- Restart Windows.
- Check Device Manager.
- Try a different USB port.
- Try a different monitor cable.

### Corsair Device Does Not Appear in iCUE

- Use USB cable instead of Bluetooth.
- Use a supported wireless receiver if applicable.
- Restart iCUE.
- Reconnect the device.
- Update iCUE.
- Try connecting the device directly to the computer instead of the dock.

### Keyboard and Mouse Work, but iCUE Does Not Detect Them

Basic HID input can work even when iCUE does not detect the device for configuration. For iCUE configuration, use USB cable or a supported receiver.

## Repository Safety Rules

Do not commit:

- API keys
- Session cookies
- Bearer tokens
- Private endpoint URLs
- Personal account data
- Device serial numbers
- Screenshots showing private account details
- Private network information

This repo should stay public-safe.

## Suggested Repository Name

```text
Dell-D3100-Corsair-Mac-Windows-Setup
```

Alternative:

```text
Corsair-D3100-Mac-Windows-Compatibility
```

## Status

Current target setup:

```text
Dell D3100 + Corsair keyboard + Corsair SCIMITAR mouse + macOS + Windows
```

Old Keychron references should be removed or moved into a separate legacy note. 


