@font: "DejaVu Sans Mono Bold";

Map {
  background-color: transparent;
  }

.layer-787::ten
[zoom>=16]
[order>=10] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Geodetic_Square.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
} 

.layer-787::nine
[zoom>=16]
[order=9] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Circle_White.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
}

.layer-787::eight
[zoom>=16]
[order=8] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Circle_LightGrey.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-opacity: 0.9;
}

.layer-787::six
[zoom>=15]
[order>=6][order<=7]
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Circle_DarkGrey.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.75;
}

.layer-787::five 
[zoom>=14]
[order=5] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Circle_Orange.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
}

.layer-787::two
[zoom>=12]
[order=4] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Triangle_Orange.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.75;
  shield-text-dy: 4.5;
}

.layer-787::two
[zoom>=9]
[order=3]
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Triangle_Orange.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
  shield-text-dy: 4.5;
}

.layer-787::two
[zoom>=7]
[order=2] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Triangle_Orange.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 10;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
  shield-text-dy: 4.5;
}

.layer-787::one
[zoom>=3]
[order=1] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Triangle_Large_Red.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 12;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
  shield-text-dy: 2.5;
}

.layer-787::zero
[zoom>=3]
[order=0] 
{
  shield-file: url("http://www.linz.govt.nz/sites/default/files/lds_images/Triangle_Large_Red.svg");
  shield-transform: scale(0.17,0.17);
  shield-face-name: @font;
  shield-name: [order];
  shield-size: 12;
  shield-allow-overlap: true;
  shield-opacity: 0.9;
  shield-text-dy: 2.5;
}
