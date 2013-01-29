// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.SettingMap;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect SettingMap_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member SettingMap.memberId;
    
    @Column(name = "value")
    @NotNull
    private String SettingMap.value;
    
    public Member SettingMap.getMemberId() {
        return memberId;
    }
    
    public void SettingMap.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public String SettingMap.getValue() {
        return value;
    }
    
    public void SettingMap.setValue(String value) {
        this.value = value;
    }
    
}
