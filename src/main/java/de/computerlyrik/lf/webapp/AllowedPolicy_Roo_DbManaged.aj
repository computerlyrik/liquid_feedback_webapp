// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.AllowedPolicy;
import de.computerlyrik.lf.webapp.Area;
import de.computerlyrik.lf.webapp.Policy;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect AllowedPolicy_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "area_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Area AllowedPolicy.areaId;
    
    @ManyToOne
    @JoinColumn(name = "policy_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Policy AllowedPolicy.policyId;
    
    @Column(name = "default_policy")
    @NotNull
    private boolean AllowedPolicy.defaultPolicy;
    
    public Area AllowedPolicy.getAreaId() {
        return areaId;
    }
    
    public void AllowedPolicy.setAreaId(Area areaId) {
        this.areaId = areaId;
    }
    
    public Policy AllowedPolicy.getPolicyId() {
        return policyId;
    }
    
    public void AllowedPolicy.setPolicyId(Policy policyId) {
        this.policyId = policyId;
    }
    
    public boolean AllowedPolicy.isDefaultPolicy() {
        return defaultPolicy;
    }
    
    public void AllowedPolicy.setDefaultPolicy(boolean defaultPolicy) {
        this.defaultPolicy = defaultPolicy;
    }
    
}
