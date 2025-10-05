# Development

## Prerequisites

- install __"ISF by Vidvox"__ in Max `File > Show Package Manager`
- configure [maxdiff](https://github.com/Ableton/maxdevtools/tree/main/maxdiff)

## Diff

```bash
git --no-pager diff "./*.amxd" "./*.maxpat"
```

## Batch freezing

Requires preparation, see [scripts/freeze.scpt](./scripts/freeze.scpt)

```shell
npm script freeze
```

## Shaders

Do not use keywords (like `size`, `float`, `int`, ...) in ISF `NAME` property

## Assets

```shell
chmod +x ./scripts/assets/images_download.sh
./scripts/assets/images_download.sh ./scripts/assets/images.tsv
```

```shell
chmod +x ./scripts/assets/images_convert.sh
./scripts/assets/images_convert.sh
```

## Lessons 

Does not work for user created packs? :()

- [Add Your Own Lessons](https://forum.ableton.com/viewtopic.php?p=1222009#p1222009)

Supports metadata but not packs :(

- [kmontag/alpax](https://github.com/kmontag/alpax)
