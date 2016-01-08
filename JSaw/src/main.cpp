#include <stdio.h>
#include <math.h>
//#include "polygon.hpp"
#include "vertex.hpp"
#include "edge.hpp"
#include "face.hpp"
#include <vector>

#include "deps/objTester/objLoader.h"

void printVector(obj_vector *v){
	printf("%.2f,", v->e[0] );
	printf("%.2f,", v->e[1] );
	printf("%.2f  ", v->e[2] );
}

void printVertexListElement(vertex *v){
    printf ("\nv %.3lf %.3lf %.3lf",v->pt[0],v->pt[1],v->pt[2]);
}

void printFaceListElement(face *f){
    printf("\nf ");
    for(unsigned int i = 0; i<f->ver.size();i++)
    {
        printf("%Iu ",f->ver[i]+1);
    }
}

int main(int argc, char **argv){
    std::vector<face*> faceList;
    std::vector<vertex*> vertexList;    
    std::vector<edge*> edgeList;

	objLoader *objData = new objLoader();
//	objData->load("../testData/cornell_box.obj");
    objData->load("../testData/easy.obj");

 	printf("Number of vertices: %i\n", objData->vertexCount);
	printf("Number of faces: %i\n", objData->faceCount);


    for(int i=0; i<objData->vertexCount; i++)
    {
        obj_vector *v = objData->vertexList[i];
        vertexList.push_back(new vertex(v->e[0],v->e[1],v->e[2]));
    }
    
    
	for(int i=0; i<objData->faceCount; i++)
	{
		obj_face *o = objData->faceList[i];
        face *tempFace = new face(&vertexList);
        
		for(int j=0; j<o->vertex_count; j++)
		{
            tempFace->ver.push_back(o->vertex_index[j]); //pointer based
            vertexList[o->vertex_index[j]]->fac.push_back(tempFace);
		}
        faceList.push_back(tempFace);
	}
    printf("number of faces %Iu of %Iu\n",faceList.size(),faceList.capacity());

faceList[0]->jig();

// ALL STUFF IS READ IN
    
unsigned long long numFaces=faceList.size();
for(unsigned long long i=0;i<numFaces;i++)
{
    face *tempFace = new face(&vertexList);
    *tempFace=*faceList[i];
    tempFace->offset(-.2);
    faceList.push_back(tempFace);
  //  faceList[i]->offset(-.2);
}



    for(unsigned long long i=0; i<vertexList.size();i++){
        printVertexListElement(vertexList[i]);
    }
    
    for(unsigned long long i=0; i<faceList.size();i++){
        printFaceListElement(faceList[i]);
    }
    
    for(unsigned long long i=0; i<faceList.size(); i++)
    {
 //     faceList[i]->getNormal();
      }

    	return 0;
}
