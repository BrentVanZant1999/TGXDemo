 
 
 var gridOn = instance_position(x,y,objGridSpace);
 if (gridOn != false )
 {
 gridOn.myAlpha = 0.9; 
 }

var _list = ds_list_create();
var _num = instance_place_list(x, y, objPlayer, _list, false);
if _num > 0
    {
    for (var i = 0; i < _num; ++i;)
        {
			if ( _list[| i] != noone ) {
				handleHit(team,_list[| i]);	 
			}
        }
    }
ds_list_destroy(_list);
