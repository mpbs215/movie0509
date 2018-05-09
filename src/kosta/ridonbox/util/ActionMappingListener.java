package kosta.ridonbox.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import kosta.ridonbox.controller.Action;

/**
 * Application Lifecycle Listener implementation class ActionMappingListener
 *
 */
@WebListener
public class ActionMappingListener implements ServletContextListener {


    public void contextDestroyed(ServletContextEvent e)  { 
    	
    }


    public void contextInitialized(ServletContextEvent e)  { 
    	//객체들의 정보는 properties파일에 있기때문에 properties를 먼저 읽어온다.(ResourceBundle객체)
    	//미리 객체 생성해서 map에 저장 ->application에 저장 (사전초기화 작업)
    	String file=e.getServletContext().getInitParameter("fileName");
    	System.out.println(file);
    	System.out.println("리스너 실행");
    	Map<String, Action> map = new HashMap<>();
    	ResourceBundle rb = ResourceBundle.getBundle(file);
    	Iterator<String> it=rb.keySet().iterator();
    	
    	while(it.hasNext()) {
    		String key = it.next();
    		String className=rb.getString(key);
    		try {
				Action action = (Action)Class.forName(className).newInstance();
				map.put(key, action);
			} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e1) {
				e1.printStackTrace();
			}
    	}
    	System.out.println(map);
    	e.getServletContext().setAttribute("map", map);
    	
    }
	
}
