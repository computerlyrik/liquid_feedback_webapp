// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectPopulationSnapshot;
import de.computerlyrik.lf.webapp.DirectPopulationSnapshotPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect DirectPopulationSnapshot_Roo_Jpa_Entity {
    
    declare @type: DirectPopulationSnapshot: @Entity;
    
    declare @type: DirectPopulationSnapshot: @Table(schema = "public", name = "direct_population_snapshot");
    
    @EmbeddedId
    private DirectPopulationSnapshotPK DirectPopulationSnapshot.id;
    
    public DirectPopulationSnapshotPK DirectPopulationSnapshot.getId() {
        return this.id;
    }
    
    public void DirectPopulationSnapshot.setId(DirectPopulationSnapshotPK id) {
        this.id = id;
    }
    
}
