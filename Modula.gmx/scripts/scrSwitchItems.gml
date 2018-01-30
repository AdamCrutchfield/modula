///scrSwitchItems(item1, str1, item2, str2)
//str means strength


_item1 = argument0;
_str1 = argument1;

_item2 = argument2;
_str2 = argument3;

instance_destroy(objtest)
with (instance_create(0, 0, objtest)) {
    i1 = other._item1;
    s1 = other._str1;
    
    i2 = other._item2;
    s2 = other._str2;
}
with (instance_create(0, 128, objtest)) {
    i1 = argument0;
    s1 = argument1;
    
    i2 = argument2;
    s2 = argument3;
}

var _temp = _item1;
var _tempStr = _str1;

_item1 = _item2;
_str1 = _str2;
//
_item1 = game.mouse[0];
_str1 = game.mouse[1];
//

_item2 = _temp;
_str2 = _tempStr;

argument0 = _item1;
argument1 = _str1;

argument2 = _item2;
argument3 = _str2;

with (instance_create(128, 0, objtest)) {
    i1 = other._item1;
    s1 = other._str1;
    
    i2 = other._item2;
    s2 = other._str2;
}

with (instance_create(128, 128, objtest)) {
    i1 = argument0;
    s1 = argument1;
    
    i2 = argument2;
    s2 = argument3;
}

argument2 = game.inventory[2, 0];
