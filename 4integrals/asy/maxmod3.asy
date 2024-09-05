settings.prc=false;
settings.outformat="pdf";

import graph;

size(160);


pen[][] p={{red,green,blue},
           {cyan,magenta,yellow}};

//latticeshade(unitsquare,p);

real g(pair z) {return abs(2*z^2+I);}
real f(pair z) {return (1/(2+sqrt(2)))*abs(2z^2+(1+I)*z);}
real f(pair z) {return (1/(2+sqrt(2)))*abs(4z^2+2*z+I-1);}
real f(pair z) {return (1/3)*abs(2*z^2+I);}

real xm=-1;
real xM=1;
real ym=0;
real yM=1;

int H=16;
int V=8;
real dx=(xM-xm)/H;
real dy=(yM-ym)/V;


pair[][] jim={{},{},{},{},{},{},{},{},{}};
for(int v=0; v<=V; ++v){
for(int h=0; h<=H; ++h){
	jim[v][h]=(xm+h*dx,yM-v*dy);
}
}

pen[][] bob={{},{},{},{},{},{},{},{},{}};
for(int v=0; v<=V; ++v){
for(int h=0; h<=H; ++h){
	real t=f((xm+h*dx,yM-v*dy));
	bob[v][h]=t*yellow+(1-t)*blue+opacity(0.65);
}
}

xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,0,1}));
yaxis(0,1.2,red);
ytick(Label("$i$",align=W),1,W,red);

path c=(arc((0,0),1,0,180)--cycle);
//path c=unitcircle;
latticeshade(c,bob);

/*
dot("$" + (string) g(1) +"$",dir(0));
dot("$" + (string) g(dir(45)) +"$",dir(45));
dot("$" + (string) g(dir(90)) +"$",dir(90));
dot("$" + (string) g(dir(135)) +"$",dir(135));
dot("$" + (string) g(-1) +"$",dir(180));
dot("$" + (string) g(0) +"$",(0,0));
*/

dot("$\sqrt{5}$",dir(0),NE);
dot("$3$",dir(45),dir(45));
dot("$\sqrt{5}$",dir(90),NE);
dot("$1$",dir(135),dir(135));
dot("$\sqrt 5$",dir(180),NW);
dot("$1$",(0,0),NE);
dot("$0$",0.5(-1+I),E);


draw((0,0)--(1,0),Arrow(Relative(0.5)));
draw((0,0)--(-1,0),Arrow(Relative(0.5)));
draw(arc((0,0),1,0,45),Arrow(Relative(0.5)));
draw(arc((0,0),1,90,45),Arrow(Relative(0.5)));
draw(arc((0,0),1,135,180),Arrow(Relative(0.5)));
draw(arc((0,0),1,135,90),Arrow(Relative(0.5)));

//draw(c);

//latticeshade(box((-1,0),(1,1)),bob);


//clip(unitcircle);
//write(jim);
