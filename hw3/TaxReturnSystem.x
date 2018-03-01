!create tp:Taxpayer
!set tp.grossIncome := 40000
!set tp.numDependents := 0
!set tp.married := true

!create sr:StateReturn
!create fr:FederalReturn

!set tp.returnState := sr
!set tp.returnFederal := fr

!insert (tp, sr) into stateReturn
!insert (tp, fr) into federalReturn

!tp.returnState.mailCheck()
!tp.returnFederal.mailCheck()