package org.omilab.freemarker.objects;

public class UsedJavaScript {

	private String loc;

	public UsedJavaScript() {
		this(null);
	}

	public UsedJavaScript(String loc) {
		super();
		this.loc = loc;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
}