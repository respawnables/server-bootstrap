# Ubuntu 22.04 Server Bootstrap Script

## Overview

This script (`install.sh`) automates the setup of essential tools—Jenkins, JDK, and Docker—on an Ubuntu 22.04 server. The script is intended to streamline the installation process for these tools, enhancing the server's functionality.

## Usage

### Prerequisites

- This script is specifically designed for Ubuntu 22.04 systems.
- Ensure the `install.sh` file has executable permissions:
  
  ```bash
  sudo chmod +x install.sh
  ```

### Running the Script

- Open the terminal on your Ubuntu 22.04 server.

- Navigate to the directory containing the `install.sh` file.

- Execute the script using sudo:

  ```bash
  sudo ./install.sh
  ```
  
- The script performs the following tasks:

  - Updates and upgrades the system packages.
  - Grants execute permissions to files within the src directory.
  - Installs Docker, JDK, and Jenkins.
  - Displays essential information, including JAVA_HOME and the Jenkins initialization password.
  - Automatically restarts the server after a 10-second countdown.

### Important Notes

- Ensure you have necessary permissions and understand the implications of using sudo.
- This script assumes execution on an Ubuntu 22.04 server. Running it on a different system may result in unexpected behavior.

### Disclaimer

- Exercise caution when using this script. Review its contents to confirm compatibility with your system's requirements and security protocols.
