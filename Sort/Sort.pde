int numberOfNumbers = 100;
float deltaX = 1;
int [] numbers =  new int [numberOfNumbers];
int step = 0;

void setup(){
  size(600,400);
  for(int i =0; i<numbers.length; i++){
    numbers[i] = int(random(height));
  }
  deltaX = width/numberOfNumbers;
  frameRate(4);
}

//Draws stuff
void draw(){
  //overlays so old picture is gone
  background(240);
  displayValues();
  if(step <numbers.length){
    selectionSortStep();
  }
}

void displayValues(){
  for(int i =0; i<numbers.length; i++){
    if(i ==step){
      fill(0,255,0);
    }else{
      fill(255);
    }
    rect(i*deltaX, height - numbers[i], deltaX, numbers[i]);
  }
}

void selectionSortStep(){
  int smallSpot = step;
  int temp =0;
  for(int j =step; j< numbers.length; j++){
    if(numbers[j] < numbers[smallSpot]){
      smallSpot = j;
    }
  }
  temp = numbers[step];
  numbers[step] = numbers[smallSpot];
  numbers[smallSpot] = temp;
  step++;
}