//Hello.
//?
//Corruption aghlsidftgywengiur  WD
int numberOfNumbers = 100;
float deltaX = 1;
int [] numbers =  new int [numberOfNumbers];
int step = 0;
int temp =0;
boolean forward = true;

void setup(){
  size(1000,400);
  for(int i =0; i<numbers.length; i++){
    numbers[i] = int(random(height));
  }
  deltaX = width/numberOfNumbers;

  frameRate(10);

}

//Draws stuff
void draw(){
  //overlays
  background(0);
  displayValues();
  //active Sorts
  //selectionSortStep();
  //bubbleSortStep();
  cocktailSortStep();
}

//displays rectangles
void displayValues(){
  for(int i =0; i<numbers.length; i++){
    //if(i ==step){
    //  fill(0,255,0);
    //}else{
    //  fill(255);
    //}
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
    //numbers.shuffle
  }
}

boolean isSorted(){
  return false;
}


void cocktailSortStep(){
  if(forward){
    for(int i =0; i< numbers.length-1; i++){
      if(numbers[i]>numbers[i+1]){
        //switch elements
        temp = numbers[i];
        numbers[i] = numbers[i+1];
        numbers[i+1] = temp;
      }
    }
    forward =! forward;
  }else{
    for(int i =numbers.length-1; i> 1; i--){
      if(numbers[i-1]>numbers[i]){
        //switch elements
        temp = numbers[i];
        numbers[i] = numbers[i-1];
        numbers[i-1] = temp;
      }
    }
    forward =! forward;
  }
  //step++;
}

