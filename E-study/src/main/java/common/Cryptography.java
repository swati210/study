package common;

public class Cryptography
{
  public String EncryptMyPassword(String PlainText)
  {
	String EncryptedText="";
	int ASCIIValue,x;
	char ch,newCh;
	for(x=0;x<PlainText.length();x++)
	{
		ch=PlainText.charAt(x);
		ASCIIValue=(int)ch;
		if(ASCIIValue>=65 && ASCIIValue<=90)
			ASCIIValue=65+90-ASCIIValue;
		else if(ASCIIValue>=97 && ASCIIValue<=122)
			ASCIIValue=ASCIIValue-97+65;
		else if(ASCIIValue>=48 && ASCIIValue<=57)
			ASCIIValue=ASCIIValue+1;
		newCh=(char)ASCIIValue;
		EncryptedText=EncryptedText+newCh;
		    
	}
	return EncryptedText;
  }
}

