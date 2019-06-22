def image_asm(name, csv, pngs = []):
    sources = [csv] + pngs
    native.genrule(
        name = name,
        srcs = sources,
        outs = [name + ".asm"],
        cmd = "echo example $(SRCS) example > $@")
