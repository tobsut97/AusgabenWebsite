package at.sut.ausgaben.vo;

import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Entertainment {
	private int idEntertainment;
	private int amount;
	private String notes;
	private Date date;

	public Entertainment() {
	}

	public Entertainment(int idEntertainment, int amount, String notes,
			Date date) {
		super();
		this.idEntertainment = idEntertainment;
		this.amount = amount;
		this.notes = notes;
		this.date = date;
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
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
