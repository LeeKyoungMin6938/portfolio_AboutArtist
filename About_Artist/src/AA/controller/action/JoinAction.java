package AA.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AA.dao.AAMemberDAO;
import AA.dto.AAMemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "LoginForm.jsp";
		HttpSession session = request.getSession();
		AAMemberVO memberVO = new AAMemberVO();
		memberVO.setId(request.getParameter("id"));
		memberVO.setPwd(request.getParameter("pwd"));
		memberVO.setName(request.getParameter("name"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setZip_num(request.getParameter("zip_num"));
		memberVO.setAddress(request.getParameter("address"));
		memberVO.setPhone(request.getParameter("phone"));
		
		session.setAttribute("id", request.getParameter("id"));
		AAMemberDAO memberDAO = AAMemberDAO.getInstance();
		memberDAO.InsertMember(memberVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
