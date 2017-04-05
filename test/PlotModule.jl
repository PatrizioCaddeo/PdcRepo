using PyPlot

function plotX(x)
	t = linspace(0,2*pi,1000); y = x(t);
	plot(t, y, color="red", linewidth=2.0, linestyle="--")
end