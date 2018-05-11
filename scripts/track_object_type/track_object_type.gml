/// @description track_object_type(viewid,object,minsize)
/// @param viewid
/// @param object
/// @param minsize

if( !instance_exists(argument1) ) exit;

__view_set( e__VW.XView, argument0, 0 );
__view_set( e__VW.YView, argument0, 0 );

with(argument1)
{   
    __view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) + (x) );
    __view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) + (y) );
}

__view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) / (instance_number(argument1) ));
__view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) / (instance_number(argument1) ));

globalvar VMinX,VMaxX,VMinY,VMaxY;
VMinX=__view_get( e__VW.XView, argument0 ); VMaxX=__view_get( e__VW.XView, argument0 );
VMinY=__view_get( e__VW.YView, argument0 ); VMaxY=__view_get( e__VW.YView, argument0 );

with(argument1)
{   
    VMinX=min(VMinX,x);
    VMaxX=max(VMaxX,x);
    VMinY=min(VMinY,y);
    VMaxY=max(VMaxY,y);
}

var VSize=max(argument2,(VMaxX-VMinX),(VMaxY-VMinY)*(__view_get( e__VW.WPort, argument0 )/__view_get( e__VW.HPort, argument0 )));

__view_set( e__VW.WView, argument0, VSize*(__view_get( e__VW.WPort, argument0 )/__view_get( e__VW.HPort, argument0 )) );
__view_set( e__VW.HView, argument0, VSize );

__view_set( e__VW.XView, argument0, __view_get( e__VW.XView, argument0 ) - ((__view_get( e__VW.WView, argument0 )/2)) );
__view_set( e__VW.YView, argument0, __view_get( e__VW.YView, argument0 ) - ((__view_get( e__VW.HView, argument0 )/2)) );