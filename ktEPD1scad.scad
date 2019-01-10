//
// ktEPD1
//

gap1 = 0.001;
gap2 = 0.002;
th = 1;
th2 = 2;

waku_x = 262;
waku_y = 128;

disp_x = 163.2;
disp_y = 97.92;

body_x = 170.2;
body_y = 111.5;
body_z = 1.2;
body_d = 2.7;

stand_z = 50;
side_z = 10;

A = 1;


if(A)
{
    // front
    difference()
    {
        translate( [0, 0, th/2] )
        cube( [waku_x, waku_y, th], center=true );
        
        translate( [0, 0, th+gap1] )
        rotate( [180, 0, 0] )
        linear_extrude(height=th+gap2, scale=[1.015,1.03])
        square( [disp_x, disp_y], center=true);
    }
    
    // stay
    difference()
    {
        union()
        {
            translate( [disp_x/2+(body_x-disp_x)/2, disp_y/2+7/2-1.5, th+(body_z+th)/2] )
            cube( [6, 7, body_z+th], center=true );
            translate( [disp_x/2+(body_x-disp_x)/2, 0, th+(body_z+th)/2] )
            cube( [6, 7, body_z+th], center=true );
            translate( [disp_x/2+(body_x-disp_x)/2, -waku_y/2+7/2+th, th+(body_z+th)/2] )
            cube( [6, 7, body_z+th], center=true );

            translate( [-disp_x/2-(body_x-disp_x)/2, disp_y/2+7/2-1.5, th+(body_z+th)/2] )
            cube( [6, 7, body_z+th], center=true );
            translate( [-disp_x/2-(body_x-disp_x)/2, 0, th+(body_z+th)/2] )
            cube( [6, 7, body_z+th], center=true );
            translate( [-disp_x/2-(body_x-disp_x)/2, -waku_y/2+7/2+th, th+(body_z+th)/2] )
            cube( [6, 7, body_z+th], center=true );
        }
        translate( [0, -(body_y/2-disp_y/2-body_d), th+body_z/2] )
        cube( [body_x, body_y, body_z+10], center=true );
    }
    
    // foot
    translate( [0, -waku_y/2+th2/2, stand_z/2] )
    cube( [waku_x, th2, stand_z], center=true );
    
    // side
    translate( [waku_x/2-th2/2, 0, side_z/2] )
    cube( [th2, waku_y, side_z], center=true );
    translate( [-waku_x/2+th2/2, 0, side_z/2] )
    cube( [th2, waku_y, side_z], center=true );
    translate( [0, waku_y/2-th2/2, side_z/2] )
    cube( [waku_x, th2, side_z], center=true );
    
}
