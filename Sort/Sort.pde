//Hello.

int numberOfNumbers = 100;
float deltaX = 1;
int [] numbers =  new int [numberOfNumbers];
int step = 0;
int temp =0;

void setup(){
  size(1000,400);
  for(int i =0; i<numbers.length; i++){
    numbers[i] = int(random(height));
  }
  deltaX = width/numberOfNumbers;
  frameRate(5);
}

//Draws stuff
void draw(){
  //overlays
  background(0);
  displayValues();
  //active Sorts
  selectionSortStep();
  bubbleSortStep();
}

//displays rectangles
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
  if(step <numbers.length){
    int smallSpot = step;
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
}

void bubbleSortStep(){
  for(int i =0; i< numbers.length-1; i++){
    if(numbers[i]>numbers[i+1]){
      //switch elements
      temp = numbers[i];
      
//Corruption
      numbers[i] = numbers[i+1];
      numbers[i+1] = temp;
    }
  }
  step++;
}

void bogoSortStep(){
  if(isSorted()){
    //shuffle
  }
}

boolean isSorted(){
  return false;
}
