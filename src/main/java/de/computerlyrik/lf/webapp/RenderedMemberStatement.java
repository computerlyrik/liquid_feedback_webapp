package de.computerlyrik.lf.webapp;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = RenderedMemberStatementPK.class, versionField = "", table = "rendered_member_statement", schema = "public")
@RooDbManaged(automaticallyDelete = true)
public class RenderedMemberStatement {
}
