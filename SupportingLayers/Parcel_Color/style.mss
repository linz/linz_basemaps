Map 
{
  background-color: transparent;
}

.layer-1571
[status = "Current"]
[status != "Historic"]
[status != "Streambed"]
[parcel_intent = "Hydro"]
{
  polygon-fill: #5e737c;
  polygon-opacity: 0.95;
    [zoom=12] {polygon-opacity: 0.9;}
    [zoom=13] {polygon-opacity: 0.8;}
    [zoom=14] {polygon-opacity: 0.7;}
    [zoom=15] {polygon-opacity: 0.6;}
    [zoom=16] {polygon-opacity: 0.5;}
    [zoom=17] {polygon-opacity: 0.4;}
    [zoom=18] {polygon-opacity: 0.3;}
    [zoom=19] {polygon-opacity: 0.2;}
    [zoom=20] {polygon-opacity: 0.1;}
}

.layer-1571 [zoom>=8] 
[status = "Current"]
[status != "Historic"]
[status != "Secondary"]
[status != "Easement"]
[parcel_intent != "Hydro"]
[parcel_intent != "Road"]
[topology_type = "Primary"] 
{
  polygon-fill: #EEEEEE;
  line-color: #111111;
  line-width: 0.05;
  line-opacity: 0.50;
    [zoom>=9] {line-opacity: 0.5;}
    [zoom>=10] {line-width: 0.1;}
    [zoom>=11] {line-width: 0.2;}
    [zoom>=14] {line-width: 0.5; line-opacity: 0.75;}
    [zoom>=16] {line-width: 1.25;line-opacity: 1.0;}
}
  
.layer-1571 [zoom>=12]
[status = "Current"]
[status != "Historic"]
[parcel_intent = "Road"]
{
  polygon-fill: #531A04; 
  polygon-opacity: 0.4;
  [zoom=14] {polygon-opacity: 0.5;}
}
  
.layer-1571 [zoom>=17]
[status = "Current"]
[status != "Historic"]
[parcel_intent = "Secondary"]
{
    line-color: #AAAAAA;
    polygon-opacity:1;
    polygon-fill: #F0F0F0;
}
