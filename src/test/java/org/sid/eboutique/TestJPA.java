package org.sid.eboutique;

import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;
import org.sid.eboutique.entities.Role;
import org.sid.eboutique.entities.User;
import org.sid.eboutique.metier.IAdminCategorieMetier;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestJPA {

	ClassPathXmlApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = 
				new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
	}

//	@Test
//	public void test1() {
//		try {
//			IAdminCategorieMetier metier = (IAdminCategorieMetier) context.getBean("metier");
//			List<Categorie> cts1 = metier.listCategories();
//			metier.ajouterCategorie(new Categorie("Ordinateurs", "ordinateurs",null, "image1.jpg"));
//			metier.ajouterCategorie(new Categorie("Imprimentes", "imprimentes",null, "image2.jpg"));
//			metier.ajouterCategorie(new Categorie("Scanners", "scanners",null, "image3.jpg"));
//			List<Categorie> cts2 = metier.listCategories();
//			assertTrue(cts1.size() + 3 == cts2.size());
//		} catch (Exception e) {
//			assertTrue(e.getMessage(),false);
//		}
//	}
//	
//	@Test
//	public void test2() {
//		try {
//			IAdminCategorieMetier metier = (IAdminCategorieMetier) context.getBean("metier");
//			List<Produit> prods1 = metier.listProduit();
//			metier.ajouterProduit(new Produit("HP45ERT", "HP7890", 6000, true, "image1.jpg", 50), 1L);
//			metier.ajouterProduit(new Produit("SFRZA", "HP7390", 6000, true, "image1.jpg", 50), 2L);
//			List<Produit> prods2 = metier.listProduit();
//			assertTrue(prods1.size() + 2 == prods2.size());
//		} catch (Exception e) {
//			assertTrue(e.getMessage(),false);
//		}
//	}	
	
	@Test
	public void test3() {
		try {
			IAdminCategorieMetier metier = (IAdminCategorieMetier) context.getBean("metier");
	        metier.attribuerRole(new Role("ROLE_ADMIN_CAT"), 1L);
	        metier.attribuerRole(new Role("ROLE_ADMIN_PROD"), 1L);
	        metier.attribuerRole(new Role("ROLE_ADMIN_PROD"), 2L);
		} catch (Exception e) {
			assertTrue(e.getMessage(),false);
		}
	}	

}
