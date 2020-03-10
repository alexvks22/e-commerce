package ecommerce;

import java.io.Serializable;
import javax.persistence.*;

/**
 * PCTower entity represents a PCTower as a special category of a product (because of the special attributes of memory and cpu)
 * @author alexa
 *
 */
@Entity
@Table(name="pctower")
public class PCTower extends Product implements Serializable{

	/**
	 * memory expressed in GB
	 */
	@Column(name="memory")
	private Integer memory;
	
	/**
	 * cpu expressed in GHz
	 */
	@Column(name="cpu")
	private Integer cpu;
	
	public PCTower() {}
	public PCTower(Integer memory,Integer cpu)
	{
		this.memory= memory;
		this.cpu = cpu;
	}
	
	public Integer getMemory() {
		return memory;
	}
	public void setMemory(int memory) {
		this.memory = memory;
	}
	public Integer getCpu() {
		return cpu;
	}
	public void setCpu(int cpu) {
		this.cpu = cpu;
	}
	
}
