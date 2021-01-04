program main
  implicit none
  integer :: i, n, sum

  n = 10
  sum = 0
  do i = 1, n
     sum = sum + i
  end do

  write(*,*)"calculated sum =",sum
  write(*,*)"expected   sum =",n*(n+1)/2
  
end program main
