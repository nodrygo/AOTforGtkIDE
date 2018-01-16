## Ugly AOT compilation for GtkIDE (julia0.6)

This is just a **very ugly toy for fun** to test creation of GtkIde executable  *(worked for me on my Mint17-64b)*

Based on [GtkIDE](https://github.com/jonathanBieler/GtkIDE.jl) 
and a modified clone of  [static-julia](https://github.com/JuliaComputing/static-julia) because **C ** code is not parametrised for lib name. Probably final v0.7 code will be more finalised

NOTE: the start method of GtkIDE should be modifed to be better for AOT

## Build a (big)shared library and executable 

1. install package as describe in  [GtkIDE](https://github.com/jonathanBieler/GtkIDE.jl)

2. Start GtkIDE one time with  julia interpreteur to precompile

3. Clone this repo, go the dir  and use the `./rebuild.sh` script. 

4. A shared library containing the system image libgtkide.so`, and a
   driver binary `gtkide` are created in the `builddir` directory.






