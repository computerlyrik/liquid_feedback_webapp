// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Initiative;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Initiative_Roo_Jpa_Entity {
    
    declare @type: Initiative: @Entity;
    
    declare @type: Initiative: @Table(schema = "public", name = "initiative");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Initiative.id;
    
    public Integer Initiative.getId() {
        return this.id;
    }
    
    public void Initiative.setId(Integer id) {
        this.id = id;
    }
    
}
