// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.BattlePK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect BattlePK_Roo_Json {
    
    public String BattlePK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static BattlePK BattlePK.fromJsonToBattlePK(String json) {
        return new JSONDeserializer<BattlePK>().use(null, BattlePK.class).deserialize(json);
    }
    
    public static String BattlePK.toJsonArray(Collection<BattlePK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<BattlePK> BattlePK.fromJsonArrayToBattlePKs(String json) {
        return new JSONDeserializer<List<BattlePK>>().use(null, ArrayList.class).use("values", BattlePK.class).deserialize(json);
    }
    
}
