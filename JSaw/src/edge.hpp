#ifndef JSAW_EDGE_H
#define JSAW_EDGE_H

#include "vertex.hpp"
#include "face.hpp"
#include <vector>

class edge;
class face;
class vertex;

class edge{
public:
    std::vector<edge*> edgA;
    std::vector<edge*> edgB;
    std::vector<face*> fac;
    std::vector<vertex*> ver;
};

#endif