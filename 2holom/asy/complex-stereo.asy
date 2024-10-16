settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
//settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;

import solids;

//html website
//size(0,180);

//pdf embed
size(230);

currentprojection=orthographic(4,-2,1);
pen colorb=blue+opacity(0.3);

triple S(pair P){real l=length(P);
return (1/(l^2+1))*(2P.x,2P.y,l^2-1);}

triple pro(triple P){real t=P.z/(P.z-1);
return (0,0,t)+(1-t)*P;}

draw(unitsphere,colorb);


pair PP=(1.5,1);
triple PPP=(PP.x,PP.y,0);

triple Q=unit((1,2,2.5));
draw(Z--Q,dashed);
draw(Q--pro(Q),Arrow3(Relative(0.5)));
dot(Label("$P$",black),Q,Q,red);
dot(Label("$\pi(P)$",black),pro(Q),-Z,red);

//pdf embed
dot(Label("$N$",black),Z,Z,red);


//htmlwebsite
/*
draw(Z--PPP,dashed);
draw(PPP--S(PP),Arrow3(Relative(0.5)));
dot(Label("$\pi^{-1}(z)$",black),S(PP),S(PP),red);
dot(Label("$z$",black),PPP,-Z,red);
draw(Z--(-Z),dashed);
dot(Label("$\pi^{-1}(0)$",black),-Z,-Z,red);
dot(Label("$0$",black),(0,0,0),red);
dot(Label("$N=\pi^{-1}(\infty)$",black),Z,Z,red);
*/

draw(surface(scale(3)*unitcircle),green+opacity(0.3));
draw(unitcircle3);


dot(Label("$i$",black),Y,-Z,red);
dot(Label("$-i$",black),-Y,-Z,red);
dot(Label("$1$",black),X,-Z,red);
dot(Label("$-1$",black),-X,-Z,red);


label("$S^2$",1.2unit((1.3,0.5,-1)),blue);
label("$\mathbb C$",2.8unit((1,0.6,0))-0.15Z,heavygreen);

//xaxis3("$X$",red);
//yaxis3("$Y$",red);
//zaxis3("$Z$",red);