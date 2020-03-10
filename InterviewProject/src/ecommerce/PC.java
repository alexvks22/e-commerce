package ecommerce;
import java.io.Serializable;

import javax.persistence.*;

/**
 * PC entity represents a combination of products pc screen, pc tower and hd.
 * 
 * @author alexa
 *
 */
@Entity
@Table(name="pc")
public class PC extends Product implements Serializable {
	
	@OneToOne
	private PCScreen pcscreen;
	
	@OneToOne
	private PCTower pctower;
	
	@Column(name="hd")
	private Integer hd;
	
	public PC() {}
	
	public PC(PCScreen pcscreen, PCTower pctower, Integer hd)
	{
		this.pcscreen = pcscreen;
		this.pctower = pctower;
		this.hd = hd;
	}
	
	
	public PCScreen getPcscreen() {
		return pcscreen;
	}
	public void setPcscreen(PCScreen pcscreen) {
		this.pcscreen = pcscreen;
	}
	public PCTower getPctower() {
		return pctower;
	}
	public void setPctower(PCTower pctower) {
		this.pctower = pctower;
	}
	public Integer getHd() {
		return hd;
	}
	public void setHd(Integer hd) {
		this.hd = hd;
	}
	
	
}
