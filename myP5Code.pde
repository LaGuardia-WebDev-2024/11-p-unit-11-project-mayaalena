var phinX = [100, 300, 10, 200];
var phinY = [350, 270, 400, 200];

var waveX= [300,325,400,450];
var waveY= [400,450,435,500]

setup = function() {
   size(900, 700); 
  background(0,0,0,0);
   textSize(40);
   for(var i = 0; i < phinX.length; i++){
     text("🐬", phinX[i], phinY[i]);
   }
   var  x= 0
   while(x<450){
   text("🐚",x,500);
   text("🐚",x-10,600);

   text("☁",x, random(100,300));
   x+=55
   }

};



draw= function(){
  drawWaves();
  if (mousePressed){
    waveX.push(mouseX);
    waveY.push(mouseY);
  }
};


var drawWaves= function(){
  for(var i= 10; i < waveY.length; i++){
    text("🌊",waveX[i],waveY[i]);
  }
};

  
  


