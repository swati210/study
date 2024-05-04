package common;

import java.awt.Font;
import java.awt.image.BufferedImage;
import java.awt.Graphics2D;
import java.io.OutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.Color;

@WebServlet("/GetCaptcha")
public class GetCaptcha extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GetCaptcha() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Randomcode code=new Randomcode();
		String c_code=code.GetCaptchaCode();
		HttpSession ses=request.getSession();
		ses.setAttribute("c_code",c_code);
		BufferedImage bi=new BufferedImage(170,50,BufferedImage.TYPE_INT_RGB);
		Graphics2D g=bi.createGraphics();
		g.setBackground(Color.white);
		g.clearRect(0,0,170,50);
		Font f=new Font ("segoe print",Font.BOLD,34);
		g.setFont(f);
		g.setColor(Color.blue);
		g.drawString(c_code,0,35);
		g.dispose();
		OutputStream ops=response.getOutputStream();
		ImageIO.write(bi,"png",ops);
		ops.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
