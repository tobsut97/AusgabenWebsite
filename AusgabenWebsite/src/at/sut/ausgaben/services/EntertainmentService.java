package at.sut.ausgaben.services;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import at.sut.ausgaben.dao.EntertainmentDao;

@Path("EntertainmentService/")
public class EntertainmentService {
	
	// Amount in Datenbank eintragen
	@POST
	@Path("")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Response insertAmount(int amount) throws Exception {
		try {
			EntertainmentDao dao = new EntertainmentDao();
			dao.insertAmount(amount);
			return Response.status(201).build();
		} catch (Exception e) {
			return Response.status(400).build();
		}
	}

	//Notizen in Datenbank eintragen
	@POST
	@Path("")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Response insertNotes(String notes) throws Exception {
		try {
			EntertainmentDao dao = new EntertainmentDao();
			dao.insertNotes(notes);
			return Response.status(201).build();
		} catch (Exception e) {
			return Response.status(400).build();
		}
	}

}
