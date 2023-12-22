import Pkg

Pkg.add("Blink")

using Blink
# Blink.AtomShell.install() # downloads Blink dependencies

function myCalc()
    w = Window() # initialises the main Window

    f = open("calculator.html") do file
        read(file, String)
    end

    body!(w,f) # part of the Blink.jl library, ! is a Julia convention meaning the function can modify its arguments
end

myCalc()