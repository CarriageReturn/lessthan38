package net.appone.rest;

/**
 * PoJo for returning data to list view via REST service.
 * 
 * 
 * @author Xander
 *
 */
public class WeightResult {

	public WeightResult(String kg, String date) {
		super();
		this.kg = kg;
		this.date = date;
	}

	private String kg;
	private String date;

	public String getKg() {
		return kg;
	}

	public void setKg(String kg) {
		this.kg = kg;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
