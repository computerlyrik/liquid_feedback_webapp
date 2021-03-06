// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.Unit;
import de.computerlyrik.lf.webapp.UnitSetting;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect UnitSetting_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member UnitSetting.memberId;
    
    @ManyToOne
    @JoinColumn(name = "unit_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Unit UnitSetting.unitId;
    
    @Column(name = "value")
    @NotNull
    private String UnitSetting.value;
    
    public Member UnitSetting.getMemberId() {
        return memberId;
    }
    
    public void UnitSetting.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public Unit UnitSetting.getUnitId() {
        return unitId;
    }
    
    public void UnitSetting.setUnitId(Unit unitId) {
        this.unitId = unitId;
    }
    
    public String UnitSetting.getValue() {
        return value;
    }
    
    public void UnitSetting.setValue(String value) {
        this.value = value;
    }
    
}
