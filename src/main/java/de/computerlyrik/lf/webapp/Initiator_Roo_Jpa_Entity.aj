// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Initiator;
import de.computerlyrik.lf.webapp.InitiatorPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Initiator_Roo_Jpa_Entity {
    
    declare @type: Initiator: @Entity;
    
    declare @type: Initiator: @Table(schema = "public", name = "initiator");
    
    @EmbeddedId
    private InitiatorPK Initiator.id;
    
    public InitiatorPK Initiator.getId() {
        return this.id;
    }
    
    public void Initiator.setId(InitiatorPK id) {
        this.id = id;
    }
    
}
