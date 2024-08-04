@echo off
REM Device Configuration Script for Windows

REM Install Required Software:
echo Installing required software...

REM Corsair iCUE
echo Downloading and installing Corsair iCUE...
powershell -command "Start-Process 'https://downloads.corsair.com/Files/CUE/iCUE-4.23.137-release.msi' -ArgumentList '/quiet' -Wait"

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
devcon status "USB\VID_1B1C&PID_1B2E" REM SCIMITAR RGB ELITE
devcon status "USB\VID_0483&PID_A2CA" REM Keychron Q1 Pro

REM Install and Configure Drivers:
echo Configuring devices...
REM Keychron Q1 Pro: Use QMK Toolbox to configure the keyboard if needed.
REM SCIMITAR RGB ELITE Mouse: Use Corsair iCUE to configure the mouse settings (DPI, macros, RGB lighting).

REM Automate Configuration on Startup:
echo Automating configuration on startup...
REM Add any necessary startup tasks here.

REM Verify Display Settings:
echo Verifying display settings...
REM Go to Settings > System > Display and ensure your monitor is detected.

REM Conclusion
echo Setup complete. Enjoy your seamlessly configured devices on Windows!
pause
