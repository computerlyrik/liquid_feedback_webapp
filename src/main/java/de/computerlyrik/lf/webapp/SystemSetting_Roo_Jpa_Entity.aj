// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.SystemSetting;
import de.computerlyrik.lf.webapp.SystemSettingPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect SystemSetting_Roo_Jpa_Entity {
    
    declare @type: SystemSetting: @Entity;
    
    declare @type: SystemSetting: @Table(schema = "public", name = "system_setting");
    
    @EmbeddedId
    private SystemSettingPK SystemSetting.id;
    
    public SystemSettingPK SystemSetting.getId() {
        return this.id;
    }
    
    public void SystemSetting.setId(SystemSettingPK id) {
        this.id = id;
    }
    
}
