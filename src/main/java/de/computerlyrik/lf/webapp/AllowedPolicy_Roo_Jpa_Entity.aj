// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.AllowedPolicy;
import de.computerlyrik.lf.webapp.AllowedPolicyPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect AllowedPolicy_Roo_Jpa_Entity {
    
    declare @type: AllowedPolicy: @Entity;
    
    declare @type: AllowedPolicy: @Table(schema = "public", name = "allowed_policy");
    
    @EmbeddedId
    private AllowedPolicyPK AllowedPolicy.id;
    
    public AllowedPolicyPK AllowedPolicy.getId() {
        return this.id;
    }
    
    public void AllowedPolicy.setId(AllowedPolicyPK id) {
        this.id = id;
    }
    
}
