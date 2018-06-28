
use <egg.scad>
use <switch.scad>

d=.01;
dd=d+d;

function deltoid(scale) = [ [0,0.26766108365632835*scale], [0.32578305302081784*scale,0.07294900896355618*scale], [0,-0.41202268055203506*scale], [-0.32578305302081784*scale,0.07294900896355618*scale]];

module hole(inner, outer)
{
    delt = deltoid(.8/1.2*outer);
    h = outer-inner;
/*    translate([0,0,inner-d]) rotate([0,0,45])
        linear_extrude(height=.4+d)
        {
            polygon([ [-1.7, -1.6], [-1.6, -1.7], [1.6, -1.7], [1.7, -1.6], [1.7, 1.6], [1.6, 1.7], [-1.6, 1.7], [-1.7, 1.6] ]);
        }
    */
    translate([0,0,inner-d]) { linear_extrude(height=h+dd,scale=1.5){circle(r=1,$fn=20);} };
    translate([0,0,inner-d]) { linear_extrude(height=h+dd,scale=10){circle(r=.2,$fn=20);} };
    translate([0,0,outer-.2-d]) rotate([0,0,0]) {
       union(){
           linear_extrude(height=.2+dd,scale=1.2)
           {
               polygon(points=delt);
           }
           
       };
    }
}



