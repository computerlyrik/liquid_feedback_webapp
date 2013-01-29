// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Battle;
import de.computerlyrik.lf.webapp.Initiative;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;

privileged aspect Battle_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "issue_id", referencedColumnName = "issue_id", nullable = true, insertable = false, updatable = false), @JoinColumn(name = "winning_initiative_id", referencedColumnName = "id", nullable = true, insertable = false, updatable = false) })
    private Initiative Battle.initiative;
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "issue_id", referencedColumnName = "issue_id", nullable = true, insertable = false, updatable = false), @JoinColumn(name = "losing_initiative_id", referencedColumnName = "id", nullable = true, insertable = false, updatable = false) })
    private Initiative Battle.initiative1;
    
    public Initiative Battle.getInitiative() {
        return initiative;
    }
    
    public void Battle.setInitiative(Initiative initiative) {
        this.initiative = initiative;
    }
    
    public Initiative Battle.getInitiative1() {
        return initiative1;
    }
    
    public void Battle.setInitiative1(Initiative initiative1) {
        this.initiative1 = initiative1;
    }
    
}