!**************************************************************
!* AceGen    6.808 Linux (6 Sep 16)                           *
!*           Co. J. Korelc  2013           13 Nov 23 20:02:59 *
!**************************************************************
! User     : Full professional version
! Notebook : fixedjacobian3d8n
! Evaluation time                 : 1 s     Mode  : Optimal
! Number of formulae              : 13      Method: Automatic
! Subroutine                      : fixedjacobian3d8n size: 425
! Total size of Mathematica  code : 425 subexpressions
! Total size of Fortran code      : 924 bytes

!******************* S U B R O U T I N E **********************
SUBROUTINE fixedjacobian3d8n(v,jac,rnb)
USE SMSUtility
IMPLICIT NONE
DOUBLE PRECISION v(105),jac(3,3),rnb(8,3)
v(100)=-rnb(2,3)+rnb(8,3)
v(99)=-rnb(4,3)+rnb(6,3)
v(98)=-rnb(1,3)+rnb(7,3)
v(97)=-rnb(2,2)+rnb(8,2)
v(96)=-rnb(4,2)+rnb(6,2)
v(95)=-rnb(1,2)+rnb(7,2)
v(94)=-rnb(2,1)+rnb(8,1)
v(93)=-rnb(4,1)+rnb(6,1)
v(92)=-rnb(1,1)+rnb(7,1)
v(91)=rnb(3,3)-rnb(5,3)+v(98)
v(90)=rnb(3,2)-rnb(5,2)+v(95)
v(89)=rnb(3,1)-rnb(5,1)+v(92)
jac(1,1)=(rnb(2,1)-rnb(8,1)+v(89)+v(93))/8d0
jac(1,2)=(rnb(4,1)-rnb(6,1)+v(89)+v(94))/8d0
jac(1,3)=(-rnb(3,1)+rnb(5,1)+v(92)+v(93)+v(94))/8d0
jac(2,1)=(rnb(2,2)-rnb(8,2)+v(90)+v(96))/8d0
jac(2,2)=(rnb(4,2)-rnb(6,2)+v(90)+v(97))/8d0
jac(2,3)=(-rnb(3,2)+rnb(5,2)+v(95)+v(96)+v(97))/8d0
jac(3,1)=(rnb(2,3)-rnb(8,3)+v(91)+v(99))/8d0
jac(3,2)=(rnb(4,3)-rnb(6,3)+v(100)+v(91))/8d0
jac(3,3)=(-rnb(3,3)+rnb(5,3)+v(100)+v(98)+v(99))/8d0
END
