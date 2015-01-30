Map {
  background-color: transparent;
}

#Coastline {
  line-color:#594;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:#ae8;
}

#Cities::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='METR'], 
#Cities::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='TOWN'],
#Cities::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='POPL'], 
#Cities::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='LOC'],
#Cities::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='USAT'],
#Cities::HOne [zoom>=5][zoom<=13][size=12.2][desc_code='SBRB']
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

#Cities::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='METR'], 
#Cities::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='TOWN'],
#Cities::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='POPL'],
#Cities::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='LOC'],
#Cities::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='USAT'],
#Cities::HTwo [zoom>=7][zoom<=15][size=9.5][desc_code='SBRB']
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

#Cities::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='METR'], 
#Cities::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='TOWN'],
#Cities::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='POPL'],
#Cities::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='LOC'],
#Cities::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='USAT'],
#Cities::HThree [zoom>=9][zoom<=15][size<=8.2][size>=7.5][desc_code='SBRB']
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

#Cities [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='METR'], 
#Cities [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='TOWN'],
#Cities [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='POPL'], 
#Cities [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='LOC'],
#Cities [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='USAT'],
#Cities [zoom>=10][zoom<=16][size<=6.8][size>=6.1][desc_code='SBRB']
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

#Cities [zoom>=12][zoom<=18][size<=5.5][desc_code='METR'], 
#Cities [zoom>=12][zoom<=18][size<=5.5][desc_code='TOWN'],
#Cities [zoom>=12][zoom<=18][size<=5.5][desc_code='POPL'], 
#Cities [zoom>=12][zoom<=18][size<=5.5][desc_code='LOC'],
#Cities [zoom>=12][zoom<=18][size<=5.5][desc_code='USAT'],
#Cities [zoom>=12][zoom<=18][size<=5.5][desc_code='SBRB']
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
