// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Battle;
import de.computerlyrik.lf.webapp.BattlePK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Battle_Roo_Jpa_Entity {
    
    declare @type: Battle: @Entity;
    
    declare @type: Battle: @Table(schema = "public", name = "battle");
    
    @EmbeddedId
    private BattlePK Battle.id;
    
    public BattlePK Battle.getId() {
        return this.id;
    }
    
    public void Battle.setId(BattlePK id) {
        this.id = id;
    }
    
}
