function setup() {
    createCanvas(900, 900);
    background(0,225, 0);
  }
  
  function draw() {
    fill(0, 0, 225)
    if(mouseIsPressed){
     ellipse(mouseX, mouseY, 50, 50)
          
    }
  }