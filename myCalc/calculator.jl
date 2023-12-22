import Pkg

Pkg.add("Blink")

using Blink
# Blink.AtomShell.install() # downloads Blink dependencies

function myCalc()
    w = Window() # initialises the main Window

    f = open("calculator.html") do file # remember to change to this directory, e.g. right click file and select Julia: Change to this directory
        read(file, String)
    end

    body!(w,f) # part of the Blink.jl library, ! is a Julia convention meaning the function can modify its arguments
end

myCalc()