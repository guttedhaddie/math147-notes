settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(150);

pair z0=(0,0);
pair z1=(2,0);
pair z2=(1,2);

dot(z0);
dot(z1);
dot(z2);

path C0=shift(z0)*scale(0.3)*unitcircle;
path C1=shift(z1)*scale(0.3)*unitcircle;
path C2=shift(z2)*scale(0.3)*unitcircle;

draw(Label("$C_1$",Relative(0.4)),C0,ArcArrow(Relative(0.4)));
draw(Label("$C_2$",Relative(0.4)),C1,ArcArrow(Relative(0.4)));
draw(Label("$C_3$",Relative(0.4)),C2,ArcArrow(Relative(0.4)));

path C3=(2,-0.8)..(2.7,0)..(2,2)..(1,2.9)..(-0.2,2.2)..(1,0)..cycle;
draw(Label("$C_4$",Relative(0.4)),C3,blue,ArcArrow(Relative(0.4)));
path C4=(3,0)..(2,1)..(0.7,0)..(0,-0.8)..(-1,0)..(0,0.8)..(0.6,0)..(2,-1)..cycle;
draw(Label("$C_5$",Relative(0.15)),C4,heavygreen,ArcArrow(Relative(0.15)));


xaxis(-1.2,3.2,red,RightTicks(new real[]{-1,1,2,3}));
yaxis(red);
ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$3i$",align=W),3,W,red);