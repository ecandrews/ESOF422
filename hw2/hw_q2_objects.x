!create ct:Caretaker
!ct.add()

!insert (ct, ct.currentMemento) into caretakerOfMemento
!insert(ct.currentOrig, ct.currentMemento) into originatorAndMemento

!ct.currentMemento.setState('State1')
!ct.return()
-- ct.currentMemento should now be undefined

!create ct2:Caretaker
!ct2.add()

!insert (ct2, ct2.currentMemento) into caretakerOfMemento
!insert (ct2.currentOrig, ct2.currentMemento) into originatorAndMemento

!ct2.currentMemento.setState('State666')
-- ct2.currentMemento should now be Memento2