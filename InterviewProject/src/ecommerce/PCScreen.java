package ecommerce;

import java.io.Serializable;
import javax.persistence.*;
/**
 * PC Screen entity represents a pc screen as a special category of product because of inches (special attribute of a screen) 
 * @author alexa
 *
 */
@Entity
@Table(name="pcscreen")
public class PCScreen extends Product implements Serializable {

	@Column(name="inches")
	private Integer inches;
	
	public PCScreen() {}
	
	public PCScreen(Integer inches) {
		this.inches = inches;
	}

	public Integer getInches() {
		return inches;
	}

	public void setInches(int inches) {
		this.inches = inches;
	}
	
	
	
	
}
