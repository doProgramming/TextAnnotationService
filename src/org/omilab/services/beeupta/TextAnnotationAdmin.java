package org.omilab.services.beeupta;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omilab.services.GenericResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation of the Admin aspect for the TextAnnotation service.
 */
@WebServlet(name="TextAnnotation-admin", urlPatterns="/admin/*")
public class TextAnnotationAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TextAnnotationAdmin() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Write and send the response
		PrintWriter pw = response.getWriter();
		pw.println("<div class=\"panel panel-default\"><div class=\"panel-body\">There is no Admin panel for this service.</div></div>");
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final ObjectMapper mapper = new ObjectMapper();

		// Create the GenericResponse
		GenericResponse gres = new GenericResponse("<div class=\"panel panel-default\"><div class=\"panel-body\">There is no Admin panel for this service.</div></div>");

		// Write and send the response
		response.setContentType("application/json");
		PrintWriter pw = response.getWriter();
		mapper.writeValue(pw, gres);
		pw.close();
	}
}