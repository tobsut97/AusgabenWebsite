package at.sut.ausgaben.vo;

import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Entertainment {
	private int idEntertainment;
	private int amount;
	private String notes;
	private Date timestamp;

	public Entertainment() {
	}

	public Entertainment(int idEntertainment, int amount, String notes,
			Date timestamp) {
		super();
		this.idEntertainment = idEntertainment;
		this.amount = amount;
		this.notes = notes;
		this.timestamp = timestamp;
	}

	public int getIdEntertainment() {
		return idEntertainment;
	}

	public void setIdEntertainment(int idEntertainment) {
		this.idEntertainment = idEntertainment;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Date getDate() {
		return timestamp;
	}

	public void setDate(Date timestamp) {
		this.timestamp = timestamp;
	}

}
