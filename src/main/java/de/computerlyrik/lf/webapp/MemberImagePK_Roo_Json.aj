// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.MemberImagePK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect MemberImagePK_Roo_Json {
    
    public String MemberImagePK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static MemberImagePK MemberImagePK.fromJsonToMemberImagePK(String json) {
        return new JSONDeserializer<MemberImagePK>().use(null, MemberImagePK.class).deserialize(json);
    }
    
    public static String MemberImagePK.toJsonArray(Collection<MemberImagePK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<MemberImagePK> MemberImagePK.fromJsonArrayToMemberImagePKs(String json) {
        return new JSONDeserializer<List<MemberImagePK>>().use(null, ArrayList.class).use("values", MemberImagePK.class).deserialize(json);
    }
    
}
