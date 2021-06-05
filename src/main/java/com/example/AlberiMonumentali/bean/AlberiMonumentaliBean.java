package com.example.AlberiMonumentali.bean;

public class AlberiMonumentaliBean {
    private Object _id;
    private String fid;
    private String name;
    private String provincia;
    private String localita;
    private Double altitudine;
    private String nomeScientifico;
    private String nomevolgare;
    private Double altezza;
    private String schede;
    private String lat;
    private String lng;

    public AlberiMonumentaliBean(){}

    public AlberiMonumentaliBean( String fid, String name, String provincia, String localita, Double altitudine, String nomeScientifico, String nomevolgare, Double altezza, String schede, String lat, String lng){
        this.fid= fid;
        this.name= name;
        this.provincia= provincia;
        this.localita= localita;
        this.altitudine= altitudine;
        this.nomeScientifico= nomeScientifico;
        this.nomevolgare= nomevolgare;
        this.altezza= altezza;
        this.schede= schede;
        this.lat= lat;
        this.lng= lng;
    }

    public String getFid() {
        return fid;
    }

    public void setFid(String fid) {
        this.fid = fid;
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

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLng() {
        return lng;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    public Object get_id() {
        return _id;
    }

    public void set_id(Object _id) {
        this._id = _id;
    }
}
