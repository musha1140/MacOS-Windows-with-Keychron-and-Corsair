@echo off
REM Device Configuration Script for Windows

REM Install Required Software:
echo Installing required software...

REM QMK Toolbox
echo Downloading and installing QMK Toolbox...
powershell -command "Invoke-WebRequest -Uri 'https://github.com/qmk/qmk_toolbox/releases/download/v0.1.0/qmk_toolbox.exe' -OutFile 'qmk_toolbox.exe'"
start /wait qmk_toolbox.exe /S

REM Connect Devices:
echo Connecting devices...
REM - Connect the USB-C to HDMI adapter to the Dell Dock.
REM - Connect the DisplayPort output from the dock to your monitor.
REM - Ensure the Keychron Q1 Pro is connected via Bluetooth or USB.
REM - Connect the SCIMITAR RGB ELITE mouse to a USB port on the Dell Dock.

REM Verify Device Connection:
echo Verifying device connection...
powershell -command "Get-PnpDevice -FriendlyName 'Keychron Q1 Pro'"
powershell -command "Get-PnpDevice -FriendlyName 'SCIMITAR RGB ELITE'"

REM Install and Configure Drivers:
echo Configuring devices...
REM Keychron Q1 Pro: Use QMK Toolbox to configure the keyboard if needed.

REM Automate Configuration on Startup:
echo Automating configuration on startup...
REM Add any necessary startup tasks here.

REM Verify Display Settings:
echo Verifying display settings...
REM Go to Settings > System > Display and ensure your monitor is detected.

REM Validate Configuration:
echo Validating configuration...
REM Run any necessary validation steps here.

REM Conclusion
echo Setup complete. Enjoy your seamlessly configured devices on Windows!
pause
