package org.omilab.services.beeupta;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omilab.freemarker.objects.UsedJavaScript;
import org.omilab.services.GenericResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateExceptionHandler;

/**
 * Servlet implementation of the View aspect for the TextAnnotation service.
 */
@WebServlet(name="TextAnnotation-view", urlPatterns="/view/*")
public class TextAnnotationView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Since every instance of the Servlet should work the same, the configuration stuff is declared static.
	private static Configuration fmcfg = null;
	private static HashMap<String, Object> root = null;
	private static Template
			beeuptemplate = null,
			graphicaltemplate = null,
			generaltemplate = null;
	private static Map<String, String> submenu = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TextAnnotationView() {
		super();
	}

	/**
	 * This method initialises the configuration stuff for FreeMarker if necessary.
	 * It's not part of the constructor, because it uses the ServletContext.
	 */
	@Override
	public void init() {
		try {
			super.init();
		} catch (Exception ex) { return; }

		// Configure the FreeMarker config object
		if(fmcfg == null)
		try {
			fmcfg = new Configuration(Configuration.VERSION_2_3_27);
			// An alternative might be using the ClassLoader, which can be obtained through:
			// Thread.currentThread().getContextClassLoader();
			fmcfg.setServletContextForTemplateLoading(this.getServletContext(), "FM-Templates");
			fmcfg.setDefaultEncoding("UTF-8");
			fmcfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
			fmcfg.setLogTemplateExceptions(false);
			fmcfg.setWrapUncheckedExceptions(true);
		} catch (Exception ex) {
			System.err.println("ERROR:" + ex.getMessage());
		}

		// Build the data-model for FreeMarker, which stays the same unless something changes.
		if(root == null)
		try {
			// Load the properties file
			Properties prop = new Properties();
			InputStream propstream = this.getServletContext().getResource("/WEB-INF/config.cfg").openStream();
			prop.load(propstream);
			propstream.close();
			// Now create the thing that FreeMarker wants to replace stuff in the template
			HashMap<String, Object> jss = new HashMap<String, Object>();
			// We use the properties from the properties file
			jss.put("TextHighlighter", new UsedJavaScript(prop.getProperty("texthighlighter-js")));
			jss.put("FileSaver", new UsedJavaScript(prop.getProperty("filesaver-js")));
			root = new HashMap<String, Object>();
			root.put("JavaScripts", jss);
		} catch (Exception ex) {
			System.err.println("ERROR:" + ex.getMessage());
		}

		// We also already load the FreeMarker templates, so it doesn't have to do it again every time in the doGet/doPost
		try {
			if(beeuptemplate == null)
				beeuptemplate = fmcfg.getTemplate("TA-beeup.ftlh");
			if(graphicaltemplate == null)
				graphicaltemplate = fmcfg.getTemplate("GA-placeholder.ftlh");
			if(generaltemplate == null)
				generaltemplate = fmcfg.getTemplate("GeneralElements.ftlh");
		} catch (Exception ex) {
			System.err.println("ERROR:" + ex.getMessage());
		}

		// And the submenu items
		submenu = new HashMap<String, String>(2);
		submenu.put("1", "Text Annotation");
		submenu.put("2", "Graphics Annotation");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			boolean wraphtml = request.getPathInfo().endsWith(".html");
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			// If the request ended with .html then we wrap the template in an <html> and <body> element
			if(wraphtml) {
				pw.println("<html>\n<body style=\"width:97%; margin:10px auto;\">");
				pw.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" />");
			}
			beeuptemplate.process(root, pw);
			pw.print("\n\n");
			graphicaltemplate.process(root, pw);
			pw.print("\n\n");
			generaltemplate.process(root, pw);
			if(wraphtml)
				pw.print("\n</body>\n</html>");
			pw.close();
		} catch (Exception ex) {
			System.err.println("ERROR: " + ex.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// Get the output from the template into a string-like
			StringWriter sw = new StringWriter(21000); // Should be large enough that expanding isn't necessary for our case.
			beeuptemplate.process(root, sw);
			sw.write("\n\n");
			graphicaltemplate.process(root, sw);
			sw.write("\n\n");
			generaltemplate.process(root, sw);

			// Create the generic response
			GenericResponse gres = new GenericResponse(sw.toString(), submenu);

			// Write the generic response as JSON to the client
			final ObjectMapper mapper = new ObjectMapper();
			response.setContentType("application/json");
			PrintWriter pw = response.getWriter();
			mapper.writeValue(pw, gres);
			pw.close();
		} catch (Exception ex) {
			System.err.println("ERROR: " + ex.getMessage());
		}
	}
}