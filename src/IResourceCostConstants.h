#ifndef IRESOURCECOSTCONSTANTS_H_
#define IRESOURCECOSTCONSTANTS_H_

class IResourceCostConstants
{
public:
    virtual ~IResourceCostConstants() = 0;

    static const int MUXCOST_TABLE_SIZE = 33;
    static const int MUXCOST[3][33];
    static const int LARGEMUXCOST = 500;
    enum FAMILY {
        SPARTAN3,
        SPARTAN6,
        VIRTEX5
    };
};

const int IResourceCostConstants::MUXCOST[3][33] = {
    //Spartan 3
    {
        0,                              0,                              1,
        2,
        2,                              3,                              4,
        4,
        4,                              5,                              7,
        7,
        9,                              8,                              9,
        8,
        8,                              12,                             14,
        15,
        17,                             15,                             16,
        16,
        17,                             14,                             16,
        17,
        17,                             17,                             18,
        16,
        16
    },
    //Virtex 5
    {
        0,                              0,                              1,
        1,
        1,                              2,                              2,
        2,
        2,                              3,                              4,
        4,
        4,                              4,                              5,
        5,
        5,                              6,                              6,
        6,
        7,                              7,                              7,
        7,
        9,                              8,                              9,
        9,
        9,                              9,                              10,
        10,
        10
    },
    //Spartan 6
    {
        0,                              0,                              1,
        1,
        1,                              2,                              2,
        2,
        2,                              3,                              4,
        4,
        4,                              4,                              5,
        5,
        5,                              7,                              6,
        7,
        7,                              7,                              8,
        8,
        8,                              8,                              9,
        9,
        9,                              9,                              10,
        10,
        10
    }
};

#endif /*IRESOURCECOSTCONSTANTS_H_*/
