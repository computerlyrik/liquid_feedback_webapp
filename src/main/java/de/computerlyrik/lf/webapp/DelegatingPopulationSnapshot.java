package de.computerlyrik.lf.webapp;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = DelegatingPopulationSnapshotPK.class, versionField = "", table = "delegating_population_snapshot", schema = "public")
@RooDbManaged(automaticallyDelete = true)
public class DelegatingPopulationSnapshot {
}
