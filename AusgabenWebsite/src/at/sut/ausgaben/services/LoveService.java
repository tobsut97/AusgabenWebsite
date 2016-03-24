package at.sut.ausgaben.services;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import at.sut.ausgaben.dao.EntertainmentDao;
import at.sut.ausgaben.dao.LoveDao;
import at.sut.ausgaben.vo.Entertainment;
import at.sut.ausgaben.vo.Love;

@Path("Love/")
public class LoveService {
	
	private List<Love> loveList = new ArrayList<Love>();
	
	//Love auslesen
	@GET
	@Path("")
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public List<Love> getAllLove() {
		loveList.clear();
		try {
			LoveDao dao = new LoveDao();
			this.loveList = dao.getAllLove();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return loveList;
		
	}
	
	//Love einfügen
	@POST
	@Path("")
	@Consumes({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public Response insertAmount(Love l) throws Exception {
		try {
			LoveDao dao = new LoveDao();
			dao.insertLove(l);
			return Response.status(200).build();
		} catch (Exception e) {
			e.printStackTrace();
			return Response.status(400).build();
			
		}
	}

}
