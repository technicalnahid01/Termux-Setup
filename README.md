# Termux-Setup 🚀

![Termux Logo](https://img.shields.io/badge/Termux-000000?style=for-the-badge&logo=termux&logoColor=white)
![Shell Script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

A one-click setup script to supercharge your Termux environment with essential tools, development kits, and utilities!

## 🌟 Features

- **Auto-update** all existing packages
- **Essential Tools:** Git, cURL, Wget, Nano, Vim
- **Dev Environments:** Python, Node.js, Ruby, PHP, Go, Rust
- **SSH Setup:** Auto-generates Ed25519 key for GitHub
- **Extras:** Nmap, FFmpeg, Figlet, Neofetch
- **Storage Setup:** Prepares Termux storage access

## 🛠️ Installation Methods

### Method 1: Direct Install (One Command)
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/technicalnahid01/Termux-Setup/main/setup.sh)"
```

### Method 2: Manual Installation (Recommended for Developers)
```bash
git clone https://github.com/technicalnahid01/Termux-Setup
cd Termux-Setup
bash setup.sh
```

## 📦 Package List

| Category       | Packages Included                          |
|----------------|-------------------------------------------|
| Core Tools     | git, curl, wget, nano, vim                |
| Languages      | python, nodejs, ruby, php, golang, rust   |
| Dev Tools      | clang, make, cmake                        |
| Utilities      | nmap, ffmpeg, figlet, neofetch            |

## 🔧 Customization

Edit `setup.sh` before running to:
- Remove unwanted packages
- Add your own tools
- Change SSH key type (Ed25519 by default)

## 🚨 Troubleshooting

If you encounter issues:
1. Ensure you have stable internet
2. Run `termux-change-repo` if package installs fail
3. Check storage permissions

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

Made with ❤️ for Termux users! [Star ⭐ this repo](https://github.com/technicalnahid01/Termux-Setup) if you found it useful.
