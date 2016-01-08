#ifndef JSAW_FACE_H
#define JSAW_FACE_H

#include "vertex.hpp"
#include "edge.hpp"
#include "vectorlist.hpp"
#include <vector>

class edge;
class face;
class vertex;

struct vector
{
	double e[3];
};

class face{
public:
    face(std::vector<vertex*> *vList);
    void getNormal();
    void offset(double off);
    void jig();
    std::vector<edge*> edg;
    std::vector<face*> fac;
    std::vector<unsigned long long> ver;
    

 //   std::vector<vertex*> ver;/using pointers
 
private:
 bool normalCalculated;
 std::vector<vertex*> *vertexList;
 double norm[3];
};

#endif