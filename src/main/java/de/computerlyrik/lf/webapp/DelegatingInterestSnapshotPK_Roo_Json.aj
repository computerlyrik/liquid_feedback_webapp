// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DelegatingInterestSnapshotPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect DelegatingInterestSnapshotPK_Roo_Json {
    
    public String DelegatingInterestSnapshotPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static DelegatingInterestSnapshotPK DelegatingInterestSnapshotPK.fromJsonToDelegatingInterestSnapshotPK(String json) {
        return new JSONDeserializer<DelegatingInterestSnapshotPK>().use(null, DelegatingInterestSnapshotPK.class).deserialize(json);
    }
    
    public static String DelegatingInterestSnapshotPK.toJsonArray(Collection<DelegatingInterestSnapshotPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<DelegatingInterestSnapshotPK> DelegatingInterestSnapshotPK.fromJsonArrayToDelegatingInterestSnapshotPKs(String json) {
        return new JSONDeserializer<List<DelegatingInterestSnapshotPK>>().use(null, ArrayList.class).use("values", DelegatingInterestSnapshotPK.class).deserialize(json);
    }
    
}
