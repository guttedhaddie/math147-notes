settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,145);



pair z(real t){return (cos(t),sin(t));}
pair w(real t){return (t,t^2);}

draw(Label("$C_1$",Relative(0.5)),graph(w,0,1),heavygreen,Arrow(Relative(0.55)));
draw(Label("$C_2$",Relative(0.35)),graph(z,0,pi),blue,Arrow(Relative(0.4)));
draw(Label("$C_3$",Relative(0.4)),graph(z,0,-pi),brown,Arrow(Relative(0.4)));


xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(-1.2,1.2,red);

//ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$i$",align=W),-1,W,red);