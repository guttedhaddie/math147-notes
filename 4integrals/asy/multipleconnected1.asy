settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

path p=xscale(4)*yscale(2.5)*unitcircle;
path q=reverse(shift(1,1)*unitcircle);
path r=reverse(shift(-1.2,-0.6)*rotate(-30,(0,0))*xscale(1.6)*unitcircle);

fill(p,lightgray+opacity(0.5));
unfill(q);
unfill(r);

draw(Label("$C$",Relative(1/10)),p,blue,Arrow(Relative(1/8)));
add(arrow(p,invisible,FillDraw(blue),Relative(3/8))); 
add(arrow(p,invisible,FillDraw(blue),Relative(5/8))); 
add(arrow(p,invisible,FillDraw(blue),Relative(7/8)));
draw(Label("$C_1$",Relative(1/10)),q,orange,Arrow(Relative(1/8)));
draw(Label("$C_2$",Relative(1/10)),r,orange,Arrow(Relative(1/8)));

label("$D$",(-1.3,1.7));


path cut=(4Cos(23.5),2.5Sin(23.5))--shift(1,1)*(Cos(0),Sin(0));
path Cut=(4Cos(180),2.5Sin(180))--shift(-1.2,-0.6)*rotate(-30,(0,0))*xscale(1.6)*(Cos(192),Sin(192));
real h=0.03;
 draw(cut,heavygreen+dashed);
 draw(Cut,heavygreen+dashed);
 draw((3.8,0)..(3.3,0.8)..(2.7,0.8)..(2.2,0.5)..(1.8,0.1),green,ArcArrow);
 draw(reverse((2.8,1.6){SE}..(2.7,1.15){dir(190)}..{NW}(2,1.6)),green,ArcArrow);
 draw((-3.7,0.8){dir(250)}..(-3.2,0.1){E}..(-2.5,0.6)..(-2.0,0.7),green,ArcArrow);
 draw((-2.65,-0.7){dir(110)}..(-3.2,-0.1){W}..(-3.6,-0.8){dir(290)},green,ArcArrow);
//label("$\tilde C$",(3.3,2.4));