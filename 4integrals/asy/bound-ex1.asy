settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

draw(Label("$C$",Relative(0.7)),4*dir(0)--4*dir(90),heavygreen,Arrow(Relative(0.7)));



draw("$2\sqrt 2$",(0,0)--sqrt(8)*dir(45),dashed);

xaxis(0,4.5,red);
yaxis(0,4.5,red);

xtick(Label("$0$",align=S),0,S,red);
xtick(Label("$2$",align=S),2,S,red);
xtick(Label("$4$",align=S),4,S,red);
ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$4i$",align=W),4,W,red);
