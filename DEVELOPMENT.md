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
