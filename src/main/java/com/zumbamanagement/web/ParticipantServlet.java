package com.zumbamanagement.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;

import com.zumbamanagement.model.Participant;
import com.zumbamangement.dao.ParticipantDao;

@WebServlet("/")
public class ParticipantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private ParticipantDao participantDao;
   

	
	public void init(){
		participantDao = new ParticipantDao();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String action = request.getServletPath();
		
	try {
	switch(action) {
	case "/new":
		showNewForm(request, response);
		break;
	
	case "/insert":
		insertParticipant(request, response);
		break;
		
	case "/delete":
		deleteParticipant(request, response);
		break;
		
	case "/edit":
		showEditForm(request, response);
		break;
		
	case "/update":
		updateParticipant(request, response);
		break;
	
	case "/select":
		selectParticipantB(request, response);
		break;
		
		default:
			listParticipant(request, response);
						break;
		}
	}catch (SQLException ex) {
		throw new ServletException(ex);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	private void listParticipant(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
	List<Participant> listParticipant = participantDao.selectAllParticipants();
	request.setAttribute("listParticipants", listParticipant);
	RequestDispatcher dispatcher = request.getRequestDispatcher("participant-list.jsp");
	dispatcher.forward(request, response);
	}
	
	private void selectParticipantB(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String batch = request.getParameter("batch");
	    Participant participant = new Participant();
	    participant.setBatch(batch);
	    List<Participant> participants = participantDao.selectParticipantB(participant);
	    if (participants != null) {
	    request.setAttribute("participants", participants);
	    }
	    RequestDispatcher dispatcher = request.getRequestDispatcher("participant-list.jsp");
	    dispatcher.forward(request, response);
	}

	
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("par-form.jsp");
		dispatcher.forward(request, response);
	
	}
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pcode = request.getParameter("pcode");
		
		Participant existingParticipant;
		try {
		existingParticipant = participantDao.selectParticipant(pcode);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-form.jsp");
		request.setAttribute("participant", existingParticipant);
		dispatcher.forward(request, response);
	}catch (Exception e) {
		e.printStackTrace();
	}
	}
	
	private void insertParticipant(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ClassNotFoundException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String batch = request.getParameter("batch");
		String pcode = request.getParameter("pcode");
		
		Participant participant = new Participant();
		participant.setFirstname(firstname);
		participant.setLastname(lastname);
		participant.setEmail(email);
		participant.setPhone(phone);
		participant.setBatch(batch);
		participant.setPcode(pcode);
		
	
			participantDao.insertParticipant(participant);
	
		response.sendRedirect("list");
	}
	
	private void updateParticipant(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String batch = request.getParameter("batch");
		String pcode = request.getParameter("pcode");

		Participant participant= new Participant(firstname, lastname, email, phone, batch, pcode);
		participantDao.updateParticipant(participant);
		response.sendRedirect("list");
}

	private void deleteParticipant(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String pcode= request.getParameter("pcode");
		participantDao.deleteParticipant(pcode);
		response.sendRedirect("list");

	}

}
	
	
	
