// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DelegatingInterestSnapshot;
import de.computerlyrik.lf.webapp.DelegatingInterestSnapshotPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DelegatingInterestSnapshot_Roo_Jpa_Entity {
    
    declare @type: DelegatingInterestSnapshot: @Entity;
    
    declare @type: DelegatingInterestSnapshot: @Table(schema = "public", name = "delegating_interest_snapshot");
    
    @EmbeddedId
    private DelegatingInterestSnapshotPK DelegatingInterestSnapshot.id;
    
    public DelegatingInterestSnapshotPK DelegatingInterestSnapshot.getId() {
        return this.id;
    }
    
    public void DelegatingInterestSnapshot.setId(DelegatingInterestSnapshotPK id) {
        this.id = id;
    }
    
}