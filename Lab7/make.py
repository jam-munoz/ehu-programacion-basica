
import argparse
import pathlib
import shutil
import subprocess

MAIN = "main.adb"
BUILD_DIR = pathlib.Path("build")
TARGET = "a.out"

def get_ada_files():
    return sorted(
        p for p in pathlib.Path(".").rglob("*")
        if p.is_file() and p.suffix.lower() in (".adb", ".ads")
    )

def build():
    files = get_ada_files()

    directories = sorted({str(p.parent) for p in files})

    main_file = next(
        (p for p in files if p.name.lower() == MAIN.lower()),
        None
    )

    if main_file is None:
        print(f"ERROR: No se encuentra {MAIN}")
        return

    BUILD_DIR.mkdir(parents=True, exist_ok=True)

    command = ["gnatmake"]

    command.extend(f"-I{directory}" for directory in directories)

    command.extend([
        "-D", str(BUILD_DIR),
        "-o", TARGET,
        str(main_file)
    ])

    print("Ejecutando:", " ".join(command))
    subprocess.run(command, check=True)

def clean():
    if BUILD_DIR.exists():
        shutil.rmtree(BUILD_DIR)

    target = pathlib.Path(TARGET)
    if target.exists():
        target.unlink()

    for pattern in ("*.ali", "*.o"):
        for file in pathlib.Path(".").rglob(pattern):
            file.unlink()

    print("Limpieza completada.")

def list_files():
    for file in get_ada_files():
        print(file)

parser = argparse.ArgumentParser()
parser.add_argument("command", choices=["all", "clean", "list"])
args = parser.parse_args()

if args.command == "all":
    build()
elif args.command == "clean":
    clean()
elif args.command == "list":
    list_files()
