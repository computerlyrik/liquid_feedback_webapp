// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.InitiativeSettingPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect InitiativeSettingPK_Roo_Identifier {
    
    declare @type: InitiativeSettingPK: @Embeddable;
    
    @Column(name = "member_id", nullable = false)
    private Integer InitiativeSettingPK.memberId;
    
    @Column(name = "key", nullable = false)
    private String InitiativeSettingPK.key;
    
    @Column(name = "initiative_id", nullable = false)
    private Integer InitiativeSettingPK.initiativeId;
    
    public InitiativeSettingPK.new(Integer memberId, String key, Integer initiativeId) {
        super();
        this.memberId = memberId;
        this.key = key;
        this.initiativeId = initiativeId;
    }

    private InitiativeSettingPK.new() {
        super();
    }

    public Integer InitiativeSettingPK.getMemberId() {
        return memberId;
    }
    
    public String InitiativeSettingPK.getKey() {
        return key;
    }
    
    public Integer InitiativeSettingPK.getInitiativeId() {
        return initiativeId;
    }
    
}
