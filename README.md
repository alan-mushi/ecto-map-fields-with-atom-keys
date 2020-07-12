Dirty hack to force ecto map fields to return atoms keys after retrieval from
the database by wrapping the JSON library used by postgrex.

Without it, keys are decoded as strings: 945c7073c6616ebc7c931adf646585c0f83a772f [without_trick.txt](without_trick.txt)

With it, already defined atoms (due to the `:atoms!` option) are used for keys: cbdb3e8d4aba3d3874e18367d2ea5733a32f2591 [with_trick.txt](with_trick.txt)

This is kind of a work-around rather than a clean-cut solution ;)
