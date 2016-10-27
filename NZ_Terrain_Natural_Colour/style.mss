Map 
{
  background-color: #1e3d4a;
}

#bathycoastalmatch 
{
  [drval2>=-3.6][drval2<=0] {polygon-fill:#ffffff;}
  [drval2>0][drval2<=2.0] {polygon-fill:#ffffff;}
  [drval2>2.0][drval2<=5] {polygon-fill:#ffffff;}
  [drval2>5][drval2<=10] {polygon-fill:#e8e8e8;}
  [drval2>10][drval2<=20] {polygon-fill:#e0e0e0;}
  [drval2>20][drval2<=30] {polygon-fill:#dcdcdc;}
  [drval2>30][drval2<=50] {polygon-fill:#d1d1d1;}
  [drval2>50][drval2<=100] {polygon-fill:#cdcdcd; polygon-opacity:0.75;}
  polygon-comp-op: overlay;
   
  [zoom>=9]
    {
  polygon-pattern-file: url("http://linz.govt.nz/sites/default/files/watertexture.jpg");
  polygon-pattern-comp-op: multiply;
    } 
}

/*coastline*/
#nz_coastline [zoom>=0]
{
  polygon-fill:#426746;
  polygon-pattern-file: url("http://linz.govt.nz/sites/default/files/gravelrocks.jpg");
  polygon-pattern-comp-op: multiply;
}

/*hillshade*/
#hillshademultiplyrep[zoom>=6]
{
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
  	stop(1, #222222)
	stop(255, #ebebeb);
  comp-op: overlay;
}

/*dem*/
#nzdemall [zoom>=4] 
{
  raster-opacity:0.6;
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
     stop(-30, transparent)
      stop(550, #ada89f)
      stop(575, #8a8376)
      stop(605, #7c766b)
      stop(2000, #6f695f)
      stop(2500, #615c53) 
      stop(3000, #ffffff)
      stop(3740.283936, #ffffff);
}