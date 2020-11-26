// Credit card coin holder
// Card width
cardX = 85.6;
// Card height
cardY = 53.98;
// Card Thickness
cardThickness = 2;
// Number of rows of coins
numRows = 2;
// Number of coins per row
numCols = 3;
// Total number of coins
numCoins = numRows * numCols;
// Radius of the coin holes
coinRadius = 12.13;
// X Edge Offset
edgeXOffset = 0.5;
// Y Edge Offset
edgeYOffset = 4;

distanceBetweenCentersX = cardX / numCols;
distanceBetweenCentersY = cardY / numRows;

centersX = [for (i = [0,1,numCols]) distanceBetweenCentersX*i + coinRadius + edgeXOffset];
centersY = [for (i = [0,1,numRows]) distanceBetweenCentersY*i + coinRadius + edgeYOffset];

//cylinders = [for (k=centersX) for (j = centersY) cylinder(cardThickness,r=coinRadius,center=[k,j])];

difference() {
    cube([cardX, cardY, cardThickness], [0, 0]);

    for (k=centersX) {
        for (j=centersY) {
            echo(k);
            echo(j); 
            translate([j,k,.5])
            cylinder(cardThickness,r=coinRadius);
        }
    }
}