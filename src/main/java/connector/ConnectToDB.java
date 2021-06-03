package connector;
import com.mongodb.client.MongoDatabase;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;

public class ConnectToDB {
    public MongoDatabase getMyDatabase(){
        //Creazione Mongo client
        MongoClient mongo= new MongoClient("localhost", 27017);

        //Creazione credenziali
        MongoCredential credential;
        credential = MongoCredential.createCredential("sampleUser", "alberiMonumentali", "password".toCharArray());
        System.out.println("la connessione con il database ha avuto successo");

        //Accesso al database
        MongoDatabase database= mongo.getDatabase("alberiMonumentali");
        System.out.println("Credenziali :"+credential);

        return database;
    }
}
