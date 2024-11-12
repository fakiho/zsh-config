
# Zsh Configuration Backup and Restore

This repository contains the backup of your Zsh configuration files. Follow the steps below to restore the configuration on another MacBook, configure the theme, and set the appropriate terminal font.

## Steps to Restore the Configuration

1. **Clone the Repository:**

   Clone this repository to your home directory.

   ```sh
   git clone https://github.com/yourusername/zsh-config.git ~/zsh-config
   ```

2. **Copy the Configuration Files:**

   Copy the configuration files from the cloned repository to their appropriate locations.

   ```sh
   cp -r ~/zsh-config/.zshrc.d ~/.zshrc.d
   cp ~/zsh-config/.zshrc ~/.zshrc
   ```

3. **Install Oh My Zsh:**

   If Oh My Zsh is not already installed, install it.

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

4. **Install Powerline or Nerd Fonts:**

   To ensure the Agnoster theme icons render correctly, install Powerline or Nerd Fonts. Here are the steps to install Powerline fonts:

   ```sh
   git clone https://github.com/powerline/fonts.git --depth=1
   cd fonts
   ./install.sh
   cd ..
   rm -rf fonts
   ```

   Alternatively, you can install Nerd Fonts by downloading them from the [Nerd Fonts website](https://www.nerdfonts.com/font-downloads) and following the installation instructions.

5. **Set the Terminal Font:**

   - **For Terminal.app:**
     1. Open Terminal Preferences (`Cmd` + `,`).
     2. Under the `Profiles` tab, select the profile you are using.
     3. Go to the `Text` tab.
     4. Click on `Change...` under the `Font` section.
     5. Select a Powerline or Nerd Font (e.g., `Meslo LG S for Powerline`).

   - **For iTerm2:**
     1. Open iTerm2 Preferences (`Cmd` + `,`).
     2. Go to the `Profiles` tab and select your profile.
     3. Under the `Text` tab, click on `Change Font`.
     4. Select a Powerline or Nerd Font.

6. **Source the `.zshrc` File:**

   Finally, source your `.zshrc` file to apply the configurations.

   ```sh
   source ~/.zshrc
   ```

## How to Configure the Theme

The theme is set in your `.zshrc` file. This repository is configured to use the Agnoster theme. If you want to change the theme, modify the `ZSH_THEME` variable in your `.zshrc` file.

```sh
nano ~/.zshrc
```

Find the line that contains `ZSH_THEME` and change it to your preferred theme.

```sh
ZSH_THEME="agnoster"  # Change "agnoster" to your desired theme
```

Save the file and source it to apply the changes.

```sh
source ~/.zshrc
```

## How to Change the Font for the Terminal

To ensure the icons and symbols render correctly in your terminal, you need to use a Powerline or Nerd Font.

### For Terminal.app

1. Open Terminal Preferences (`Cmd` + `,`).
2. Under the `Profiles` tab, select the profile you are using.
3. Go to the `Text` tab.
4. Click on `Change...` under the `Font` section.
5. Select a Powerline or Nerd Font (e.g., `Meslo LG S for Powerline`).

### For iTerm2

1. Open iTerm2 Preferences (`Cmd` + `,`).
2. Go to the `Profiles` tab and select your profile.
3. Under the `Text` tab, click on `Change Font`.
4. Select a Powerline or Nerd Font.

## Additional Resources

- [Oh My Zsh](https://ohmyz.sh/)
- [Powerline Fonts](https://github.com/powerline/fonts)
- [Nerd Fonts](https://www.nerdfonts.com/)

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

