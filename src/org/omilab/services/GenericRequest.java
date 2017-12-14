package org.omilab.services;

import java.util.List;
import java.util.Map;

/**
 * This class represents the general structure of a request coming from the PSM.
 * It is used with Jackson to get the request as a POJO.
 * Mostly useful constructors and getters and setters.
 * Also contains a method to directly access a specific parameter and has a
 * toString method that writes the entire request in one line.
 * @author patrik
 */
public final class GenericRequest {

	private String username;
	private List<String> roles;
	private Map<String, String> params;


	public GenericRequest() {
		this(null, null, null);
	}

	public GenericRequest(String username, Map<String, String> params) {
		this(username, null, params);
	}

	public GenericRequest(String username, List<String> roles, Map<String, String> params) {
		super();
		this.username = username;
		this.roles = roles;
		this.params = params;
	}


	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<String> getRoles() {
		return this.roles;
	}

	public void setRoles(final List<String> roles) {
		this.roles = roles;
	}

	public Map<String, String> getParams() {
		return this.params;
	}

	public void setParams(Map<String, String> params) {
		this.params = params;
	}

	/**
	 * A special getter that allows to directly get a parameter.
	 * @param name name of the parameter to get.
	 * @return the value of that parameter or null if it isn't found.
	 */
	public String getParam(String name) {
		return this.params.get(name);
	}

	@Override
	public String toString() {
		return "GenericRequest{ username='" + this.username + "'" +
				", roles=" + this.roles +
				", params=" + this.params + " }";
	}
}