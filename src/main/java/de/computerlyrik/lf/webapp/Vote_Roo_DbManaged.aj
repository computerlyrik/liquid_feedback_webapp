// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectVoter;
import de.computerlyrik.lf.webapp.Initiative;
import de.computerlyrik.lf.webapp.Vote;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;

privileged aspect Vote_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "issue_id", referencedColumnName = "issue_id", nullable = false, insertable = false, updatable = false), @JoinColumn(name = "member_id", referencedColumnName = "member_id", nullable = false, insertable = false, updatable = false) })
    private DirectVoter Vote.directVoter;
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "issue_id", referencedColumnName = "issue_id", nullable = false, insertable = false, updatable = false), @JoinColumn(name = "initiative_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false) })
    private Initiative Vote.initiative;
    
    @Column(name = "grade")
    private Integer Vote.grade;
    
    public DirectVoter Vote.getDirectVoter() {
        return directVoter;
    }
    
    public void Vote.setDirectVoter(DirectVoter directVoter) {
        this.directVoter = directVoter;
    }
    
    public Initiative Vote.getInitiative() {
        return initiative;
    }
    
    public void Vote.setInitiative(Initiative initiative) {
        this.initiative = initiative;
    }
    
    public Integer Vote.getGrade() {
        return grade;
    }
    
    public void Vote.setGrade(Integer grade) {
        this.grade = grade;
    }
    
}
