// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.MemberCountPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect MemberCountPK_Roo_Json {
    
    public String MemberCountPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static MemberCountPK MemberCountPK.fromJsonToMemberCountPK(String json) {
        return new JSONDeserializer<MemberCountPK>().use(null, MemberCountPK.class).deserialize(json);
    }
    
    public static String MemberCountPK.toJsonArray(Collection<MemberCountPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<MemberCountPK> MemberCountPK.fromJsonArrayToMemberCountPKs(String json) {
        return new JSONDeserializer<List<MemberCountPK>>().use(null, ArrayList.class).use("values", MemberCountPK.class).deserialize(json);
    }
    
}