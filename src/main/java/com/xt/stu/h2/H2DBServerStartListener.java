package com.xt.stu.h2;

import java.sql.SQLException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.h2.tools.Server;

public class H2DBServerStartListener implements ServletContextListener{

	private Server server;
	
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("------------H2数据库正在启动------------------");
		//, "-baseDir", ""
		try {
			server = Server.createTcpServer(new String[] { "-tcp", "-tcpAllowOthers", "-tcpPort", "8036", "-baseDir", "D://data//h2"}).start();
			
			System.out.println("*****************H2数据库启动成功***********************");
		} catch (SQLException e) {
			System.out.println("------------H2数据库启动失败：" + e);
		} 
	}

	public void contextDestroyed(ServletContextEvent sce) {
		if(server != null) {
			server.shutdown();
		}
	}

}
