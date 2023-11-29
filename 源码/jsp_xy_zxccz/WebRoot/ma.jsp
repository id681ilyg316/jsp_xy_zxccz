<%@ page autoFlush="false"
	import="java.awt.*,java.awt.image.*,com.sun.image.codec.jpeg.*,java.util.*,javax.imageio.ImageIO"
	pageEncoding="GBK"%>

<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html");
%>
<%
	String chose = "1234567890";
	char display[] = { '0', '0', '0', '0'}, temp;
	Random rand = new Random();
	for (int i = 0; i < 4; i++) {
		temp = chose.charAt(rand.nextInt(chose.length()));
		display[i] = temp;
	}
	session.setAttribute("random", String.valueOf(display));
%>
<%
	out.clear();
	response.setContentType("image/png");
	response.addHeader("pragma", "NO-cache");
	response.addHeader("Cache-Control", "no-cache");
	response.addDateHeader("Expries", 0);
	int width = 70, height = 20;
	BufferedImage image = new BufferedImage(width, height,
			BufferedImage.TYPE_INT_RGB);
	Graphics g = image.getGraphics();
	// ������䱳����ɫ
	g.setColor(new Color(255, 255, 255));
	g.fillRect(0, 0, width, height);
	// ����������ɫ
	g.setColor(new Color(11, 39, 65));
	Font font = new Font("Arial", Font.BOLD, 14);
	g.setFont(font);
	// �����ɵ���֤����뻭��
	for (int i = 0; i < 4; i++) {
		String s = display[i] + "";
		Random ran = new Random();
		int y = ran.nextInt(8);
		g.drawString(s, 14 * i + 2, 11 + y);
	}
	g.dispose();
	ServletOutputStream outStream = response.getOutputStream();
	//JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outStream);
	//encoder.encode(image);
	ImageIO.write(image, /*"GIF"*/ "jpg" /* format desired */ , outStream /* target */ );  
	outStream.close();
	// ���ױ���:java.lang.IllegalStateException: 
	// getOutputStream() has already been called for this response
	out.clear();
	out = pageContext.pushBody();
%>