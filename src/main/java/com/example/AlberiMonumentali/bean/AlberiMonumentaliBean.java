package com.example.AlberiMonumentali.bean;

import org.bson.types.ObjectId;

public class AlberiMonumentaliBean {
    private ObjectId id;
    private String name;
    private String provincia;
    private String localita;
    private Double altitudine;
    private String nomeScientifico;
    private String nomevolgare;
    private Double altezza;
    private String schede;


    public AlberiMonumentaliBean(){}

    public AlberiMonumentaliBean( ObjectId id,  String name, String provincia, String localita, Double altitudine, String nomeScientifico, String nomevolgare, Double altezza, String schede){
        this.id= id;
        this.name= name;
        this.provincia= provincia;
        this.localita= localita;
        this.altitudine= altitudine;
        this.nomeScientifico= nomeScientifico;
        this.nomevolgare= nomevolgare;
        this.altezza= altezza;
        this.schede= schede;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getLocalita() {
        return localita;
    }

    public void setLocalita(String localita) {
        this.localita = localita;
    }

    public Double getAltitudine() {
        return altitudine;
    }

    public void setAltitudine(Double altitudine) {
        this.altitudine = altitudine;
    }

    public String getNomeScientifico() {
        return nomeScientifico;
    }

    public void setNomeScientifico(String nomeScientifico) {
        this.nomeScientifico = nomeScientifico;
    }

    public String getNomevolgare() {
        return nomevolgare;
    }

    public void setNomevolgare(String nomevolgare) {
        this.nomevolgare = nomevolgare;
    }

    public Double getAltezza() {
        return altezza;
    }

    public void setAltezza(Double altezza) {
        this.altezza = altezza;
    }

    public String getSchede() {
        return schede;
    }

    public void setSchede(String schede) {
        this.schede = schede;
    }


    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }
}
