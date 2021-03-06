// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Initiative;
import de.computerlyrik.lf.webapp.InitiativeSetting;
import de.computerlyrik.lf.webapp.Member;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect InitiativeSetting_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "initiative_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Initiative InitiativeSetting.initiativeId;
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member InitiativeSetting.memberId;
    
    @Column(name = "value")
    @NotNull
    private String InitiativeSetting.value;
    
    public Initiative InitiativeSetting.getInitiativeId() {
        return initiativeId;
    }
    
    public void InitiativeSetting.setInitiativeId(Initiative initiativeId) {
        this.initiativeId = initiativeId;
    }
    
    public Member InitiativeSetting.getMemberId() {
        return memberId;
    }
    
    public void InitiativeSetting.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public String InitiativeSetting.getValue() {
        return value;
    }
    
    public void InitiativeSetting.setValue(String value) {
        this.value = value;
    }
    
}
