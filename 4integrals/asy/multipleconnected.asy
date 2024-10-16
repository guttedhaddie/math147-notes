settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(380);

path p=xscale(4)*yscale(3)*unitcircle;
path q=reverse(shift(1,1)*unitcircle);
path r=reverse(shift(-1.2,-0.6)*rotate(-30,(0,0))*xscale(1.6)*unitcircle);

path cut=(4Cos(20),3Sin(20))--shift(1,1)*(Cos(0),Sin(0));
path Cut=(4Cos(180),3Sin(180))--shift(-1.2,-0.6)*rotate(-30,(0,0))*xscale(1.6)*(Cos(190),Sin(190));

picture pic;

fill(pic,p,lightgray+opacity(0.5));
unfill(pic,q);
unfill(pic,r);

draw(pic,p,blue,Arrow(Relative(1/8)));
add(pic,arrow(p,invisible,FillDraw(blue),Relative(3/8))); 
add(pic,arrow(p,invisible,FillDraw(blue),Relative(5/8))); 
add(pic,arrow(p,invisible,FillDraw(blue),Relative(7/8)));
draw(pic,q,orange,Arrow(Relative(1/8)));
draw(pic,r,orange,Arrow(Relative(1/8)));

label(pic,"$D$",(-1.3,1.7));
label("$C$",shift((-10,0))*(3.3,2.4));
label("$C_1$",shift((-10,0))*(2.1,0));
label("$C_2$",shift((-10,0))*(-0.4,-2.3));


add(shift((-10,0))*pic);
add(pic);
 
 real h=0.03;
 draw(cut,heavygreen+dashed);
 draw(Cut,heavygreen+dashed);
 draw((3.8,0)..(3.3,0.8)..(2.7,0.8)..(2.2,0.5)..(1.8,0.1),lightblue,ArcArrow);
 draw(reverse((2.8,1.8){SE}..(3.2,1.4)..(2.7,1.2){W}..(1.8,1.7)),lightblue,ArcArrow);
 draw((-3.7,0.9){dir(250)}..(-3.2,0.2){E}..(-2.5,0.7)..(-2.0,0.8),lightblue,ArcArrow);
 draw((-2.6,-0.8){dir(110)}..(-3.2,-0.2){W}..(-3.7,-0.9){dir(290)},lightblue,ArcArrow);
label("$\tilde C$",(3.3,2.4));

