%-----弹簧的单元刚度阵-----------
function y = SpringElementStiffness(k)
    y = [k -k;
        -k k];