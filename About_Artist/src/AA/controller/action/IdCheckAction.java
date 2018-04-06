package AA.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AA.dao.AAMemberDAO;

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/member/IdCheckForm.jsp";
		
		String id = request.getParameter("id").trim(); //JoinForm 에서 넘어오는 id를 받음
   
		AAMemberDAO memberDAO = AAMemberDAO.getInstance();
		int message = memberDAO.confirmID(id); //DAO 함수에서 리턴해준 int를 받음
		
		request.setAttribute("message", message); //리턴해준 int message란 이름으로 IdCheckForm.jsp 에넘겨줌
		request.setAttribute("id", id);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
