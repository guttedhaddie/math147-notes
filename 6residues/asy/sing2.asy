settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120);

//draw((0,0)--(-0.35,0),blue+opacity(0.5)+linewidth(2));
draw((-0.35,0.008)--arc((0,0),0.008,90,-90,CW)--(-0.35,-0.008),blue+dashed);

fill(scale(0.2)*unitcircle,green+opacity(0.3));
draw("$R$",(0,0)--0.2*dir(45),NW,heavygreen);

dotfactor=8;
dot((0,0),heavygreen);

xaxis(red,RightTicks(new real[]{0}));