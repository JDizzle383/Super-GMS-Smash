/// @desc array_prilist_sort(keylist,vallist[,minIndex,maxIndex])
/// @arg keylist
/// @arg vallist
/// @arg [minIndex]
/// @arg [maxIndex]

var p, pv, a = argument[0], v = argument[1], mi, ma;
if (argument_count > 2) {
	mi = argument[2];
	ma = argument[3];	
} else {
	mi = 1;
	ma = a[0];
}

switch(ma - mi) { // sort groups left
    case 0:
        return a; break;
    case 1: 
        if a[@ mi] > a[@ ma] {
            p = a[@ ma];
            a[@ ma]= a[@ mi];
            a[@ mi]= p;
			pv = v[@ ma];
            v[@ ma]= v[@ mi];
            v[@ mi]= pv;
        }
        return a;
        break;
    case 2:
        if a[@ mi] > a[@ ma-1] {
            p = a[@ ma-1];
            a[@ ma-1] = a[@ mi];
            a[@ mi] = p;
			pv = v[@ ma-1];
            v[@ ma-1] = v[@ mi];
            v[@ mi] = pv;			
        }
        if a[@ mi+1] > a[@ ma] {
            p = a[@ ma];
            a[@ ma] = a[@ mi+1];
            a[@ mi+1] = p;
			pv = v[@ ma];
            v[@ ma] = v[@ mi+1];
            v[@ mi+1] = pv;
        }
        if a[@ mi] > a[@ ma-1] {
            p = a[@ ma-1];
            a[@ ma-1] = a[@ mi];
            a[@ mi] = p;
			pv = v[@ ma-1];
            v[@ ma-1] = v[@ mi];
            v[@ mi] = pv;
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
		pv = v[@ i];
        v[@ i] = v[@ _put];
        v[@ _put] = pv;		
        _put ++;
    }
}
if (mi < _put-1) {
    array_prilist_sort(a, v, mi, _put-2);
}
if _put < ma {
    array_prilist_sort(a, v, _put, ma);
}


