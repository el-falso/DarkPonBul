point = argument0;

var vec2X = 0;
var vec2Y = 1;

var absVal = sqrt(sqr(point[vec2X]) + sqr(point[vec2Y]));

point[@ vec2X] = (1 / absVal) * point[vec2X];
point[@ vec2Y] = (1 / absVal) * point[vec2Y];

return point;