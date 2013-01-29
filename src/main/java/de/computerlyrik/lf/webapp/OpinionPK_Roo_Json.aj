// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.OpinionPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect OpinionPK_Roo_Json {
    
    public String OpinionPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static OpinionPK OpinionPK.fromJsonToOpinionPK(String json) {
        return new JSONDeserializer<OpinionPK>().use(null, OpinionPK.class).deserialize(json);
    }
    
    public static String OpinionPK.toJsonArray(Collection<OpinionPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<OpinionPK> OpinionPK.fromJsonArrayToOpinionPKs(String json) {
        return new JSONDeserializer<List<OpinionPK>>().use(null, ArrayList.class).use("values", OpinionPK.class).deserialize(json);
    }
    
}