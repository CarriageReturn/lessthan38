package net.appone.rest;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import net.appone.persistence.EMFService;
import net.appone.persistence.entities.Weight;

import com.google.api.server.spi.config.Api;
import com.google.api.server.spi.config.ApiMethod;

/**
 * Defines v1 of a weights API
 */
@Api(name = "weights", version = "v1")
public class Weights {
	
	private static SimpleDateFormat sf = new SimpleDateFormat("dd.MM.yyyy");

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
		r.setResult("OK");

		return r;
	}

	@SuppressWarnings("unchecked")
	@ApiMethod(name = "list", httpMethod = "get")
	public List<WeightResult> getWeights() {

		List<WeightResult> r = new ArrayList<WeightResult>();
		
		EntityManager em = EMFService.get().createEntityManager();

		Query query = em.createQuery("SELECT w FROM Weight w ORDER BY w.date DESC");
		List<Weight> result = query.getResultList();
		
		for (Weight weight : result) {
			r.add(new WeightResult(Float.toString(weight.getKg()),sf.format(weight.getDate())));
		}

		return r;
	}
	
}
