Map {
  background-color: #1E3D4A;
}

/*Bathemetry*/
.layer-2022 [zoom>=2]
{
  [DRVAL2>=-3.6][DRVAL2<=0] {polygon-fill:#FFFFFF;}
  [DRVAL2>0][DRVAL2<=2.0] {polygon-fill:#FFFFFF;}
  [DRVAL2>2.0][DRVAL2<=5] {polygon-fill:#FFFFFF;}
  [DRVAL2>5][DRVAL2<=10] {polygon-fill:#E8E8E8;}
  [DRVAL2>10][DRVAL2<=20] {polygon-fill:#E0E0E0;}
  [DRVAL2>20][DRVAL2<=30] {polygon-fill:#DCDCDC;}
  [DRVAL2>30][DRVAL2<=50] {polygon-fill:#D1D1D1;}
  [DRVAL2>50][DRVAL2<=100] {polygon-fill:#CDCDCD; polygon-opacity:0.75;}
  polygon-comp-op: overlay;
   
  [zoom>=9]
    {
  polygon-pattern-file: url("http://linz.govt.nz/sites/default/files/watertexture.jpg");
  polygon-pattern-comp-op: multiply;
    } 
}

.layer-1153 [zoom>=0]
{
  polygon-fill:#426746;
  polygon-pattern-file: url("http://linz.govt.nz/sites/default/files/gravelrocks.jpg");
  polygon-pattern-comp-op: multiply;
}

/*Hillshade*/
.layer-2074 [zoom>=6]
{
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
  	stop(1, #222222)
	stop(255, #EBEBEB);
  comp-op: overlay;
}

/*DEM*/
.layer-1768 [zoom>=4] 
{
  raster-opacity:0.6;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
     stop(-30, transparent)
      stop(550, #ADA89F)
      stop(575, #8A8376)
      stop(605, #7C766B)
      stop(2000, #6F695F)
      stop(2500, #615C53) 
      stop(3000, #FFFFFF)
      stop(3740.283936, #FFFFFF);
}
