#include <vector>
#include <math.h>
#include <stdio.h>
#include "face.hpp"

face::face(std::vector<vertex*> *vList){
    normalCalculated=false;
    vertexList=vList;
}

void face::getNormal(){
    vertex *f,*g,*h;
    f = vertexList->operator[](ver[0]);
    g = vertexList->operator[](ver[1]);
    h = vertexList->operator[](ver[2]);
    vertex m(g->pt[0]-f->pt[0], g->pt[1]-f->pt[1], g->pt[2]-f->pt[2]);
    vertex n(h->pt[0]-g->pt[0], h->pt[1]-g->pt[1], h->pt[2]-g->pt[2]);
    vertex normal((m.pt[1]*n.pt[2])-(m.pt[2]*n.pt[1]), (m.pt[2]*n.pt[0])-(m.pt[0]*n.pt[2]), (m.pt[0]*n.pt[1])-(m.pt[1]*n.pt[0]));
    
    double magnitude=sqrt(normal.pt[0]*normal.pt[0]+normal.pt[1]*normal.pt[1]+normal.pt[2]*normal.pt[2]);
    
    norm[0]=normal.pt[0]/magnitude;
    norm[1]=normal.pt[1]/magnitude;
    norm[2]=normal.pt[2]/magnitude;
    normalCalculated=true;
    printf("\nNormal %.3lf %.3lf %.3lf",  norm[0], norm[1], norm[2]);
}

void face::offset(double off){
    //unsigned long long vLength=vertexList->size();
    getNormal();
    
    for(unsigned long long i=0; i<ver.size(); i++){
        vector tempVector;
        tempVector.e[0]=vertexList->operator[](ver[i])->pt[0]+off*norm[0];
        tempVector.e[1]=vertexList->operator[](ver[i])->pt[1]+off*norm[1];
        tempVector.e[2]=vertexList->operator[](ver[i])->pt[2]+off*norm[2];
        
        vertexList->push_back(new vertex(tempVector.e[0],tempVector.e[1],tempVector.e[2]));
        ver[i]=vertexList->size()-1;
        }
}

void face::jig(){
    //doing only a -> b
    //assume convex
    //assume tab length 0.4
    double tabLengthNom=0.4;
    unsigned long long initialVertex=vertexList->size(); //hold index of first added vertex
//    double a=vertexList->operator[](ver[0])->pt[0]-vertexList->operator[](ver[1])->pt[0];
//    double b=vertexList->operator[](ver[0])->pt[1]-vertexList->operator[](ver[1])->pt[1];
//    double c=vertexList->operator[](ver[0])->pt[2]-vertexList->operator[](ver[1])->pt[2];
    vector abDir;
 
    abDir.e[0]=vertexList->operator[](ver[1])->pt[0]-vertexList->operator[](ver[0])->pt[0];
    abDir.e[1]=vertexList->operator[](ver[1])->pt[1]-vertexList->operator[](ver[0])->pt[1];
    abDir.e[2]=vertexList->operator[](ver[1])->pt[2]-vertexList->operator[](ver[0])->pt[2];
    double length=sqrt(abDir.e[0]*abDir.e[0]+abDir.e[1]*abDir.e[1]+abDir.e[2]*abDir.e[2]);
    printf ("length %lf\n",length);
    
    unsigned int numTabs=length/tabLengthNom;
    printf ("numTabs %d\n",numTabs);
    double tabLength=length/numTabs;
    printf ("tablength %lf\n",tabLength);
    
    vector toCenter;

    
    for(unsigned int i=1;i<numTabs;i++)
    {
        vector *a = new vector();
        vector *b = new vector();
        a->e[0]=vertexList->operator[](ver[0])->pt[0]+(abDir.e[0]*i/numTabs);
        a->e[1]=vertexList->operator[](ver[0])->pt[1]+(abDir.e[1]*i/numTabs);
        a->e[2]=vertexList->operator[](ver[0])->pt[2]+(abDir.e[2]*i/numTabs);
        b->e[0]=0;
        b->e[1]=0;
        b->e[2]=0;
        
    vertexList->push_back(new vertex(a->e[0],a->e[1],a->e[2]));
    vertexList->push_back(new vertex(b->e[0],b->e[1],b->e[2]));
    
    }
}
  