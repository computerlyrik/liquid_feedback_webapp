// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Interest;
import de.computerlyrik.lf.webapp.InterestPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Interest_Roo_Jpa_Entity {
    
    declare @type: Interest: @Entity;
    
    declare @type: Interest: @Table(schema = "public", name = "interest");
    
    @EmbeddedId
    private InterestPK Interest.id;
    
    public InterestPK Interest.getId() {
        return this.id;
    }
    
    public void Interest.setId(InterestPK id) {
        this.id = id;
    }
    
}
