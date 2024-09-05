settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(150,0);

real R=4;

path CR=arc((0,0),R,0,180);

pair[] z0={(1,1),(1.3,2),(1.5,3),(-0.5,2.5)};
pair z1=(2,1);
pair z2=(-1,1);

for(int i=1; i<=4; ++i){
	dot("$z_"+ (string) i +"$",z0[i-1],SW);
	}
	
dot((-1,1));
dot((-1.4,0.5));
dot((-2,2));
dot("$z_k$",(-2.8,1.5),SW);



draw(Label("$C_R$",Relative(0.45)),CR,blue,ArcArrow(Relative(0.45)));
draw((-R,0)--(R,0),heavygreen,Arrow(Relative(0.6)));


xaxis(-1.1R,1.1R,red,RightTicks(new real[]{0}));
yaxis(0,1.1R,red);

xtick(Label("$R$",align=S),R,S,red);
xtick(Label("$-R$",align=S),-R,S,red);
ytick(Label("$iR$",align=NW),R,W,red);