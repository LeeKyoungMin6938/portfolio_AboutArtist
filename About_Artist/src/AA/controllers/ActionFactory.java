package AA.controllers;

import AA.controller.action.Action;
import AA.controller.action.IndexAction;
import AA.controller.action.JoinAction;
import AA.controller.action.JoinFormAction;
import AA.controller.action.LoginAction;
import AA.controller.action.LoginFormAction;
import AA.controller.action.LogoutAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	public ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : "+command);
		
		if(command.equals("index")) {
			action = new IndexAction();
		}else if(command.equals("login")) {
			action = new LoginAction();
		}else if(command.equals("loginform")) {
			action = new LoginFormAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}else if(command.equals("joinform")) {
			action = new JoinFormAction();
		}else if(command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("id_check_form")){
			
		}
		 
		
		
		return action;
	}
}
