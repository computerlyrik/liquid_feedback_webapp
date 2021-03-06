// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DelegatingVoterPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DelegatingVoterPK_Roo_Json {
    
    public String DelegatingVoterPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static DelegatingVoterPK DelegatingVoterPK.fromJsonToDelegatingVoterPK(String json) {
        return new JSONDeserializer<DelegatingVoterPK>().use(null, DelegatingVoterPK.class).deserialize(json);
    }
    
    public static String DelegatingVoterPK.toJsonArray(Collection<DelegatingVoterPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<DelegatingVoterPK> DelegatingVoterPK.fromJsonArrayToDelegatingVoterPKs(String json) {
        return new JSONDeserializer<List<DelegatingVoterPK>>().use(null, ArrayList.class).use("values", DelegatingVoterPK.class).deserialize(json);
    }
    
}
