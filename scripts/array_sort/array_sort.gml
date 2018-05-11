/// @desc array_sort(array[,minIndex,maxIndex])
/// @arg array
/// @arg [minIndex]
/// @arg [maxIndex]

var p,a = argument[0], mi, ma;
if (argument_count > 1) {
	mi = argument[1];
	ma = argument[2];	
} else {
	mi = 0;
	ma = array_length_1d(a)-1;
}

switch(ma - mi){ // sort groups left
    case 0:
        return a; break;
    case 1: 
        if a[@ mi] > a[@ ma] {
            p = a[@ ma];
            a[@ ma]= a[@ mi];
            a[@ mi]= p;
        }
        return a;
        break;
    case 2:
        if a[@ mi] > a[@ ma-1] {
            p=a[@ ma-1];
            a[@ ma-1] = a[@ mi];
            a[@ mi] = p;
        }
        if a[@ mi+1] > a[@ ma] {
            p = a[@ ma];
            a[@ ma] = a[@ mi+1];
            a[@ mi+1] = p;
        }
        if a[@ mi] > a[@ ma-1] {
            p = a[@ ma-1];
            a[@ ma-1] = a[@ mi];
            a[@ mi] = p;
        }
        return a;
        break;
}

var _pivot = a[@ ma];
var _put = mi;

for(var i = mi; i <= ma; i ++){
    if a[@ i] <= _pivot {
        p = a[@ i];
        a[@ i] = a[@ _put];
        a[@ _put] = p;
        _put ++;
    }
}
if (mi < _put-1) {
    a = array_sort(a,mi,_put-2);
}
if _put < ma {
    a = array_sort(a,_put,ma);
}
return a;

