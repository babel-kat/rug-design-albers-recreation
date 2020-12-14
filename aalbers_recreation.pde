// Rug Design for Child's Room (1928), Anni Albers
// By Katerina Labrou 
// For course MAS.S48: Recreating the past (MAS.S68), instr. Zach Lieberman
// Fall 2020


int cols = 22;
int rows = 33;

int rectDimention = 29;

int total = cols * rows;

boolean leftToRight;

int startTime, time, interval;

boolean moveOn = true;

//Initialize colorCodes
color[] colorCodes = { #292b32, 
                       #61626e,
                       #6d7383, 
                       #acb4c7, 
                       #bab5bc, 
                       #d4c6c3, 
                       #8e3f32, 
                       #d2bf60 };
                       
                       
                       
//Initialize printColor array with codes 1-5
int[][] printColors = {{0, 3},
                       {6, 2},
                       {5, 1},
                       {3, 7},
                       {1, 2},
                       {0, 6},
                       {4, 3},
                       {2, 5},
                       {3, 1},
                       {2, 0},
                       {7, 3},
                       {2, 4},
                       {6, 1},
                       {0, 5},
                       {3, 2},
                       {2, 1},
                       {3, 7},
                       {5, 2},
                       {0, 3},
                       {1, 2},
                       {3, 1},
                       {1, 6},
                       {7, 3},
                       {0, 5},
                       {1, 2},
                       {3, 4},
                       {6, 2},
                       {2, 0},
                       {1, 2},
                       {7, 3},
                       {1, 5},
                       {4, 2},
                       {3, 0}};

void setup(){
  size(860, 1070);
  background(255);
  noStroke();
  
  leftToRight = true;
}

void draw(){
  background(255);
  println("HERE");

  pushMatrix();
  translate(115, 10);
  drawGrid();
  popMatrix();
}

void drawGrid(){
  // Draw column
  for (int i = 0; i < cols; i++){
    if (leftToRight) {  
      // Draw row
      for (int j = 0; j < rows; j++){
        if (i % 2 == 0){
          fill(colorCodes[printColors[j][0]]);
          rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention); 
          println("DRAW RECT 1");
      } else {
          fill(colorCodes[printColors[j][1]]);
          rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
          println("DRAW RECT 2");
      }
     }
    } else { // right to left
        // Draw row
        for (int j = rows - 1; j >= 0; j--) {
          if (i % 2 == 0){
            fill(colorCodes[printColors[j][0]]);
            rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
          } else {
            fill(colorCodes[printColors[j][1]]);
            rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
          } 
         }
      leftToRight = !leftToRight;
    }
   }
     
  for (int i = 0; i < cols; i++){
    if (leftToRight) {  
      for (int j = 0; j < rows; j++){
        if (i % 2 == 0){
          fill(colorCodes[printColors[j][0]]);
          rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
        } else {
          fill(colorCodes[printColors[j][1]]);
          rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
        }
      }
    } else { // right to left
      for (int j = rows - 1; j >= 0; j--) {
        if (i % 2 == 0){
          fill(colorCodes[printColors[j][0]]);
          rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
        } else {
          fill(colorCodes[printColors[j][1]]);
          rect(i * rectDimention, j * rectDimention, rectDimention, rectDimention);
        }
      }
      leftToRight = !leftToRight;
     }
  }
}
