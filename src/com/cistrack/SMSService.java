package com.cistrack;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.UriInfo;

import org.apache.log4j.Logger;
@Path("/UserService") 

public class SMSService {

	//static Logger logger = Logger.getLogger();	
	
	final public static Logger logger = Logger.getLogger(SMSService.class);

	public SMSService() {
		// TODO Auto-generated constructor stub
	}
	
	@GET 
	   @Path("/sms") 
	public void sendService(@PathParam("mobile") long mobile, @Context UriInfo uriInfo){
	
	//	String log4jConfigFile = "C://"+File.separator + "log4j.properties";
		
//		System.out.println(log4jConfigFile+"log4jConfigFile");
		
	//	PropertyConfigurator.configure(log4jConfigFile);
logger.debug("this is a debug log message");
		logger.info("this is a information log message");
		logger.warn("this is a warning log message");

		logger.info("mobile in service new" +mobile);
		
		
		MultivaluedMap<String, String> queryParams =uriInfo.getQueryParameters();
		String nameParam = queryParams.getFirst("mobile");
		logger.info("nameParam"+nameParam);

	SMSSender sender=new SMSSender();
	Long mobi=new Long(nameParam);
	sender.sendSms(mobi);
	}	

}
