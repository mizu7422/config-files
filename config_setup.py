import subprocess
from pathlib import Path
import shutil

# Update these paths
PACMAN_PACKAGE_FILE = "pacman-installed.txt"
AUR_PACKAGE_FILE = "aur-installed.txt"
CONFIG_DIR = Path("config")
DEST_CONFIG_DIR = Path.home() / ".config"

def parse_packages(file_path):
    packages = []
    with open(file_path, "r") as f:
        for line in f:
            line = line.strip()
            if line and not line.startswith("#"):
                pkg = line.split()[0]
                packages.append(pkg)
    return packages

def install_packages(packages, use_yay=False):
    if not packages:
        return

    installer = ["yay"] if use_yay else ["sudo", "pacman"]
    cmd = installer + ["-S", "--noconfirm"] + packages
    print(f"Installing {len(packages)} packages using {'yay' if use_yay else 'pacman'}...")
    try:
        subprocess.run(cmd, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Failed to install packages: {e}")

def copy_config():
    if not CONFIG_DIR.exists():
        print(f"No config directory found at {CONFIG_DIR}. Skipping.")
        return

    DEST_CONFIG_DIR.mkdir(parents=True, exist_ok=True)

    for item in CONFIG_DIR.iterdir():
        dest = DEST_CONFIG_DIR / item.name
        if dest.exists():
            if dest.is_dir():
                shutil.rmtree(dest)
        shutil.move(str(item), str(dest))
        print(f"Copied {item} → {dest}")

def main():
    pacman_packages = parse_packages(PACMAN_PACKAGE_FILE)
    aur_packages = parse_packages(AUR_PACKAGE_FILE)

    install_packages(pacman_packages, use_yay=False)
    install_packages(aur_packages, use_yay=True)

    copy_config()

if __name__ == "__main__":
    main()

