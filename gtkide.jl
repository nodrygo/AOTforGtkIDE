module GtkIDExe
using Gtk
using GtkIDE

Base.@ccallable function julia_main(ARGS::Vector{String})::Cint
	if !isinteractive()
	    c = Condition()
	    signal_connect(GtkIDE.main_window, :destroy) do widget
		notify(c)
	    end
	    wait(c)
	end
    return 0
end

end
