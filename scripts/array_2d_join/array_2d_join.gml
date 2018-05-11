/// @desc array_2d_join( arr1,x,newLine,reset,arr2,arr3,...)
/// @arg arr1
/// @arg x
/// @arg newline
/// @arg reset
/// @arg arr2
/// @arg arr3...

// 将一维数组合并到二维数组中
// join 1d array to 2d array, and return the array after joined

//a = [];
//a[2,2] = 10;
//b = [1,2,3];
//c = [4,5];
//array_2d_join(a,1,true,false,b,c);
//show_debug_message(a); // { {  }, { 1,2,3 }, { 0,0,10,4,5 },  }

var a1,a2,xx,nl,s2,s1,re;
a1 = argument[0];  
xx = argument[1];      
nl = argument[2]; // new line 
re = argument[3]; // reset
   
for (var i = 4; i < argument_count; i ++) 
{
    a2 = argument[i]; 
    s1 = array_length_1d(a2);    
    
    if (re) s2 = 0;
    else s2 = array_length_2d(a1, xx);
    
    if (s1 == 0) a1[@ xx, s2] = a2;        
    else for(var j = 0; j < s1; j ++) { 
        a1[@ xx, s2 + j] = a2[j];
    }
    if (nl) xx++;
}
return a1;