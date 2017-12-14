package org.omilab.services.beeupta;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omilab.services.GenericRequest;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation of the Instance-Management aspect for the TextAnnotation service.
 */
@WebServlet(name="TextAnnotation-instance-management", urlPatterns="/instanceMgmt/*")
public class TextAnnotationInstMgmt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TextAnnotationInstMgmt() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final ObjectMapper mapper = new ObjectMapper();
		
		GenericRequest greq = null;

		try {
			// Put the JSON content from the HTTP request into a GenericRequset
			BufferedReader reqreader = request.getReader();
			mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
			greq = mapper.readValue(reqreader, GenericRequest.class);
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			response.setStatus(400);
			return;
		}

		// Determine the mode
		String mode = greq.getParam("mode");

		if("create".equals(mode)) {
			// Currently the service is the same for everyone, so we just use the id 1
			response.setContentType("text/plain");
			PrintWriter pw = response.getWriter();
			pw.print(1);
			pw.close();
		} else if("delete".equals(mode)) {
			// Currently the service is the same for everyone, so we don't have anything to remove
			response.setContentType("text/plain");
			PrintWriter pw = response.getWriter();
			pw.print("true");
			pw.close();
		} else {
			response.setStatus(400);
		}
	}
}