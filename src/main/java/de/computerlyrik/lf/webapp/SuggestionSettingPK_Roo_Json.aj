// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.SuggestionSettingPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect SuggestionSettingPK_Roo_Json {
    
    public String SuggestionSettingPK.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static SuggestionSettingPK SuggestionSettingPK.fromJsonToSuggestionSettingPK(String json) {
        return new JSONDeserializer<SuggestionSettingPK>().use(null, SuggestionSettingPK.class).deserialize(json);
    }
    
    public static String SuggestionSettingPK.toJsonArray(Collection<SuggestionSettingPK> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<SuggestionSettingPK> SuggestionSettingPK.fromJsonArrayToSuggestionSettingPKs(String json) {
        return new JSONDeserializer<List<SuggestionSettingPK>>().use(null, ArrayList.class).use("values", SuggestionSettingPK.class).deserialize(json);
    }
    
}