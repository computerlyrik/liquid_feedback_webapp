// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DelegatingPopulationSnapshot;
import de.computerlyrik.lf.webapp.DelegatingPopulationSnapshotPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DelegatingPopulationSnapshot_Roo_Jpa_Entity {
    
    declare @type: DelegatingPopulationSnapshot: @Entity;
    
    declare @type: DelegatingPopulationSnapshot: @Table(schema = "public", name = "delegating_population_snapshot");
    
    @EmbeddedId
    private DelegatingPopulationSnapshotPK DelegatingPopulationSnapshot.id;
    
    public DelegatingPopulationSnapshotPK DelegatingPopulationSnapshot.getId() {
        return this.id;
    }
    
    public void DelegatingPopulationSnapshot.setId(DelegatingPopulationSnapshotPK id) {
        this.id = id;
    }
    
}
