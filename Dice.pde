void setup() {
    size(300, 300);
    noLoop(); 
}

void draw() {
    background(255); 
    int total = 0;   

  
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
           
            Die die = new Die(50 + i * 60, 50 + j * 60);  
            die.roll();  
            die.show(); 
            total += die.value;  
        }
    }
    
  
    fill(0);
    textSize(24);
    text("Total: " + total, 100, 250);  
}

void mousePressed() {
    redraw();  
}

class Die {
    int x, y;   
    int size;   
    int value; 
    

    Die(int x, int y) {
        this.x = x;
        this.y = y;
        this.size = 50;  
        roll();  
    }

   
    void roll() {
        value = (int)(Math.random() * 6) + 1;
    }
    
  
    void show() {
        fill(255); 
        rect(x, y, size, size);  
        
       
        fill(0);  
        if (value == 1 || value == 3 || value == 5) {
            ellipse(x + size/2, y + size/2, 10, 10);  
        }
        if (value >= 2) {
            ellipse(x + size/4, y + size/4, 10, 10); 
            ellipse(x + 3*size/4, y + 3*size/4, 10, 10); 
        }
        if (value >= 4) {
            ellipse(x + 3*size/4, y + size/4, 10, 10);  
            ellipse(x + size/4, y + 3*size/4, 10, 10);  
        }
        if (value == 6) {
            ellipse(x + size/4, y + size/2, 10, 10);  
            ellipse(x + 3*size/4, y + size/2, 10, 10);  
        }
    }
}
