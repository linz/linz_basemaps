/*StateHighways*/
.layer-818 [zoom>=6]
[name =~ 'State Highway.*']
{
  line-color: #7B4A4A;
  line-width:1.0; 
  line-opacity: 1.0;
  line-cap: round;
  line-smooth: 0.2;
  [zoom>=11] {line-width: 2.0;}
  [zoom>=15] {line-width: 3.0; line-opacity:0.75;}
  [zoom>=16] {line-width: 3.0; line-opacity: 1.0;}
  [zoom>=17] {line-width: 8.0;}
  [zoom>=18] {line-width: 22.0;}
  [zoom>=19] {line-width: 47.0;}
  [zoom>=20] {line-width: 97.0;}
}

/*Motorway_Labels_Shields*/
.layer-818::MotorwaysShield [zoom>=6]
[name =~ 'State Highway.*']
{
  shield-name: "[name].replace('State Highway\s+(\d+)','\1')";
  shield-file: url("http://www.linz.govt.nz/sites/default/files/nz_highwayshield_2.svg");
  shield-face-name: 'Arial Bold';
  shield-fill:#FFFFFF;
  shield-size: 9.0;
  shield-justify-alignment: center;
  shield-transform: scale(1.8,1.8);
  shield-min-distance: 100;
  shield-spacing: 100;
  shield-avoid-edges: true;
  shield-min-padding: 10.0;
   
  [zoom>=11] {shield-min-distance: 250; shield-spacing: 250;}
  [zoom>=13] {shield-size: 10.0;shield-transform: scale(2.0,2.0);}
  [zoom>=14] {shield-size: 11.0;shield-transform: scale(2.5,2.5);}
  [zoom>=17] {shield-min-distance:50;}
}