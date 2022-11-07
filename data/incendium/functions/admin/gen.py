import allay
from pathlib import Path


def main():
    parser = allay.Parser()

    for tellraw in Path(".").rglob("*.allay"):
        with tellraw.with_suffix(".mcfunction").open("w") as f:
            f.write("tellraw @s " + parser.parse(tellraw.read_text()))


if __name__ == "__main__":
    main()
