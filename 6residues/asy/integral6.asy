settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(160);

real delta=0.7;
real R=2;

path Cd=arc((0,0),delta,180,0,CW);
path CR=arc((0,0),R,0,180);

draw(Label("$C_\delta$",Relative(0.45),align=NW),Cd,blue,ArcArrow(Relative(0.45)));
draw(Label("$C_R$",Relative(0.45),align=NE),CR,blue,ArcArrow(Relative(0.45)));

draw((-R,0)--(-delta,0),heavygreen,Arrow(Relative(0.6)));
draw((delta,0)--(R,0),heavygreen,Arrow(Relative(0.6)));

dot((0,0));

xaxis(-1.15R,1.15R,red,RightTicks(new real[]{0}));
yaxis(0,1.2R,red);
xtick(Label("$\delta$",align=S),delta,S,red);
xtick(Label("$-\delta$",align=S),-delta,S,red);
xtick(Label("$R$",align=S),R,S,red);
xtick(Label("$-R$",align=S),-R,S,red);