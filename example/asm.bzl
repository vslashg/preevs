def image_asm(name, csv, pngs = []):
    sources = ["//tool", csv] + pngs
    native.genrule(
        name = name,
        srcs = sources,
        outs = [name + ".asm"],
        cmd = "$(location //tool) $(SRCS) > $@")
