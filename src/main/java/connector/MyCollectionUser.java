package connector;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

public class MyCollectionUser {
    public void createMyCollection(){
        ConnectToDB ctd= new ConnectToDB();
        MongoDatabase database= ctd.getMyDatabase();

        //creare una collezione
        database.createCollection("user");
        System.out.println("Collezione creata con successo");
    }

    public MongoCollection<Document> getMyCollection(){

        ConnectToDB ctd= new ConnectToDB();
        MongoDatabase database= ctd.getMyDatabase();

        //Selezionere una collezione
        MongoCollection<Document> collection = database.getCollection("user");
        System.out.println("Collezione collectionAlberi selezionata con successo");
        return collection;
    }
}
