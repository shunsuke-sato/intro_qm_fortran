program main
  implicit none
  integer :: i, n
  real(8) :: ff_0, ff_p, ff_m, dfdx_f, dfdx_m, dfdx_e
  real(8) :: x, h

  x = 0d0
  dfdx_e = exp(x)
  
  h = 1d0
  
  n = 16
  open(20,file="fd_error.out")
  do i = 1, n
     ff_0   = exp(x)
     ff_p = exp(x+h)
     ff_m = exp(x-h)

     dfdx_f = (ff_p-ff_0)/h
     dfdx_m = (ff_p-ff_m)/(2d0*h)

     write(20,"(5e16.6e3)")h,dfdx_f,abs(dfdx_f - dfdx_e),dfdx_m,abs(dfdx_m - dfdx_e)
     
     h = h/2d0
  end do
  close(20)

  
end program main
