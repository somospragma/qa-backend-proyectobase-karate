package users.delete;

import com.intuit.karate.junit5.Karate;

public class UserDeleteRunner {

    @Karate.Test
    Karate userDelete(){
        return Karate.run().relativeTo(getClass());
    }

}
