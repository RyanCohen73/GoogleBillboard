public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup() {            
  findPrimes(e);
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

public double extractDouble(String s, int pos) {
  String digits = s.substring(pos, pos+10);
  return Double.parseDouble(digits);
}


public void findPrimes(String s) {
  for(int i = 1; i < s.length()-10; i++) {
    double candidatePrime = extractDouble(s, i);
  
    if (isPrime(candidatePrime)) {
      System.out.println("First 10-digit prime value: " + (long)candidatePrime);
      break;
    }
  }
}
