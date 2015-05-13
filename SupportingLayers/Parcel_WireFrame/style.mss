Map {background-color: transparent;}

.layer-1571 [zoom>=1]
[status = "Current"]
[topology_type = "Primary"] 
{
  line-color: #111111;
  line-width: 0.1;
  line-opacity: 0.1;
    [zoom>=4] {line-opacity: 0.1;}
    [zoom>=8] {line-opacity: 0.5;}
    [zoom>=10] {line-width: 0.2;}
    [zoom>=14] {line-opacity: 0.75;}
    [zoom>=15] {line-width: 0.5}
    [zoom>=16] {line-width: 0.75;line-opacity: 1.0;}
}

.layer-1571 [zoom>=17]
[status = "Current"] 
[parcel_intent = "Secondary"] 
{
  	line-color: #111111;
  	line-width: 0.75;
  	polygon-fill: #AAAAAA;
  	polygon-opacity: 0.35;
  
  	[zoom>=19] {line-width: 2.0;}
}