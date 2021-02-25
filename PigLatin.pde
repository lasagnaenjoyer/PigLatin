public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord) {
  for (int i = 0; i < sWord.length(); i++)
  if (sWord.substring(i, i+1).equals("a"))
  return i;
  else if (sWord.substring(i, i+1).equals("e"))
  return i;
  else if (sWord.substring(i, i+1).equals("i"))
  return i;
  else if (sWord.substring(i, i+1).equals("o"))
  return i;
  else if (sWord.substring(i, i+1).equals("u"))
  return i;
  return -1;
}
public int hasVowels(String sWord) {
   for(int i = 0; i < 1; i++)
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
  return 1;
  return 0;
}
public int hasQu(String sWord) {
   for(int i = 0; i < 1; i++)
       if(sWord.charAt(i) == 'q')
  return 1;
  return 0;
}
public int firstConsonant(String sWord) {
  int v = 0;
  for(int i = 0; i < sWord.length(); i++){
  if(sWord.charAt(i) != 'a' || sWord.charAt(i) != 'e' ||
     sWord.charAt(i) != 'i' || sWord.charAt(i) != 'o' || sWord.charAt(i) != 'u') 
     { 
       v++;
     }     
     if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
          {
            return v;
          }   
     if(sWord.charAt(0) == 'a' || sWord.charAt(0) == 'e' || 
          sWord.charAt(0) == 'i' || sWord.charAt(0) == 'o' || sWord.charAt(0) == 'u')
          {
            return 0;
          }           
  }        
         
          return v;     
  }

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(hasVowels(sWord) == 1)
  {
    return sWord + "way";
  }
  else if(hasQu(sWord)==1)
  {
    return sWord.substring(2) + "quay";
  }
  else if (firstConsonant(sWord)==2){
    return sWord.substring(1) + sWord.substring(0,1) + "ay";
  }
  else if (firstConsonant(sWord)==3){
    return sWord.substring(2) + sWord.substring(0,2) + "ay";
  }
  else if (firstConsonant(sWord)==4){
    return sWord.substring(3) + sWord.substring(0,3) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
