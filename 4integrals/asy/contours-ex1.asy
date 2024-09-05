settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,135);

pair z(real t){return (t,t^2);}
pair w(real t){return (2-t,t);}

draw(graph(z,0,1),blue,Arrow(Relative(0.5)));
draw(graph(w,1,2),blue,Arrow(Relative(0.5)));

dot(0,blue);
dot(2I,blue);


xaxis(0,1.2,red,RightTicks(new real[]{0,1}));
yaxis(0,2.2,red);

ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);