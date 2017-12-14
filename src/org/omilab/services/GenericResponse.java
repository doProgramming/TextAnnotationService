package org.omilab.services;

import java.util.Map;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

/**
 * This class represents the general structure of a response sent to the PSM.
 * It is used with Jackson to handle the response as a POJO.
 * Mostly useful constructors and getters and setters.
 * Also contains a toString method that writes the entire response.
 * @author patrik
 */
@JsonInclude(Include.NON_NULL)
public final class GenericResponse {

	private String content;
	private Map<String, String> submenu;


	public GenericResponse() {
		this(null, null);
	}

	public GenericResponse(String content) {
		this(content, null);
	}

	public GenericResponse(String content, Map<String, String> submenu) {
		super();
		this.content = content;
		this.submenu = submenu;
	}


	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Map<String, String> getSubmenu() {
		return this.submenu;
	}

	public void setSubmenu(Map<String, String> submenu) {
		this.submenu = submenu;
	}

	@Override
	public String toString() {
		return "GenericResponse{ submenu=" + this.submenu +
				", content=" + this.content+ " }";
	}
}