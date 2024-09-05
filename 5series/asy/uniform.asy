if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="pdf";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

pair w=0.7*dir(70);

real r=0.85;

pair z=0.7r*dir(85);
pair z1=r*dir(20);

fill(unitcircle,lightblue+opacity(0.3));
filldraw(scale(r)*unitcircle,red+opacity(0.3),red);

draw("$R_0$",(0,0)--dir(160),dashed+blue);
draw("$R_1$",(0,0)--z1,dashed+red);


dot("$z_0$",(0,0),SW);
dot("$z_1$",z1);
dot("$z$",z);