package de.computerlyrik.lf.webapp;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = MemberRelationSettingPK.class, versionField = "", table = "member_relation_setting", schema = "public")
@RooDbManaged(automaticallyDelete = true)
public class MemberRelationSetting {
}
