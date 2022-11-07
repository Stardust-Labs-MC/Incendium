import nbtlib
from pathlib import Path
from tqdm import tqdm

import os

total_size = 0
for filepath in tqdm(list(Path("data").rglob("*.nbt")), unit="files"):
    total_size += os.stat(filepath).st_size

files = list(Path("data").rglob("*.nbt"))
pbar = tqdm(total=total_size, unit="B", unit_scale=True, unit_divisor=1024)
for file in files:
    pbar.set_description(f"Processing {file.name}")
    pbar.set_postfix(action="Loading")

    with nbtlib.load(file) as data:
        pbar.set_postfix(action="Unserializing")
        raw = data.root.snbt()

        pbar.set_postfix(action="Replacing")
        changed = raw.replace("incendium:", "incendium:").replace(
            "incendium:", "incendium:"
        )

        pbar.set_postfix(action="Serializing")
        data.root = nbtlib.parse_nbt(changed)

        pbar.set_postfix(action="Saving")

    pbar.update(file.stat().st_size)
