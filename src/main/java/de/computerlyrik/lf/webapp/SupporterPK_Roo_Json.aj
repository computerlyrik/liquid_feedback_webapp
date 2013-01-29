// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.SupporterPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect SupporterPK_Roo_Json {
    
    public String SupporterPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static SupporterPK SupporterPK.fromJsonToSupporterPK(String json) {
        return new JSONDeserializer<SupporterPK>().use(null, SupporterPK.class).deserialize(json);
    }
    
    public static String SupporterPK.toJsonArray(Collection<SupporterPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<SupporterPK> SupporterPK.fromJsonArrayToSupporterPKs(String json) {
        return new JSONDeserializer<List<SupporterPK>>().use(null, ArrayList.class).use("values", SupporterPK.class).deserialize(json);
    }
    
}