/// @description Controller movement
scr_move(padIndex,0.3)

hspd = xx*spd;
vspd = yy*spd;

if (place_meeting(x+hspd,y,obj_wall)){
	while !place_meeting(x+sign(hspd),y,obj_wall){
		x+=sign(hspd);
	}
	hspd = 0;
}
x += hspd;
if (place_meeting(x,y+vspd,obj_wall)){
	while !place_meeting(x,y+sign(vspd),obj_wall){
		y+=sign(vspd);
	}
	vspd = 0;
}
y += vspd;