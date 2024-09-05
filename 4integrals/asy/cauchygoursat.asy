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


size(160);

path p=(-1,0)..(0,-1)..(1,0)..(1.8,2)..(1,2.8)..cycle;

fill(reflect((0,0),(1,1))*p,lightblue+opacity(0.3));
draw(Label("$C$",Relative(0.4)),reflect((0,0),(1,1))*reverse(p),Arrow(Relative(0.4)));

real r=0.7;
unfill(scale(r)*unitcircle);
draw(Label("$C_r$",Relative(0.15)),scale(r)*unitcircle,Arrow(Relative(0.15)));

draw(Label("$r$",align=NE),(0,0)--r*dir(145),dashed);

label("$D$",(1.8,0.8));

axes(red);