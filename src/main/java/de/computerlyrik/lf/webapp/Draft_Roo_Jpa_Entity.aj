// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Draft;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Draft_Roo_Jpa_Entity {
    
    declare @type: Draft: @Entity;
    
    declare @type: Draft: @Table(schema = "public", name = "draft");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Draft.id;
    
    public Long Draft.getId() {
        return this.id;
    }
    
    public void Draft.setId(Long id) {
        this.id = id;
    }
    
}