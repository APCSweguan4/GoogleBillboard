public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  String sNum = "";
  double num = 0.0;
  for (int i = 0; i < e.length() - 10; i++) {
    if (i == 0) {
      sNum = e.substring(i, i + 11);  
      num = Double.parseDouble(sNum) * 1000000000;
    } else if (i == 1) {
      i++;
      sNum = e.substring(i, i + 10);
      num = Double.parseDouble(sNum);
    } else {
      sNum = e.substring(i, i + 10);
      num = Double.parseDouble(sNum);
    }  
    if (isPrime(num)) {
      System.out.println(num + " (" + sNum + ")" + " is the first 10-digit prime number in e.");
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2) {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum % i == 0) {
      return false;
    }
  }
  return true;
} 
