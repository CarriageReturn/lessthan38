package net.appone.rest;

import java.util.Date;

import javax.persistence.EntityManager;

import net.appone.persistence.EMFService;
import net.appone.persistence.entities.Weight;

import com.google.api.server.spi.config.Api;
import com.google.api.server.spi.config.ApiMethod;


/**
 * Defines v1 of a weights API
 */
@Api(name = "weights", version = "v1")
public class Weights {

    @ApiMethod(name = "add", httpMethod = "post")
    public Result insertWeight(WeightParam weight) {
    	
    	EntityManager em = EMFService.get().createEntityManager();
    	
    	Weight entity = new Weight();
    	entity.setKg(weight.getKg());
    	entity.setDate(new Date());
    	
        try {
            em.persist(entity);
        } finally {
            em.close();
        }
    	
    	System.out.println("Persisted. Kg: " + weight.getKg());
    	
    	Result r = new Result();
    	r.setResult("OK");;
    	
    	
    	return r;
   }
}
