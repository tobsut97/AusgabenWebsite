package at.sut.ausgaben.services;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import at.sut.ausgaben.dao.EntertainmentDao;
import at.sut.ausgaben.vo.Entertainment;

@Path("Entertainment/")
public class EntertainmentService {
	private List<Entertainment> entertainmentList = new ArrayList<Entertainment>();
	
	// Entertainment in Datenbank eintragen
	@POST
	@Path("")
	@Consumes({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public Response insertAmount(Entertainment ent) throws Exception {
		try {
			EntertainmentDao dao = new EntertainmentDao();
			dao.insertEntertainment(ent);
			return Response.status(200).build();
		} catch (Exception e) {
			e.printStackTrace();
			return Response.status(400).build();
			
		}
	}

	
	//Entertainment aus Datenbank auslesen
	@GET
	@Path("")
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public List<Entertainment> getAllEntertainments() {
		entertainmentList.clear();
		try {
			EntertainmentDao dao = new EntertainmentDao();
			this.entertainmentList = dao.getAllEntertainment();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return entertainmentList;
		
	}
	
	// Löscht ein Entertainment
	@DELETE
	@Path("/{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Response deleteTask(@PathParam("id") int id) {
		try {
			EntertainmentDao dao = new EntertainmentDao();
			dao.deleteEntertainment(id);
			return Response.status(200).build();
		} catch (Exception e) {
			return Response.status(400).build();
		}
	}
	

}
