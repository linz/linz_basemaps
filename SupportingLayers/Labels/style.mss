Map {
  background-color: transparent;
}

.layer-280::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='METR'], 
.layer-280::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='TOWN'],
.layer-280::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='POPL'], 
.layer-280::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='LOC'],
.layer-280::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='USAT'],
.layer-280::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='SBRB']
{
  [zoom>=5][zoom<=10]
    {
  pnt/marker-placement: point;
  pnt/marker-type: ellipse;
  pnt/marker-opacity: 0.75;
  pnt/marker-allow-overlap: true;
  pnt/marker-fill: #DDDDDD;  
  pnt/marker-line-color: #777777;
  pnt/marker-line-width: 1.0;
     }
  
  text-name: [name_ascii];
  text-face-name: 'Arial Bold';
  text-size: 14.0;
  text-fill: #DDDDDD;
  text-transform: uppercase;  
  text-character-spacing:2.5;
  text-halo-fill: #777777;
  text-halo-radius: 1.0;
  text-placement-type: simple;
  text-placements: "N";
  text-allow-overlap: true;
  text-vertical-alignment: top;
  text-dy: 10.0;
  [zoom>=6]{text-size: 16.0;}
  [zoom>=10]{text-size: 20.0;}
  [zoom>=12]{text-size: 24.0;}
}

.layer-280::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='METR'], 
.layer-280::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='TOWN'],
.layer-280::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='POPL'],
.layer-280::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='LOC'],
.layer-280::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='USAT'],
.layer-280::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='SBRB']
{
  [zoom>=7][zoom<=11]
    {
  pnt/marker-placement: point;
  pnt/marker-type: ellipse;
  pnt/marker-width: 6.0;
  pnt/marker-height: 6.0;
  pnt/marker-opacity: 6.0;
  pnt/marker-allow-overlap: true;
  pnt/marker-fill: #DDDDDD;  
  pnt/marker-line-color: #777777;
  pnt/marker-line-width: 1.0;
    }
  
  text-name: [name];
  text-face-name: 'Arial Bold';
  text-size: 11.0;
  text-fill: #DDDDDD;
  text-transform: uppercase;  
  text-character-spacing: 1.5;
  text-halo-fill: #777777;
  text-halo-radius: 1.0;
  text-placement-type: simple;
  text-placements: "N";
  text-allow-overlap: true;
  text-vertical-alignment: top;
  text-dy: 10.0;
  [zoom>=10]{text-size: 16.0;}
  [zoom>=12]{text-size: 18.0;}
  [zoom>=14]{text-size: 27.0;}
}

.layer-280::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='METR'], 
.layer-280::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='TOWN'],
.layer-280::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='POPL'],
.layer-280::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='LOC'],
.layer-280::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='USAT'],
.layer-280::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='SBRB']
{
  
  [zoom>=9][zoom<=12]
     {
  pnt/marker-placement: point;
  pnt/marker-type: ellipse;
  pnt/marker-width: 3.0;
  pnt/marker-height: 3.0;
  pnt/marker-opacity: 6.0;
  pnt/marker-allow-overlap: false;
  pnt/marker-fill: #DDDDDD;  
  pnt/marker-line-color: #777777;
  pnt/marker-line-width: 1.0;
    }
  
  text-name: [name];
  text-face-name: 'Arial Bold';
  text-size: 10.0;
  text-fill: #DDDDDD;
  text-transform: capitalize;  
  text-character-spacing: 1;
  text-halo-fill: #777777;
  text-halo-radius: 1.0;
  text-placement-type: simple;
  text-placements: "N";
  text-allow-overlap: false;
  text-vertical-alignment: top;
  text-dy: 5.0;
  [zoom>=10]{text-size: 13.0;}
  [zoom>=12]{text-size: 15.0;}
  [zoom>=14]{text-size: 24.0;}
}

.layer-280 [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='METR'], 
.layer-280 [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='TOWN'],
.layer-280 [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='POPL'], 
.layer-280 [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='LOC'],
.layer-280 [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='USAT'],
.layer-280 [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='SBRB']
{
  [zoom>=10][zoom<=12]
     {
  pnt/marker-placement: point;
  pnt/marker-type: ellipse;
  pnt/marker-width: 3.0;
  pnt/marker-height: 3.0;
  pnt/marker-opacity: 6.0;
  pnt/marker-allow-overlap: false;
  pnt/marker-fill: #DDDDDD;  
  pnt/marker-line-color: #777777;
  pnt/marker-line-width: 1.0;
    }
  
  text-name: [name];
  text-face-name: 'Arial Bold';
  text-size: 9.0;
  text-fill: #DDDDDD;
  text-transform: capitalize;  
  text-character-spacing: 1.5;
  text-halo-fill: #777777;
  text-halo-radius: 1.0;
 text-placement-type: simple;
  text-placements: "N";
  text-allow-overlap: false;
  text-vertical-alignment: top;
  text-dy: 5.0;
  [zoom>=10]{text-size: 11.0;}
  [zoom>=12]{text-size: 13.0;}
  [zoom>=14]{text-size: 18.0;}
}

.layer-280 [zoom>=12][zoom<=18][size<=5.5][desc_code='METR'], 
.layer-280 [zoom>=12][zoom<=18][size<=5.5][desc_code='TOWN'],
.layer-280 [zoom>=12][zoom<=18][size<=5.5][desc_code='POPL'], 
.layer-280 [zoom>=12][zoom<=18][size<=5.5][desc_code='LOC'],
.layer-280 [zoom>=12][zoom<=18][size<=5.5][desc_code='USAT'],
.layer-280 [zoom>=12][zoom<=18][size<=5.5][desc_code='SBRB']
{
  text-name: [name];
  text-face-name: 'Arial Bold';
  text-size: 8.0;
  text-fill: #DDDDDD;
  text-transform: capitalize;  
  text-character-spacing: 1.5;
  text-halo-fill: #777777;
  text-halo-radius: 1.0;
  text-placement-type: simple;
  text-allow-overlap: false;
  [zoom>=10]{text-size: 10.0;} 
  [zoom>=12]{text-size: 11.0;}
  [zoom>=14]{text-size: 14.0;}
}

/*Road_CL_Electrol_StreetLabels*/
.layer-818::StreetLabels
[zoom>=16]
[name =~ '(?!State Highway).*']
{
  text-name: [name];
  text-transform: capitalize;
  text-face-name: 'Arial Regular';
  text-fill: #FFFAFA;
  text-size: 11.0;
  text-halo-fill: #999999;
  text-halo-radius: 1.0;
  text-placement: line;
  text-character-spacing: 1.5;
  text-spacing: 400.0;
  [zoom>=17] {text-size: 12.0;}
  [zoom>=17] {text-halo-radius: 0.5;}
  [zoom>=19] {text-size: 16.0; text-character-spacing: 2.0;}
  [zoom>=20] {text-size: 24.0;}
}
