!**************************************************************
!* AceGen    5.003 Linux (11 Apr 13)                          *
!*           Co. J. Korelc  2007            20 Feb 15 11:14:09*
!**************************************************************
! User     : Full professional version
! Notebook : jacobian3d8n.nb
! Evaluation time                 : 1 s     Mode  : Optimal
! Number of formulae              : 23      Method: Automatic
! Subroutine                      : jacobian3d8n size :863
! Total size of Mathematica  code : 863 subexpressions
! Total size of Fortran code      : 1606 bytes

!******************* S U B R O U T I N E **********************
SUBROUTINE jacobian3d8n(v,xi,rnb,jac)
IMPLICIT NONE
DOUBLE PRECISION v(81),xi(3),rnb(8,3),jac(3,3)
v(44)=1d0-xi(1)
v(40)=1d0+xi(1)
v(50)=1d0+xi(2)
v(56)=v(50)/8d0
v(64)=-(v(44)*v(56))
v(63)=-(v(40)*v(56))
v(46)=1d0-xi(2)
v(57)=v(46)/8d0
v(62)=-(v(40)*v(57))
v(60)=-(v(44)*v(57))
v(51)=1d0+xi(3)
v(55)=v(51)/8d0
v(66)=-(v(40)*v(55))
v(65)=-(v(44)*v(55))
v(53)=v(50)*v(55)
v(48)=v(46)*v(55)
v(41)=1d0-xi(3)
v(58)=v(41)/8d0
v(61)=-(v(40)*v(58))
v(59)=-(v(44)*v(58))
v(43)=v(50)*v(58)
v(38)=v(46)*v(58)
jac(1,1)=(-rnb(1,1)+rnb(2,1))*v(38)+(rnb(3,1)-rnb(4,1))*v(43)+(-rnb(5,1)+rnb(6,1))*v(48)+(rnb(7,1)-rnb(8,1))*v(53)
jac(1,2)=(rnb(1,1)-rnb(4,1))*v(59)+(rnb(2,1)-rnb(3,1))*v(61)+(rnb(5,1)-rnb(8,1))*v(65)+(rnb(6,1)-rnb(7,1))*v(66)
jac(1,3)=(rnb(1,1)-rnb(5,1))*v(60)+(rnb(2,1)-rnb(6,1))*v(62)+(rnb(3,1)-rnb(7,1))*v(63)+(rnb(4,1)-rnb(8,1))*v(64)
jac(2,1)=(-rnb(1,2)+rnb(2,2))*v(38)+(rnb(3,2)-rnb(4,2))*v(43)+(-rnb(5,2)+rnb(6,2))*v(48)+(rnb(7,2)-rnb(8,2))*v(53)
jac(2,2)=(rnb(1,2)-rnb(4,2))*v(59)+(rnb(2,2)-rnb(3,2))*v(61)+(rnb(5,2)-rnb(8,2))*v(65)+(rnb(6,2)-rnb(7,2))*v(66)
jac(2,3)=(rnb(1,2)-rnb(5,2))*v(60)+(rnb(2,2)-rnb(6,2))*v(62)+(rnb(3,2)-rnb(7,2))*v(63)+(rnb(4,2)-rnb(8,2))*v(64)
jac(3,1)=(-rnb(1,3)+rnb(2,3))*v(38)+(rnb(3,3)-rnb(4,3))*v(43)+(-rnb(5,3)+rnb(6,3))*v(48)+(rnb(7,3)-rnb(8,3))*v(53)
jac(3,2)=(rnb(1,3)-rnb(4,3))*v(59)+(rnb(2,3)-rnb(3,3))*v(61)+(rnb(5,3)-rnb(8,3))*v(65)+(rnb(6,3)-rnb(7,3))*v(66)
jac(3,3)=(rnb(1,3)-rnb(5,3))*v(60)+(rnb(2,3)-rnb(6,3))*v(62)+(rnb(3,3)-rnb(7,3))*v(63)+(rnb(4,3)-rnb(8,3))*v(64)
END
