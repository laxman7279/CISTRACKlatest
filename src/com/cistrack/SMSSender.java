package com.cistrack;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

//import com.sun.media.jfxmedia.logging.Logger;

public class SMSSender {

	public SMSSender() {
		// TODO Auto-generated constructor stub
	}

	
	

	public String sendSms(long mobile) {
		try {
			// Construct data
			String user = "username=" + "sreeni@troboit.com";
			String apiKey = "&apiKey=" + "RZ7n9D5ZeXA-HYtB9VfJYucPnY63UqJAAWmLQfiDhs";
			String message = "&message=" + "http://52.42.175.190:8080/CISTrack/index.html";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + mobile;
			
			//System.out.println("numbers**************"+mobile);
			SMSService.logger.info("numbers**************"+mobile);
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("http://api.textlocal.in/send/?").openConnection();
			String data = user + apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			SMSService.logger.info(stringBuffer.toString());
			return stringBuffer.toString();
			
			
		} catch (Exception e) {
			SMSService.logger.error(e);
			return "Error "+e;
		}
	}

	public static void main(String args[]){
		
SMSSender sms=new SMSSender();
long z=9030189710L;
String response=sms.sendSms(z);
System.out.println(response);
		
	}
}
