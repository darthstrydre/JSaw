#ifndef JSAW_VERTEX_H
#define JSAW_VERTEX_H

#include "edge.hpp"
#include "face.hpp"
#include <vector>

class edge;
class face;

class vertex{
public:
    vertex( double a,  double b,  double c);
    std::vector<edge*> edg;
    std::vector<face*> fac;
    double pt[3];
};

#endif