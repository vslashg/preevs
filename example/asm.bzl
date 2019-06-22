def image_asm(name, csv, pngs = []):
    sources = [csv] + pngs
    native.genrule(
        name = name,
        srcs = sources,
        tools = ["//tool"],
        outs = [name + ".asm"],
        cmd = "$(location //tool) $(SRCS) > $@")
