using xlab
using Documenter

DocMeta.setdocmeta!(xlab, :DocTestSetup, :(using xlab); recursive=true)

makedocs(;
    modules=[xlab],
    authors="jjgomezcadenas <jjgomezcadenas@gmail.com> and contributors",
    repo="https://github.com/jjgomezcadenas/xlab.jl/blob/{commit}{path}#{line}",
    sitename="xlab.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jjgomezcadenas.github.io/xlab.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jjgomezcadenas/xlab.jl",
    devbranch="main",
)
