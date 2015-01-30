Map {
  background-color: transparent;
}

/*All_Roads_Base_ElectrolPrivate*/
/*.layer-2093 [zoom>=9]
[name_label =~ '(?!ACCESSWAY).*']
{
  line-width:0.10;
  line-opacity: 0.5;
  line-color:#555555;
  line-smooth: 0.2;
  line-cap: round;
  [zoom>=12] {line-width:0.15;}
  [zoom>=13] {line-width:0.35;line-opacity:1.0;line-color:#959595;}
  [zoom>=14] {line-width:1.0; line-opacity:0.5;}
  [zoom>=15] {line-width:1.5; line-opacity:0.75;}
  [zoom>=16] {line-width:5.0; line-opacity:1.0;}
  [zoom>=17] {line-width:10.0;}
  [zoom>=18] {line-width:25.0;}
  [zoom>=19] {line-width:50.0;}
  [zoom>=20] {line-width:100.0;}
}*/

/*All_Roads_Base_ElectrolPrivate*/
/*.layer-2093::FG [zoom>=15]
[name_label =~ '(?!ACCESSWAY).*']
{
  line-color: #888888;
  line-width:0.1;
  line-cap: round;
  line-smooth: 0.2;
  [zoom>=16] {line-width:1.0;}
  [zoom>=17] {line-width:5.0;}
  [zoom>=18] {line-width:18.0;}
  [zoom>=19] {line-width:40.0;}
  [zoom>=20] {line-width:85.0;}
}*/

/*Road_CL_Electrol_StreetLabels*/
.layer-2093::StreetLabels
[zoom>=16]
[name_label =~ '(?!ACCESSWAY).*']
{
  text-name: [name_label];
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