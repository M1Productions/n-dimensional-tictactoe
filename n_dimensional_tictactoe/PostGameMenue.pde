class PostGameMenue extends Menue
{
  Button restartBt;
  
  String winner;
  
  PostGameMenue()
  {
    super();
    
    this.backBt.label = "MENU";
    
    this.restartBt = new Button(this.x+this.w/2-this.w/7, this.y+this.w/5, this.w/3.5, this.w/5, "RESTART");
  }

  void draw()
  {
    background(backGroundIMG);
    noStroke();
    fill(primCol,200);
    rect(0,0,width,height);
    
    textSize(this.h/20);
    textAlign(CENTER,CENTER);
    fill(secCol);
    text("GAME OVER", width/2, this.y+this.h/20);
    text(winner, width/2, height/2-this.h/20);
    text("WINNS", width/2, height/2);
    
    super.draw();
    
    this.restartBt.draw();
  }
  
  void mousePressed()
  {
    super.mousePressed();
    if(this.restartBt.mouseOver())
    { this.restartBt.selected = true; }
  }
  void mouseReleased()
  {
    if(this.restartBt.mouseOver() && this.restartBt.selected)
    { changeMode = 1; }
    super.mouseReleased();
  }
  
  void unselectButtons()
  {
    super.unselectButtons();
    this.restartBt.selected = false;
  }
}
