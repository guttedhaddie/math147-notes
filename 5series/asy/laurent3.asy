settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(100);

fill(scale(2.5)*unitcircle,heavygreen+opacity(0.5));
unfill(unitcircle);

path c=1.3dir(0)..2dir(90)..1.7dir(180)..1.4dir(225)..2dir(270)..2dir(315)..cycle;
draw(Label("$C$",Relative(0.02)),c,red,Arrow(Relative(0.05)));
path d=2dir(0)..1.5dir(90)..1.5dir(180)..1.7dir(225)..1.3dir(270)..2dir(315)..cycle;
draw(Label("$D$",Relative(0.35)),d,blue,Arrow(Relative(0.35)));

draw(Label("$E$",Relative(0.12)),scale(2.3)*unitcircle,purple,Arrow(Relative(0.12)));


dot("$z_0$",(0,0),SW);