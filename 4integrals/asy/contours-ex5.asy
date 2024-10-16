settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,110);



pair z(real t){return (cos(t),sin(t));}
pair w(real t){return (t^2,t+1);}

draw(Label("$C_2$",Relative(0.5)),graph(w,0,1),orange,Arrow(Relative(0.55)));
draw(Label("$C_1$",Relative(0.35)),graph(z,0,pi/2),blue,Arrow(Relative(0.4)));

