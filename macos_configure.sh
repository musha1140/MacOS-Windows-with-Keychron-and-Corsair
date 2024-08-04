#!/bin/bash

# Device Configuration Script for macOS

# Install Required Tools:

# Homebrew:
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# XQuartz:
echo "Installing XQuartz..."
brew install --cask xquartz

# xinput:
echo "Installing xinput..."
brew install xinput

# Connect Devices:
echo "Connecting devices..."
# - Connect the USB-C to HDMI adapter to the Dell Dock.
# - Connect the DisplayPort output from the dock to your monitor.
# - Ensure the Keychron Q1 Pro is connected via Bluetooth or USB.
# - Connect the SCIMITAR RGB ELITE mouse to a USB port on the Dell Dock.

# Verify Device Connection:
echo "Verifying device connection..."
xinput list

# Create Configuration Script:
echo "Creating configuration script..."
cat << 'EOF' > configure_devices.sh
#!/bin/bash

# Find the device IDs
KEYCHRON_ID=$(xinput list | grep 'Keychron Q1 Pro' | awk '{print $6}' | sed 's/id=//')
SCIMITAR_ID=$(xinput list | grep 'SCIMITAR RGB ELITE' | awk '{print $6}' | sed 's/id=//')

# Configure Keychron Q1 Pro
xinput set-prop $KEYCHRON_ID "Device Accel Profile" 1

# Configure SCIMITAR RGB ELITE Mouse
xinput set-prop $SCIMITAR_ID "Device Accel Profile" -1

echo "Devices configured successfully."
EOF

chmod +x configure_devices.sh

# Automate Configuration on Startup:
echo "Automating configuration on startup..."
echo "~/path/to/configure_devices.sh" >> ~/.zshrc
source ~/.zshrc

# Verify Display Settings:
echo "Verifying display settings..."
# Go to System Preferences > Displays and ensure your monitor is detected.

# Conclusion
echo "Setup complete. Enjoy your seamlessly configured devices on macOS!"
