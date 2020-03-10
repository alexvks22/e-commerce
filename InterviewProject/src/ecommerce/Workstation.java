package ecommerce;
import java.io.Serializable;

import javax.persistence.*;


/**
 * Workstation entity represents PC product combined with Operating System
 * PC is composed by a PC Tower, PC Screen and an HD.
 * @author alexa
 *
 */
@Entity
@Table(name="workstation")
public class Workstation extends Product implements Serializable{

	@OneToOne
	private PC pc;
	
	//Windows or Linux
	@Column(name="os")
	private String os;
	
	
	public Workstation () {}
	
	public Workstation(PC pc, String os)
	{
		this.pc = pc;
		this.os = os;
	}
	
	public PC getPc() {
		return pc;
	}
	public void setPc(PC pc) {
		this.pc = pc;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	
	
}