module holes(inner,outer) {

multmatrix (m=[[-8.506508e-01,3.081980e-01,4.259192e-01,0.000000e+00],[-1.665335e-16,8.101465e-01,-5.862275e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[5.877853e-01,7.480123e-01,3.081980e-01,0.000000e+00],[8.090170e-01,-5.434628e-01,-2.239190e-01,0.000000e+00],[-5.551115e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-5.877853e-01,7.480123e-01,3.081980e-01,0.000000e+00],[8.090170e-01,5.434628e-01,2.239190e-01,0.000000e+00],[8.326673e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[8.506508e-01,3.081980e-01,4.259192e-01,0.000000e+00],[3.053113e-16,-8.101465e-01,5.862275e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-1.624598e-01,7.704951e-01,6.163961e-01,0.000000e+00],[5.000000e-01,-4.742680e-01,7.246170e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-9.510565e-01,2.248274e-02,3.081980e-01,0.000000e+00],[3.090170e-01,6.919477e-02,9.485360e-01,0.000000e+00],[-1.700029e-16,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-4.253254e-01,-9.021114e-01,-7.275569e-02,0.000000e+00],[-3.090170e-01,6.919477e-02,9.485360e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[6.881910e-01,-7.255296e-01,-1.040834e-16,0.000000e+00],[-5.000000e-01,-4.742680e-01,7.246170e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-9.510565e-01,-2.857153e-01,-1.177212e-01,0.000000e+00],[-3.090170e-01,8.793412e-01,3.623085e-01,0.000000e+00],[9.714451e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[2.628656e-01,8.657335e-01,-4.259192e-01,0.000000e+00],[8.090170e-01,4.276472e-02,5.862275e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-5.257311e-01,6.891518e-01,-4.986749e-01,0.000000e+00],[0.000000e+00,5.862275e-01,8.101465e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-5.877853e-01,-5.886059e-02,-8.068729e-01,0.000000e+00],[-8.090170e-01,4.276472e-02,5.862275e-01,0.000000e+00],[1.734723e-16,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[1.624598e-01,-3.445759e-01,-9.245941e-01,0.000000e+00],[-5.000000e-01,-8.365765e-01,2.239190e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[6.881910e-01,2.268547e-01,-6.891518e-01,0.000000e+00],[5.000000e-01,-8.365765e-01,2.239190e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[4.229436e-17,-9.245941e-01,-3.809537e-01,0.000000e+00],[-1.000000e+00,1.848893e-32,-1.110223e-16,0.000000e+00],[1.026506e-16,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-6.881910e-01,2.268547e-01,-6.891518e-01,0.000000e+00],[5.000000e-01,8.365765e-01,-2.239190e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-1.624598e-01,-3.445759e-01,-9.245941e-01,0.000000e+00],[-5.000000e-01,8.365765e-01,-2.239190e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[5.877853e-01,-5.886059e-02,-8.068729e-01,0.000000e+00],[-8.090170e-01,-4.276472e-02,-5.862275e-01,0.000000e+00],[-6.245005e-17,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[5.257311e-01,6.891518e-01,-4.986749e-01,0.000000e+00],[-5.551115e-17,-5.862275e-01,-8.101465e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-2.628656e-01,8.657335e-01,-4.259192e-01,0.000000e+00],[8.090170e-01,-4.276472e-02,-5.862275e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[9.510565e-01,-2.857153e-01,-1.177212e-01,0.000000e+00],[-3.090170e-01,-8.793412e-01,-3.623085e-01,0.000000e+00],[-4.163336e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-6.881910e-01,-7.255296e-01,1.110223e-16,0.000000e+00],[-5.000000e-01,4.742680e-01,-7.246170e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[4.253254e-01,-9.021114e-01,-7.275569e-02,0.000000e+00],[-3.090170e-01,-6.919477e-02,-9.485360e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[9.510565e-01,2.248274e-02,3.081980e-01,0.000000e+00],[3.090170e-01,-6.919477e-02,-9.485360e-01,0.000000e+00],[2.671474e-16,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[1.624598e-01,7.704951e-01,6.163961e-01,0.000000e+00],[5.000000e-01,4.742680e-01,-7.246170e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[4.253254e-01,-2.129596e-01,8.796286e-01,0.000000e+00],[3.090170e-01,-8.793412e-01,-3.623085e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-1.459546e-16,7.275569e-02,9.973498e-01,0.000000e+00],[1.000000e+00,1.036967e-16,1.387779e-16,0.000000e+00],[-9.332502e-17,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-4.253254e-01,-2.129596e-01,8.796286e-01,0.000000e+00],[3.090170e-01,8.793412e-01,3.623085e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[-2.628656e-01,-6.752567e-01,6.891518e-01,0.000000e+00],[-8.090170e-01,5.434628e-01,2.239190e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
multmatrix (m=[[2.628656e-01,-6.752567e-01,6.891518e-01,0.000000e+00],[-8.090170e-01,-5.434628e-01,-2.239190e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {hole(inner, outer);};
}



module nhole(inner, outer)
{
    delt = deltoid(.8/1.2*outer);
    h = outer-inner;
/*    translate([0,0,inner-d]) rotate([0,0,45])
        linear_extrude(height=.4+d)
        {
            polygon([ [-1.7, -1.6], [-1.6, -1.7], [1.6, -1.7], [1.7, -1.6], [1.7, 1.6], [1.6, 1.7], [-1.6, 1.7], [-1.7, 1.6] ]);
        }
    */
    translate([0,0,outer-.2-d]) rotate([0,0,0]) {
       union(){
           linear_extrude(height=.2+dd,scale=1.2)
           {
               polygon(points=delt);
           }
           
       };
    }
}


module noholes(inner,outer) {

multmatrix (m=[[-8.506508e-01,3.081980e-01,4.259192e-01,0.000000e+00],[-1.665335e-16,8.101465e-01,-5.862275e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[5.877853e-01,7.480123e-01,3.081980e-01,0.000000e+00],[8.090170e-01,-5.434628e-01,-2.239190e-01,0.000000e+00],[-5.551115e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-5.877853e-01,7.480123e-01,3.081980e-01,0.000000e+00],[8.090170e-01,5.434628e-01,2.239190e-01,0.000000e+00],[8.326673e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[8.506508e-01,3.081980e-01,4.259192e-01,0.000000e+00],[3.053113e-16,-8.101465e-01,5.862275e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-1.624598e-01,7.704951e-01,6.163961e-01,0.000000e+00],[5.000000e-01,-4.742680e-01,7.246170e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-9.510565e-01,2.248274e-02,3.081980e-01,0.000000e+00],[3.090170e-01,6.919477e-02,9.485360e-01,0.000000e+00],[-1.700029e-16,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-4.253254e-01,-9.021114e-01,-7.275569e-02,0.000000e+00],[-3.090170e-01,6.919477e-02,9.485360e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[6.881910e-01,-7.255296e-01,-1.040834e-16,0.000000e+00],[-5.000000e-01,-4.742680e-01,7.246170e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-9.510565e-01,-2.857153e-01,-1.177212e-01,0.000000e+00],[-3.090170e-01,8.793412e-01,3.623085e-01,0.000000e+00],[9.714451e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[2.628656e-01,8.657335e-01,-4.259192e-01,0.000000e+00],[8.090170e-01,4.276472e-02,5.862275e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-5.257311e-01,6.891518e-01,-4.986749e-01,0.000000e+00],[0.000000e+00,5.862275e-01,8.101465e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-5.877853e-01,-5.886059e-02,-8.068729e-01,0.000000e+00],[-8.090170e-01,4.276472e-02,5.862275e-01,0.000000e+00],[1.734723e-16,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[1.624598e-01,-3.445759e-01,-9.245941e-01,0.000000e+00],[-5.000000e-01,-8.365765e-01,2.239190e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[6.881910e-01,2.268547e-01,-6.891518e-01,0.000000e+00],[5.000000e-01,-8.365765e-01,2.239190e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[4.229436e-17,-9.245941e-01,-3.809537e-01,0.000000e+00],[-1.000000e+00,1.848893e-32,-1.110223e-16,0.000000e+00],[1.026506e-16,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-6.881910e-01,2.268547e-01,-6.891518e-01,0.000000e+00],[5.000000e-01,8.365765e-01,-2.239190e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-1.624598e-01,-3.445759e-01,-9.245941e-01,0.000000e+00],[-5.000000e-01,8.365765e-01,-2.239190e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[5.877853e-01,-5.886059e-02,-8.068729e-01,0.000000e+00],[-8.090170e-01,-4.276472e-02,-5.862275e-01,0.000000e+00],[-6.245005e-17,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[5.257311e-01,6.891518e-01,-4.986749e-01,0.000000e+00],[-5.551115e-17,-5.862275e-01,-8.101465e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-2.628656e-01,8.657335e-01,-4.259192e-01,0.000000e+00],[8.090170e-01,-4.276472e-02,-5.862275e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[9.510565e-01,-2.857153e-01,-1.177212e-01,0.000000e+00],[-3.090170e-01,-8.793412e-01,-3.623085e-01,0.000000e+00],[-4.163336e-17,3.809537e-01,-9.245941e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-6.881910e-01,-7.255296e-01,1.110223e-16,0.000000e+00],[-5.000000e-01,4.742680e-01,-7.246170e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[4.253254e-01,-9.021114e-01,-7.275569e-02,0.000000e+00],[-3.090170e-01,-6.919477e-02,-9.485360e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[9.510565e-01,2.248274e-02,3.081980e-01,0.000000e+00],[3.090170e-01,-6.919477e-02,-9.485360e-01,0.000000e+00],[2.671474e-16,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[1.624598e-01,7.704951e-01,6.163961e-01,0.000000e+00],[5.000000e-01,4.742680e-01,-7.246170e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[4.253254e-01,-2.129596e-01,8.796286e-01,0.000000e+00],[3.090170e-01,-8.793412e-01,-3.623085e-01,0.000000e+00],[8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-1.459546e-16,7.275569e-02,9.973498e-01,0.000000e+00],[1.000000e+00,1.036967e-16,1.387779e-16,0.000000e+00],[-9.332502e-17,9.973498e-01,-7.275569e-02,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-4.253254e-01,-2.129596e-01,8.796286e-01,0.000000e+00],[3.090170e-01,8.793412e-01,3.623085e-01,0.000000e+00],[-8.506508e-01,4.259192e-01,-3.081980e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[-2.628656e-01,-6.752567e-01,6.891518e-01,0.000000e+00],[-8.090170e-01,5.434628e-01,2.239190e-01,0.000000e+00],[-5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
multmatrix (m=[[2.628656e-01,-6.752567e-01,6.891518e-01,0.000000e+00],[-8.090170e-01,-5.434628e-01,-2.239190e-01,0.000000e+00],[5.257311e-01,-4.986749e-01,-6.891518e-01,0.000000e+00],[0, 0, 0, 1]]) {nhole(inner, outer);};
}


module dome(inner, outer)
{
    difference ()
    {
        egg(inner, outer);
        union ()
        {
            holes(inner, outer);
            rotate ([0,180,0]) noholes(inner, outer);
        }
    }
}

module knob(s)
{
scale(s)cylinder(r=1/2, h=1, $fn=40);
}

module attachment_hole(angle) {
            rotate([0,0,angle])
                translate ([0,10,0])
                rotate([90,0,0])
                    cylinder(r = .5, h=16, $fn=20, center=true);
}

module attachment_holes() {
        attachment_hole(0);
        attachment_hole(108);
}


module knobs(s) {
    rotate ( [0,0,18] ) translate([0,11.3,2.4]) knob(s);
    rotate ( [0,0,18+72] ) translate([0,11.3,2.4]) knob(s);
    rotate ( [0,0,18+144] ) translate([0,11.3,2.4]) knob(s);
    rotate ( [0,0,18+216] ) translate([0,11.3,2.4]) knob(s);
    rotate ( [0,0,18+288] ) translate([0,11.3,2.4]) knob(s);
}


module fold_cutout() {
translate([0,0,-1.01])scale([2.5,1,1.5])rotate([90,0,0])cylinder(r=1, h=10, center=true, $fn=6);
}

module fold_cutouts() {
    rotate ( [0,0,-18] ) translate([0,11.3,2.4]) fold_cutout();
    rotate ( [0,0,-18+72] ) translate([0,11.3,2.4]) fold_cutout();
    rotate ( [0,0,-18+144] ) translate([0,11.3,2.4]) fold_cutout();
    rotate ( [0,0,-18+216] ) translate([0,11.3,2.4]) fold_cutout();
    rotate ( [0,0,-18+288] ) translate([0,11.3,2.4]) fold_cutout();
}

module turn_pin() {
rotate([90,0,0])cube([.5,20,.5], center=true);
}

module turn_pins() {
    rotate ( [0,0,-9+72] ) translate([0,10.3,2.4]) turn_pin();
    rotate ( [0,0,-9+144] ) translate([0,10.3,2.4]) turn_pin();
    rotate ( [0,0,-9+216] ) translate([0,10.3,2.4]) turn_pin();
    rotate ( [0,0,-9+288] ) translate([0,10.3,2.4]) turn_pin();
}


module pcb_cutout() {
    difference() {
          union() {
        translate ([0,0,-d]) cylinder(r=9, h=.6+dd, $fn=100);
        translate ([0,6.5,0]) rotate([0,0,180])switch_cutout();
    }
        translate ([6.4,6.4,-dd]) cylinder(r=.8,h=.6+dd+dd, $fn=32); 
    }
}

module pcb_support() {
   translate ([6.4,6.4,-.6+d]) cylinder(r=1.3,h=.6, $fn=32); 
   translate ([-6.4,6.4,-.6+d]) cylinder(r=1, h=.6, $fn=32);
   translate ([-6, -6.8,-.6+d]) cylinder(r=1, h=.6, $fn=32); 
   translate ([ 6, -6.8,-.6+d]) cylinder(r=1, h=.6, $fn=32); 
}

module ball() {
    union() {
        
    difference ()
    {
        union()
        {
            dome(11.35, 12.4);
            translate ([0,0,1.8]) cylinder(r=12.5, h=6, $fn=100);
        }
        union () {
//            translate ([0,0,-20]) cylinder(r=20, h=20, $fn=64);
            translate ([0,0,4]) cylinder(r=20, h=20, $fn=64);
            translate ([0,0,1.7]) cylinder(r=11.5, h=20, $fn=64);
            attachment_holes();
        }
    }
    knobs([3,1.6,1]);


}
}

module hold() {
    
    difference() {
           union () {
               difference(){
            translate ([0,0,1.5]) cylinder(r=11.4, h=2.5, $fn=100);
union(){
            translate ([0,0,0]) cylinder(r=9.5, h=3.4, $fn=100);
fold_cutouts();
rotate([0,0,8])fold_cutouts();
rotate([0,0,16])fold_cutouts();
}
               }
               rotate([0,0,-9])translate([0,0,3.4]) pcb_support();
           }
           union () {
               rotate([0,0,-9])translate([0,0,3.4]) pcb_cutout();
               rotate([0,0,13])translate ([0,0,0]) knobs([4,1.8,1.1]);
               rotate([0,0,0])translate([0,0,0])knobs([3.2,1.7,1.1]);
               rotate([0,0,16])translate([0,0,-5.3])knobs([3.4,2,6.4]);
               turn_pins();
           }
    }
}

module pogotower(){
  //  cylinder(r1=3, r2=2, h=10, $fn=32);
    cylinder(r=2, h=4, $fn=32);
    translate([0,0,4-d]) cylinder(r1=2, r2=1, h=6, $fn=32);
}

module pogotower_cutout(){
    translate([0,0,-d]) {
        cylinder(r=.5,h=10+dd,$fn=32);
//        cylinder(r=1.,h=4+dd,$fn=32);
    }
}

module magnet_holes() {
    translate([-6,2.8,0])cylinder(r=1,h=20,center=true,$fn=32);
    translate([ 6,2.8,0])cylinder(r=1,h=20,center=true,$fn=32);
}

module bsl_cutout() {
    translate([0,2.8,-d])
    linear_extrude(height=4+dd, $fn=32 ){
    hull() {
        translate([-3,0,0]) circle(r=1);
        translate([ 3,0,0]) circle(r=1);
    }
}
    translate([-3.,2.8,0])pogotower_cutout();
    translate([-1.,2.8,0])pogotower_cutout();
    translate([ 1.,2.8,0])pogotower_cutout();
    translate([ 3.,2.8,0])pogotower_cutout();
}

module bsl() {
    /*
    translate([-3,2.8,0])pogotower();
    translate([-1,2.8,0])pogotower();
    translate([ 1,2.8,0])pogotower();
    translate([ 3,2.8,0])pogotower();
*/
    linear_extrude(height=10, $fn=32 ){
    hull() {
        translate([-3,2.8,0]) circle(r=2);
        translate([ 3,2.8,0]) circle(r=2);
    }
}
}


module base() {
    difference(){
        union(){
               difference(){
                   translate ([0,0,4]) cylinder(r=11.5, h=2.5, $fn=100);
                    translate ([0,0,5]) cylinder(r=9, h=2.5, $fn=100);
               }
        rotate([0,0,-9]) translate ([0,0,4]) bsl();
        }
        {
        turn_pins();
        rotate([0,0,-9]) translate([0,0,4])union () { magnet_holes(); bsl_cutout(); }
        }
    }
}

ball();
hold();
base();


