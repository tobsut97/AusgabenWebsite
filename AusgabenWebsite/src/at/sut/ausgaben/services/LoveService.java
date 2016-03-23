package at.sut.ausgaben.services;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import at.sut.ausgaben.dao.EntertainmentDao;
import at.sut.ausgaben.dao.LoveDao;
import at.sut.ausgaben.vo.Entertainment;
import at.sut.ausgaben.vo.Love;

@Path("Love/")
public class LoveService {
	
	private List<Love> loveList = new ArrayList<Love>();
	
	//Entertainment aus Datenbank auslesen
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

}
