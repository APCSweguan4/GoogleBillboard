public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{      
  //First Problem Solution:
  
  String sNum = "";
  double num = 0.0;
  for (int i = 0; i <= e.length() - 10; i++) {
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
 
  //Second Problem: 
  //f(1)= 7182818284 7+1+8+2+8+1+8+2+8+4 = (49)
  //f(2)= 8182845904 8+1+8+2+8+4+5+9+0+4 = (49)
  //f(3)= 8747135266 8+7+4+7+1+3+5+2+6+6 = (49)
  //f(4)= 7427466391 7+4+2+7+4+6+6+3+9+1 = (49)
  //f(5)= __________ (49)
  //Second Problem Solution:
  ArrayList<String> cache = new ArrayList <String>();
  String sNum2 = "";
  for (int i = 2; i <= e.length() - 10; i++) {
    sNum2 = e.substring(i, i + 10);
    if (addDigits(sNum2) == 49) {
      cache.add(sNum2);  
    }
  }
  System.out.println("f(5) = " + cache.get(4));
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

public int addDigits(String num) {
  int count = 0;
  for (int i = 0; i < num.length(); i++) {
    count += Integer.parseInt(num.substring(i, i + 1));
  }
  return count;
}
