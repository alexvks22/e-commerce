package ecommerce;

import java.io.Serializable;

import javax.persistence.*;

/**
 * This entity represents a product which has
 * a product id, name, description and price
 * @author alexa
 *
 */
@Entity
@Table (name="product")
public class Product implements Serializable {
	
	public Product() {}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long productId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="description")
	private String description;
	
	@Column(name="price")
	private float price;
	
	public Product(String name, String description, float price)
	{
		this.name = name;
		this.description = description;
		this.price = price;
	}
	
	/**
	 * 
	 * @return productId
	 */
	public Long getProductId()
	{
		return productId;
	}
	
	/** 
	 * 
	 * @return description
	 */
	public String getDescription()
	{
		return description;
	}
	
	/** 
	 * 
	 * @return price
	 */
	public float getPrice()
	{
		return price;
	}
	
	/**
	 * 
	 * @return name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 
	 * @param price
	 */
	public void setPrice (float price)
	{
		this.price = price;
	}

	/**
	 * 
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 
	 * @param description
	 */
	public void setDescription(String description)
	{
		this.description = description;
	}
}
