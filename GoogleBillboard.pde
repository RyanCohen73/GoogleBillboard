public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public String eNew = e.replace(".", "");
public void setup() {            
  findPrimes(eNew);
  solvePattern(eNew);
}  
public void draw() {   

}  

public boolean isPrime(double input)  {   
   if (input <= 1){
    return false;
  }
  for(int i = 2; i <= Math.sqrt(input); i++) {
    if (input % i == 0) {
      return false;
    }
  }
  return true;  
} 

public double extractDouble(String s, int pos, int max) {
  String digits = s.substring(pos, pos+max);
  return Double.parseDouble(digits);
}

public boolean getSingleDigits(String s, int pos){
  int value = 0;
  for (int j = 0; j < 10; j++){
    value += (int) extractDouble(s, pos+j, 1);
  }
  return value == 49 ? true : false;
}


public void findPrimes(String s) {
  for(int i = 1; i < s.length()-10; i++) {
    double candidatePrime = extractDouble(s, i, 10);
  
    if (isPrime(candidatePrime)) {
      System.out.println("First 10-digit prime value: " + (long)candidatePrime);
      break;
    }
  }
}

public void solvePattern(String s) {
  for(int k = 1; k < s.length()-10; k++) {
    if (getSingleDigits(s, k)) {
      System.out.println("Pattern value " + k + ": " +  (long)extractDouble(s, k, 10));
    }
  }
}
