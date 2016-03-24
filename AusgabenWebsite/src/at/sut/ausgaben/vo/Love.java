package at.sut.ausgaben.vo;

import java.util.Date;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Love {
	private int idLove;
	private String notes;
	private Date timestamp;
	private int amount;

	public Love() {
		super();
	}

	public Love(int idLove,  int amount, String notes, Date timestamp) {
		super();
		this.idLove = idLove;
		this.notes = notes;
		this.timestamp = timestamp;
		this.amount = amount;
	}

	public int getIdLove() {
		return idLove;
	}

	public void setIdLove(int idLove) {
		this.idLove = idLove;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
