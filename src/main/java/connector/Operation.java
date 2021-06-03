package connector;
import java.util.Iterator;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import org.bson.Document;

public class Operation {

    //per inserire valori
    public void insert(Integer myfid, String myName, String myProvincia, String myLocalita, Integer myAltitudine, String myNomeScientifico, String myNomevolgare, Integer myAltezza, String mySchede, Double mylat, Double mylng){

        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();
        Document document = new Document("title","MongoDB")
                .append("Fid", myfid)
                .append("NAME", myName)
                .append("PROVINCIA", myProvincia)
                .append("LOCALITA", myLocalita)
                .append("ALTITUDINE", myAltitudine)
                .append("NOME_SCIENTIFICO", myNomeScientifico)
                .append("NOME_VOLGARE", myNomevolgare)
                .append("ALTEZZA", myAltezza)
                .append("SCHEDA", mySchede)
                .append("LATITUDINE", mylat)
                .append("LONGITUDINE", mylng);
        collection.insertOne(document);
        System.out.println("Documento inserito con successo");
    }

    //per ritornate tutti i valori
    public void retrieve(){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        //ritorna oggetto iterabile
        FindIterable<Document> iterDoc= collection.find();
        int i=1;

        //ritorna iteratore
        Iterator it = iterDoc.iterator();

        while(it.hasNext()){
            System.out.println(it.next());
            i++;
        }
    }
    //per modificare altezza
    public void update(Integer myFid, Integer myAltezza){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        collection.updateOne(Filters.eq("Fid", myFid), Updates.set("ALTEZZA", myAltezza));
        System.out.println("Altezza modificata con successo");

        //dopo modifica
        FindIterable<Document> iterDoc= collection.find();
        int i=1;
        Iterator it= iterDoc.iterator();
        while(it.hasNext()){
            System.out.println(it.next());
            i++;
        }
    }

    //cancellare documento
    public void remove(Integer myFid){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        collection.deleteOne(Filters.eq("Fid", myFid));
        System.out.println("Documento cancellato con successo");
    }
}





