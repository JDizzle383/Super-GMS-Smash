/// @desc Execute(array|map|script|userEvNum)
/// @arg array|map|script|userEvNum

//// 优先执行二维数组的情况
//// Parameters in the two dimensional arrays in the first run.
//// show -> show_debug_message(argument0)
//a = [[Debug,1],[Debug,2],[Debug,3]];
//a[1,0] = 0; // type: run actions 运行动作
//Execute(a); // 1 2 3
//a = [[Return1],[Return0],[Finish]];
//a[1,0] = 1; // type: run conditions 运行条件
//b = Execute(a); // 2

//// 执行一维数组中的脚本或用户事件
//// run the script and user event in the array.

//a = [1,32,2,222,55,66];
//Execute([array_sort,a]); //array(>=0,...)
//show_debug_message(a); { { 1,2,32,55,66,222 },  }
//a = array(-2,); // user event 2
//Execute(a);

// map data
//a = [array_sort,[1,32,2,222,55,66]];
//b = args_to_map(a); 
//c = Execute(b);
//show_debug_message(c); // { { 1,2,32,55,66,222 },  }
//ds_map_destroy(b);
//Execute("demo_scr"); // 字符串 -> 脚本名 string -> script name

if (argument[0] == -1 || argument[0] == "-1")  
return undefined;

if (argument[0] == undefined) {
    show_debug_message("undefined value");
    return undefined;
}

// 获取数组，数组层级太多会影响运行效率
// Get the array
// if the array level is too much, it will affect the operating efficiency.
var a = argument[0]; 

// 检测map数据，如果是由args_to_map转化而来，则将它还原为数组
// check the map, if it is converted from args_to_map then convert it back to array

if (is_real(a) && ds_exists(a, ds_type_map)) { 
    if ds_map_exists(a,"forExecute")
    a = map_to_args(a);
}

// 二维数组的高度，用来判定存放是否是数组
// Check whether it is a two-dimensional array
var _size = array_height_2d(a), _type; 

if (_size > 1) { // a[0,values],a[0+1,0] = type
    
    _type = a[@ 1,0];
    _size = array_length_2d(a,0);
    
	// 只是运行所有的数组中的脚本并返回结果
	// Just run all the scripts in the array and return the results
    if (_type == 0) 
    {
        var _return;        
        if (_size > 0){
            for (_n = 0; _n < _size; _n ++)
            
            // 运行列表中的数组，有先后顺序，序号小的先运行            
            
            _return[_n] = Execute(a[0,_n]); 
            return _return; // 返回结果数组
        }
    
	// 数组返回的值作为条件判断     
	// The value returned as a condition          
    } else if (_type == 1){      
        if (_size > 0){        
            var _n,_array2, _return, _finish;            
            _return = true;
            _finish = 0;
            for (_n = 0; _n < _size; _n ++)
            {                
                _array2 = a[0,_n];                
                if (_array2[0] == Finish)  
                {
                    show_debug_message("Found Finish");
                    _return &= true;
                    _finish = 2; // 1|2 -> 3                
                }else _return &= Execute(_array2); //0|1                              
            }            
            return _return | _finish; //0|1|3            
        } else return 4; // noone 4   
    }
    return undefined;
}

if (is_array(a)) {

    var _a0 = a[0];
    if is_string(_a0)
    a[0] = asset_get_index(_a0);
    if (_a0 == -1) return undefined; // 脚本不存在 Script does not exist   
    _size = array_length_1d(a);    
    
} else if (is_string(a)) {     
    a = asset_get_index(a);
    _size = 0;
} else _size = 0;


switch (_size) 
{
    case 0: // script index or user event id;
    
    if (a < -1) return event_user(abs(a));
    return script_execute(a)
    
    break;
    
    case 1: 
    
    if (a[0]<-1 ) return event_user(abs(a[0]));
    return script_execute(a[0]);    
    
    break;
        
    case 2:
    return script_execute(a[0],a[1]); break;
    
    case 3:     
    return script_execute(a[0],a[1],a[2]); break;
    
    case 4:
    return script_execute(a[0],a[1],a[2],a[3]); break;
    
    case 5:     
    return script_execute(a[0],a[1],a[2],a[3],a[4]); break;
    
    case 6:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5]); break;
    
    case 7: 
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6]); break;
    
    case 8: 
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]); break;
    
    case 9: 
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8]); break;
    
    case 10:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]); break;
    
    case 11:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10]); break;
    
    case 12:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11]); break;
    
    case 13:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12]); break;
    
    case 14:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13]); break;
    
    case 15:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14]); break;
    
    case 16:
    return script_execute(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15]); break;
    default: show_debug_message("Execute unable to handle. ");
}

return undefined;


