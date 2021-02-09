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
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
  return 1;
  return 0;
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
  else
  {
    return "ERROR!";
  }
}
