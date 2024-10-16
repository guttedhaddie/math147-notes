settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,70,IgnoreAspect);

//path k=((0,0){dir(0)}..(2,0){dir(0)}..(4,1){dir(90)}..
//  (3,2){dir(90)}..(4,3){dir(90)}..(2,4){dir(180)}..(0,3){dir(270)}..
//    (2,3){dir(270)}..(1,2){dir(180)}..cycle);
path l=(0,0.6)..(2,0.4)..(3,0.5)..(3.5,1)..(2.5,2.5)..(3.5,3)..(2.5,3)..(2,2)..cycle;

path k=shift((2,1.6))*xscale(2.8)*yscale(2.1)*unitcircle;

fill(k,lightblue+opacity(0.5));
fill(l,orange+opacity(0.7));
draw(Label("$C$",red),l,red+linewidth(1),Arrow(Relative(0.2),size=8));
//label("$C$",(2.3,2.1),heavygreen);
label("$D$",(0.7,2.8),blue);
//label("interior of $C$",(1.7,1.1));
