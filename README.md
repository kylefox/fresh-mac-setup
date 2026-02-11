# Fresh Mac Setup

Scripts to automate setting up a new Mac.

## Usage

It is recommended you update macOS to the latest version before running the setup script:

```bash
softwareupdate --install --all
```

Then run the script:

```bash
git clone https://github.com/kylefox/fresh-mac-setup.git
cd fresh-mac-setup
./setup.sh
```

This will:

1. Install Xcode Command Line Tools
2. Install Homebrew
3. Install packages and apps from the `Brewfile`
