package common;

import java.util.*;
public class Randomcode {
	
	public int Getotp()
	{
		Random r=new Random();
		int n,x;
		x=r.nextInt(1,10);
		if(x%2==0)
		n=r.nextInt(1000,9999);
		else
			n=r.nextInt(100000,999999);
		return n;
	}
	public String GetCaptchaCode()
	{
		char ch;
		String code=" ";
		Random r=new Random();
		ch=(char)r.nextInt(65,90);
		code=code+ch;
		ch=(char)r.nextInt(49,57);
		code=code+ch;
		ch=(char)r.nextInt(97,122);
		code=code+ch;
		ch=(char)r.nextInt(100,120);
		code=code+ch;
		ch=(char)r.nextInt(51,56);
		code=code+ch;
		ch=(char)r.nextInt(70,88);
		code=code+ch;
		int n=r.nextInt(1,20);
		if(n>20)
		{
			ch=(char)r.nextInt(105,122);
			code=code+ch;
		}
		return code;
			
		
		
		
	}
	

}
