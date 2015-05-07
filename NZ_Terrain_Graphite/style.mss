Map {
  background-color: #1E3D4A;
}

/*Bathy*/
.layer-2022 [zoom>=3]
{
  [drval2>=-3.6][drval2<=0] {polygon-fill:#FFFFFF;}
  [drval2>0][drval2<=2.0] {polygon-fill:#FFFFFF;}
  [drval2>2.0][drval2<=5] {polygon-fill:#FFFFFF;}
  [drval2>5][drval2<=10] {polygon-fill:#E8E8E8;}
  [drval2>10][drval2<=20] {polygon-fill:#E0E0E0;}
  [drval2>20][drval2<=30] {polygon-fill:#DCDCDC;}
  [drval2>30][drval2<=50] {polygon-fill:#D1D1D1;}
  [drval2>50][drval2<=100] {polygon-fill:#CDCDCD; polygon-opacity:0.75;}
  polygon-comp-op: overlay;
  
  [zoom>=9]
    {
  polygon-pattern-file: url(http://linz.govt.nz/sites/default/files/watertexture.jpg);
  polygon-pattern-comp-op: multiply;
    }  
}

/*Coastline*/
.layer-1153
{
  polygon-fill:#E2DDDB;
  [zoom>=9]
    {
  polygon-pattern-opacity: 0.1;
  polygon-pattern-file: url(http://linz.govt.nz/sites/default/files/gravelrocks.jpg);
  polygon-pattern-comp-op: multiply;
    }
  [zoom>=10]{polygon-pattern-opacity: 0.35}
  [zoom>=16]{polygon-pattern-opacity: 0.5}
}

/*Hillshade*/
.layer-2074-band-1 [zoom>=6]
{
  raster-scaling: bilinear;
  raster-colorizer-default-mode: linear;
  raster-colorizer-default-color: transparent;
  raster-colorizer-stops:
  	stop(0, #000000)
	stop(255, #FFFFFF);
  raster-comp-op: overlay;
}