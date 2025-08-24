/*{
    "CREDIT": "by zoidberg",
    "CATEGORIES": ["Geometry Adjustment", "Utility"],
    "INPUTS": [
        {"NAME": "inputImage", "TYPE": "image"},
        {"NAME": "xrot", "LABEL": "X rotate", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 2},
        {"NAME": "yrot", "LABEL": "Y rotate", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 2},
        {"NAME": "zrot", "LABEL": "Z rotate", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 2},
        {"NAME": "zoom", "LABEL": "Zoom Level", "TYPE": "float", "DEFAULT": 1, "MIN": 0, "MAX": 1}
    ],
    "ISFVSN": "2",
    "DESCRIPTION": "performs a 3d rotation"
}*/

void main()
{
	gl_FragColor = IMG_THIS_PIXEL(inputImage);
}
