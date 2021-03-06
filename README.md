# e-commerce
A small *e-commerce shop with specific technology products* implemented in **Java** using **Servlets, JSP and JPA Annotations**.
This repository has been created in order to present concepts of Java such as Inheritance, Encapsulation, Commenting practices and reusability of components and use of Servlets combined with JSP.

A simple interface has been created using Bootstrap 4 and HTML5.

I used *Tomcat Apache Server 7.5* via **Eclipse**. For installation of Tomcat, please follow instructions: https://www.baeldung.com/eclipse-tomcat.

**If server is running, then from Eclipse IDE:**
1) Select InterviewProject with right click
2) Choose Run as...
3) Select "1 Run on Server "
4) Choose Tomcat Server
5) Add InterviewProject as "Configured"
6) Press Finish

**Interaction with Interview Project:**
1) Open Web Browser
2) Go to "http://localhost:8080/InterviewProject/"

*Port may differ. If we need 8080 then we can go to Tomcat Server Properties and change port to 8080.*

The idea behind this e-commerce is that we have an eshop with products such as:
1) PC Tower
2) PC Screen
3) Personal Computer
4) Workstation

As far as concerned PC Tower, user must select how much memory he/she wants (in GB) and cpu (in GHz). For PC Screen the only thing user has to select is inches. A Personal Computer consists of a PC Tower, a PC Screen and an hd (Hard Disk) of a certain capacity (in GB). Finally, a workstation consists of a Personal Computer and the preferable Operating System (os) - e.g. Linux or Windows.

Caution! Hard Disk and Operating System **cannot** sold seperatelly.

*User can buy a product at a time.*
When user selects his/her preferable product to buy, then an Order is created with the name of the product to be bought, date of order and a description of the product.

This project was implemented for interview purposes.


