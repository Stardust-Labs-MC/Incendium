from pathlib import Path
from tqdm import tqdm


def action(file_type):
    files = Path(".").rglob(file_type)
    loop = tqdm(list(files))

    for file in loop:
        loop.set_description(file.name)
        loop.set_postfix(action="Reading")
        contents = file.read_text()
        loop.set_postfix(action="Checking")
        if "starmute:" in contents or "nether:" in contents:
            loop.set_postfix(action="Replacing")
            contents = contents.replace(
                "starmute:", "incendium:").replace(
                "nether:", "incendium:"
            )

            loop.set_postfix(action="Writing")
            file.write_text(contents)


action("*.mcfunction")
action("*.json")
action("*.allay")
