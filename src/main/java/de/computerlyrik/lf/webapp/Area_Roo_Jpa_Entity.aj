// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Area;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Area_Roo_Jpa_Entity {
    
    declare @type: Area: @Entity;
    
    declare @type: Area: @Table(schema = "public", name = "area");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Area.id;
    
    public Integer Area.getId() {
        return this.id;
    }
    
    public void Area.setId(Integer id) {
        this.id = id;
    }
    
}
