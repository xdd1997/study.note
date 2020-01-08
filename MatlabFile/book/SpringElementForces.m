 %-----------弹簧单元 整体节点荷载列阵-------
function y = SpringElementForces(k,u)
    y = k * u;