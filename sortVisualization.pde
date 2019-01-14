float liczby[],pom,hue;
int num1, num2;
int done=0,a=0;
int curr=0;
void setup(){
  //fullScreen();
  //frameRate(60);
  size(800,400);
  liczby = new float[width];
  for(int i =0;i<width;i++){
  liczby[i] = map(i,0,width,1,height);
  }
   for(int i=0;i<3*width;i++){
    num1=int(random(0,width));
    num2=int(random(0,width));
    pom = liczby[num1];
    liczby[num1]=liczby[num2];
    liczby[num2] = pom;   
  }
   colorMode(HSB,1.0);
    if(a==0){
    quicksort(0,width-1);
    a=1;  
  }

}

void show(){
  background(0);
  
  for(int j =0;j<width;j++){
    hue =liczby[j]/height;
    stroke(hue,1,1);
    line(j,height-1,j,height-liczby[j]);
  } 
}


//void draw(){
//  if(width-done-1!=0){
//show();
//  bubbleSort();
//  }
 //<>//
//}

void quicksort(int p,int r){
  int q;
  if(p<r){
      q = partition(p,r);
      quicksort(p,q);
      quicksort(q+1,r);
  }
}

int partition(int p,int r){
  float x = liczby[p], w;
  int i =p,j = r;
  while(true){
    while(liczby[j]>x){
      j--;
    }
    while(liczby[i]<x){
      i++;
    }
    if(i<j){
      w= liczby[i];
      liczby[i]=liczby[j];
      liczby[j]=w;
      i++;
      j--;
      //draw();
      show();
    }
    else{
      return j;
    }
  }
  
}

void bubbleSort(){
  for(int i =0;i<3000;i++){
  if(curr==width-done-1){
  curr=0;    
  done++;
}
  if(liczby[curr]>liczby[curr+1]){
  pom = liczby[curr];
  liczby[curr]=liczby[curr+1];
  liczby[curr+1]=pom;
  
  }
  curr++;
    
  }
  
}
