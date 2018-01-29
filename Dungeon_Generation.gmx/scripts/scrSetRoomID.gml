/*This script assigns a room ID to each region of the floor by creating a 4 digit value representing various features.
This value will be read in scrBuildFloor via switch to decide which pattern to follow when placing instances.

First digit- Floor type: (supports values of 0-9)
    0 = Greece
    1 = Western
    2 = City
    3 = Future
Second and third digit- Room tiling
    1-15 where E,N,W,S are represented by 1,2,4,and 8 respectively (supports values 1-99)
Fourth digit- Room variation (supports 0-9)
    Variation meaning two ids with the same floor and tiling could still be created in up to 10 differnt ways
    0- Varaint #1
    1- Variant #2
    2- Variant #3
    3- Variant #4
    
Example: A room ID of 1132 would create a room following the western theme (1), with a E + W + S tiling (13) and would be the third of four possibilities (2).
         Likewise, an id of 3010 would create a room following the future theme (3), with a E tiling (01), and would be the first of four possibilities.
*/
var ix = 0;
var iy = 0;

for (ix = 0; ix < 8; ix ++) { //X position of the grid
    for (iy = 0; iy < 8; iy++) { //Y position of the grid
        if (ds_grid_get(global.dsRoomTiling,ix,iy) != -1) {
            var tiling = (ds_grid_get(global.dsRoomTiling,ix,iy) * 10);
            var variations = (irandom_range(0,3));
            switch (global.FloorType) {
                case floortype.greece: var floors = 0; break;
                case floortype.western: var floors = 1000; break;
                case floortype.city: var floors = 2000; break;
                case floortype.future: var floors = 3000; break;
            }
            ds_grid_set(global.dsRoomId,ix,iy,tiling + variations + floors);
        } else
        ds_grid_set(global.dsRoomId,ix,iy,-1); //an ID of -1 will place no instances
    }
}
