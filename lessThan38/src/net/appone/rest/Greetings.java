package net.appone.rest;

import com.google.api.server.spi.config.Api;
import javax.inject.Named;
import java.util.ArrayList;
/**
 * Defines v1 of a helloworld API, which provides simple "greeting" methods.
 */
@Api(name = "helloworld", version = "v1")
public class Greetings {
public static ArrayList<Greeting> greetings = new ArrayList<Greeting>();
  static {
    greetings.add(new Greeting("hello world!"));
    greetings.add(new Greeting("goodbye world!"));
  }

  public Greeting getGreeting(@Named("id") Integer id) {
	  
	  System.out.println(id);
	  
    return greetings.get(id);
  }

}
