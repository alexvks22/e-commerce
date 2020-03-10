package ecommerce;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

/**
 * This entity represents an order which has
 * a unique order id, the order date and product information
 * @author alexa
 *
 */
@Entity
@Table (name="order")
public class Order implements Serializable{
	
	public Order(){}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long orderId;
	
	/** 
	 * date of order
	 */
	@Column(name="date")
	private Date date;
	
	/**
	 * each order has a unique product to be bought
	 */
	@OneToOne
	private Product product;
	
	
	public Order(Date date)
	{
		this.date = date;
	}
	
	/**
	 * 
	 * @return orderId
	 */
	public Long getOrderId()
	{
		return orderId;
	}
	/**
	 * 
	 * @return date
	 */
	public Date getDate() {
		return date;
	}
	/**
	 * 
	 * @param date
	 */
	public void setDate(Date date) {
		this.date = date;
	}

	/**
	 * 
	 * @return product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * 
	 * @param product
	 */
	public void setProduct(Product product) {
		this.product = product;
	}
}
