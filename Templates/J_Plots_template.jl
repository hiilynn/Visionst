
using Plots, NCDatasets

# import data 
#
dt = Dataset("data.nc", "r")

# name data
#
x_var = dt["x"][:]
y_var = dt["y"][:]

# Plotting using plots
#
plot(x_var, y_var, 
#	xscale=:log10, 
#	yscale=:log10, 
	fontfamily="Computer Modern", 
	label="\$\\sigma\$", 
	dpi=300, 
	legend=:bottomright, 
	framestyle=:box,
	legendfontsize=10,
	yguide="\$\\sigma(\\nu N)\$",
	xlabel="\$E_{\\nu}~ [\\mathrm{GeV}]\$",
#	right_margin= 10Plots.mm,
#	bottom_margin= 10Plots.mm,
	gridstyle=:dash
)

savefig("plot.png")
